package tpodp.slicing;

import java.util.*;
import utilities.*;
import tpodp.interval.Interval;
import tpodp.interval.IntervalUnion;
import tpodp.*;

/**
 * <p>A single-variable solver using the approach outlined in our IJCAR 2010
 * submission.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-06-09
 */
public class SliceSolver extends SingleVariableSolver implements SlicingChangedListener{

    /**
     * <p>A compacted representation of a conjunction of constraints.  The solver
     * keeps these representations on a stack to represent the substacks of
     * literals.</p>
     * @author Elena Sherman
     * @author Brady J. Garvin
     * @version 1.0, 2010-01-26
     */
    protected static class SolverStackFrame{
	/**
	 * The <code>SolverStackFrame</code> that encodes the constraints of this
	 * one, except for the last literal.
	 */
	protected SolverStackFrame predecessor;
	/**
	 * The <code>SolverStackFrame</code> that encodes the constraints of this
	 * one, and also an additional literal.
	 */
	protected SolverStackFrame successor=null;
	/**
	 * The <code>Literal</code> encoded by this frame but not its predecessor,
	 * or <code>null</code> if this frame encodes no constraints.
	 */
	protected Literal literal;
	/**
	 * The set of possible assignments to this solver's variable in each slice.
	 */
	protected Map<Slice,IntervalUnion<Constant> >possibilities
	    =new HashMap<Slice,IntervalUnion<Constant> >();

	/**
	 * Construct a frame that encodes no constraints.
	 * @param slicing the Slicing this frame operates within
	 */
	public SolverStackFrame(Slicing slicing){
	    predecessor=null;
	    literal=null;
	    for(Slice slice:slicing.getSlices()){
		possibilities.put
		    (slice,new IntervalUnion<Constant>(slice.asInterval()));
	    }
	}

	/**
	 * Construct a frame that encodes the constraints of its predecessor and
	 * additionally one more literal.
	 */
	public SolverStackFrame(SolverStackFrame predecessor,Literal literal){
	    this.predecessor=predecessor;
	    this.literal=literal;
	    for(Map.Entry<Slice,IntervalUnion<Constant> >entry:
		    predecessor.getPossibilities().entrySet()){
		possibilities.put
		    (entry.getKey(),restrict
		     (new IntervalUnion<Constant>(entry.getValue()),
		      entry.getKey(),
		      literal));
	    }
	    predecessor.successor=this;
	}

	/**
	 * Determine which frame came before this one, if any.
	 * @return the frame that encodes the constraints of this one, except for
	 * the last literal
	 */
	public SolverStackFrame getPredecessor(){
	    return predecessor;
	}
	/**
	 * Determine which frame came after this one, if any.
	 * @return the frame that encodes the constraints of this one, and another
	 * literal
	 */
	public SolverStackFrame getSuccessor(){
	    return successor;
	}
	/**
	 * Determine which literal was added to create this frame, if any.
	 * @return the <code>Literal</code> encoded by this frame but not its
	 * predecessor, or <code>null</code> if this frame encodes no constraints
	 */
	public Literal getLiteral(){
	    return literal;
	}
	/**
	 * Determine what assignments are satisfactory at this frame.
	 * @return the set of possible assignments to this solver's variable in
	 * each slice
	 */
	public Map<Slice,IntervalUnion<Constant> >getPossibilities(){
	    return possibilities;
	}

	/**
	 * Detach this frame from its predecessor, which makes this frame unusable.
	 * @return the predecessor, which now has no successor
	 * @throw EmptyStackException if there is no predecessor
	 */
	public SolverStackFrame detachPredecessor(){
	    if(predecessor==null){
		throw new EmptyStackException();
	    }
	    assert this==predecessor.successor;
	    predecessor.successor=null;
	    return predecessor;
	}
	/**
	 * Detach every subsequent frame from this one, which makes all of those
	 * frames unusable.  Currently, an assertion checks that this operation
	 * only occurs as part of a solver clear.
	 */
	public void detachSuccessor(){
	    assert predecessor==null;
	    successor=null;
	}
    }

    /**
     * Change a union of intervals in-place so that it only contains members of the
     * argument slice that satisfy the argument literal.
     * @param toRestrict the union to restrict in-place
     * @param slice the slice that the interval union dwells in
     * @param literal the literal the retained types must satisfy
     * @return the modified parameter <code>toRestrict</code>
     */
    protected static IntervalUnion<Constant>restrict
	(IntervalUnion<Constant>toRestrict,Slice slice,Literal literal){
	Interval<Constant>mask;
	switch(literal.getRelation()){
	case SUBTYPE_OF:
	    mask=slice.getDescendantInterval(literal.getConstant());
	    break;
	case EQUAL_TO:
	    mask=slice.getEqualityInterval(literal.getConstant());
	    break;
	default:
	    throw new IllegalArgumentException
		("Unrecognized literal type: "+literal.getRelation());
	}
	if(literal.isPositive()){
	    toRestrict.intersect(mask);
	}else{
	    toRestrict.without(mask);
	}
	return toRestrict;
    }

    /**
     * The encoding of all of the types in the hierarchy.
     */
    protected Slicing slicing;
    /**
     * The most recent frame.  Earlier frames can be accessed by following a chain
     * of <code>getPredecessor()</code> calls, or by using the <code>frames</code>
     * multimap.
     */
    protected SolverStackFrame top;
    /**
     * A map to carry a constant to all of the frames that introduce a literal
     * involving that constant.  In large conjunctions, this speeds up updates from
     * a hierarchy change.
     */
    protected MultiMap<Constant,SolverStackFrame>frames=
	new HashMultiMap<Constant,SolverStackFrame>();

    /**
     * Build a solver for constraints on the given variable using the provided
     * slicing.
     * @param variable the variable that this solver's constraint stack will
     * involve
     * @param slicing the encoding of the type hierarchy
     */
    public SliceSolver(Variable variable,Slicing slicing){
	super(variable);
	this.slicing=slicing;
	slicing.addListener(this);
	frames.putSingle(null,top=new SolverStackFrame(slicing));
    }

    /**
     * Update the frame to match the slice (which presumably has changed), assuming
     * that the frame's predecessor, if any, is up-to-date.
     * @param frame the frame that may be out-of-date
     * @param slice the slice that has changed
     * @return true if the frame was in fact out-of-date and has changed
     */
    protected boolean synchronizeWithSlice(SolverStackFrame frame,Slice slice){
	if(frame==null){
	    return false;
	}
	SolverStackFrame predecessor=frame.getPredecessor();
	IntervalUnion<Constant>expected;
	if(predecessor==null){
	    expected=new IntervalUnion<Constant>(slice.asInterval());
	}else{
	    expected=restrict
		(new IntervalUnion<Constant>
		 (predecessor.getPossibilities().get(slice)),
		 slice,
		 frame.getLiteral());
	}
	if(expected.equals(frame.getPossibilities().get(slice))){
	    return false;
	}
	frame.getPossibilities().put(slice,expected);
	return true;
    }

    //inherit javadoc
    public boolean isSAT(){
	for(IntervalUnion<Constant>union:top.getPossibilities().values()){
	    if(!union.isEmpty()){
		return true;
	    }
	}
	return false;
    }
    public boolean isSAT(Literal literal){
	push(literal);
	boolean ret=isSAT();
	pop();
	return ret;
    }
    protected void pushInternal(Literal literal){
	frames.putSingle(literal.getConstant(),top=new SolverStackFrame(top,literal));
    }
    public void pop(){
	frames.get(top.getLiteral().getConstant()).remove(top);
	top=top.detachPredecessor();
    }
    public void clear(){
	top=frames.get(null).iterator().next();
	top.detachSuccessor();
	frames.clear();
	frames.putSingle(null,top);
    }

    /**
     * Respond to a new slice by solving on just that slice up through the stack.
     * @param event the notification of a new slice to stow information on
     */
    public void sliceAdded(SliceAddedEvent event){
	Slice slice=event.getSlice();
	SolverStackFrame base=frames.get(null).iterator().next();
	IntervalUnion<Constant>image=
	    new IntervalUnion<Constant>(slice.asInterval());
	assert !base.getPossibilities().containsKey(slice);
	base.getPossibilities().put(slice,image);
	for(SolverStackFrame current=base.getSuccessor();current!=null;
	    current=current.getSuccessor()){
	    image=restrict
		(new IntervalUnion<Constant>(image),slice,current.getLiteral());
	    current.getPossibilities().put(slice,image);
	}
    }

    /**
     * Respond to altered endpoints by resolving from affected points in the stack,
     * using short-circuiting where possible.
     * @param event the notification of the moved endpoint
     */
    public void endpointsChanged(EndpointsChangedEvent event){
	Slice slice=event.getSlice();
	Set<SolverStackFrame>toVisit=
	    new HashSet<SolverStackFrame>(frames.get(null));
	for(Constant constant:event.getMinChangedConstants()){
	    toVisit.addAll(frames.getNonNull(constant));
	}
	for(Constant constant:event.getMaxChangedConstants()){
	    toVisit.addAll(frames.getNonNull(constant));
	}
	while(!toVisit.isEmpty()){
	    Iterator<SolverStackFrame>it=toVisit.iterator();
	    SolverStackFrame current=it.next();
	    it.remove();
	    while(synchronizeWithSlice(current,slice)){
		current=current.getSuccessor();
		toVisit.remove(current);
	    }
	}
    }
}
