package tpodp.slicing;

import java.util.*;
import tpodp.*;

/**
 * <p>An encoding of the ancestor relation in a hierarchy as inclusion in a set of
 * intervals.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.1, 2010-06-05
 */
public class Slicing{
	
	/**
	 * this var is set up when abstract types
	 * need to be in the hierarchy - for open hierarchy.
	 */
	private boolean includeAbsract = false;
    /**
     * The parents of every type in the slicing, so that we can determine ancestors
     * of new types without using an excessive amount of memory or time.
     */
    private Map<Constant,Set<Constant> >parentMap=
	new HashMap<Constant,Set<Constant> >();
    /**
     * The unique slice that contains each type.  Note well that abstract classes
     * have no location!
     */
    protected Map<Constant,Slice>locations=new HashMap<Constant,Slice>();
    /**
     * The set of slices, for iterating over them.  Really we just need a set, but
     * for consistency in the arrangement of types we use a list instead.
     */
    protected List<Slice>encoding=new ArrayList<Slice>();

    /**
     * The objects that are listening to changes in the hierarchy.
     */
    protected List<SlicingChangedListener>listeners=
	new ArrayList<SlicingChangedListener>();

    public Slicing(){
    	
    }
    
    public Slicing(boolean includeAbstractTypes){
    	includeAbsract = includeAbstractTypes;
    }
    /**
     * Send an event to all listeners.
     * @param the <code>SliceAddedEvent</code> to dispatch
     */
    protected void dispatch(SliceAddedEvent event){
	for(SlicingChangedListener listener:listeners){
	    listener.sliceAdded(event);
	}
    }
    /**
     * Send an event to all listeners.
     * @param the <code>EndpointsChangedEvent</code> to dispatch
     */
    protected void dispatch(EndpointsChangedEvent event){
	for(SlicingChangedListener listener:listeners){
	    listener.endpointsChanged(event);
	}
    }

    /**
     * Register an object to hear about changes to the hierarchy.
     * @param listener the object interested in hierarchy changes
     */
    public void addListener(SlicingChangedListener listener){
	if(listener==null){
	    throw new NullPointerException("listener");
	}
	listeners.add(listener);
    }

    /**
     * Get the complete set of slices, in order.
     * @return the slices that constitute the hierarchy encoding
     */
    public Iterable<Slice>getSlices(){
	return Collections.unmodifiableList(encoding);
    }

    /**
     * Add a type with the given parents to the slicing.  Dispatch events
     * accordingly.
     * @param type the type that is new to the slicing
     * @param parents the parents of the type, which must be added first
     * @throws IllegalArgumentException if any parent is missing from the slicing
     */
    public void add(Constant type,Set<Constant>parents){
	getParentMap().put(type,Collections.unmodifiableSet(parents));
	if(!includeAbsract && type.isAbstract()){
	   return;
	}
	for(Constant parent:parents){
	    if(!getParentMap().containsKey(parent)){
		throw new IllegalArgumentException
		    ("The parent "+parent+" is not in the slicing.");
	    }
	}
	// performing transitive closure of type's ancestors
	Set<Constant>ancestors=new HashSet<Constant>(parents);
	Queue<Constant>worklist=new LinkedList<Constant>(parents);
	while(!worklist.isEmpty()){
	    Constant current=worklist.poll();
	    for(Constant next:getParentMap().get(current)){
		if(!ancestors.contains(next)){
		    ancestors.add(next);
		    worklist.offer(next);
		}
	    }
	}
	// attempting to add to existing slices
	for(Slice slice:encoding){
	    EndpointsChangedEvent result=slice.add(type,ancestors);
	    if(result!=null){
		locations.put(type,slice);
		dispatch(result);
		return;
	    }
	}
	// if fail to do so then create a new slice
	Slice slice=new Slice(type,ancestors);
	locations.put(type,slice);
	encoding.add(slice);
	dispatch(new SliceAddedEvent(slice,type));
    }

    /**
     * Represent this as a string for debugging purposes.
     * @return the list of slices' string representations
     */
    public String toString(){
	return encoding.toString();
    }
    
    public int numberOfSlices(){
    	return encoding.size();
    }
	public void setParentMap(Map<Constant,Set<Constant> > parentMap) {
		this.parentMap = parentMap;
	}
	public Map<Constant,Set<Constant> > getParentMap() {
		return parentMap;
	}
	
	boolean includesAbstractTypes(){
		return includeAbsract;
	}
}
