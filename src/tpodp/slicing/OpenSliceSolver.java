package tpodp.slicing;


import java.util.Comparator;
import java.util.EmptyStackException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import tpodp.interval.Interval;
import tpodp.Constant;
import tpodp.Literal;
import tpodp.SingleVariableSolver;
import tpodp.Variable;
import tpodp.Literal.Relation;
import utilities.HashMultiMap;
import utilities.MultiMap;

/**
 * <p>A single-variable solver for an open hierarchy. It would
 * return sat when there is a strong contradiction in the passed
 * constraints, i.e. one that cannot be avoided by extending
 * the type hierarchy.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0,
 */

public class OpenSliceSolver extends SingleVariableSolver {

	public OpenSliceSolver(Variable variable, Slicing slicing) {
		super(variable);
		OpenSliceSolver.slicing = slicing; 
		frames.putSingle(null, top = new SolverStackFrame());
	}
	
	 
	 // we need slicing for ancestor relation querying
	 protected static Slicing slicing;
	 
	 protected SolverStackFrame top;
	 
	    /**
	     * A map to carry a constant to all of the frames that introduce a literal
	     * involving that constant.  In large conjunctions, this speeds up updates from
	     * a hierarchy change.
	     */
	    protected MultiMap<Constant,SolverStackFrame>frames=
		new HashMultiMap<Constant,SolverStackFrame>();
	    
	    /**
		 * EQ_E = {A_i} creates unsat for x = B, if exists i : A_i = B
		 * EQ_D = {A_i} creates unsat for x = B, if exists i: B <: A
		 * MUST_D = {A_i} creates unsat for x = B if for all i : B !<:A_i
		 * MUST_P = {A_i} creates unsat for x <: B if for all i : A_i !<: B
		 * NOT_EQ = {A_i} creates unsat for x != B, if exists i: A_i = B
		 * SUB = {A_i} creates unsat for x <: B, if exists i: B <: A_i
		 * NOT_SUB = {A_i} creates unsat for x !<: B, if exists i: A_i <: B
		 */
		 public static enum Bucket{EQ_E,EQ_D,MUST_D, MUST_P, NOT_EQ, SUB, NOT_SUB};
		 
		 // only calls if the currently it is sat
		 protected static boolean updateSAT(Set<Constant> set, Bucket bucket, 
				 Constant b){
			 
			 if(set.isEmpty()) return true;
			 
			 boolean ret = true;
			
			 switch (bucket) {
			 case EQ_E: {
					 if (set.contains(b)){
						 ret = false;
				 }
			 }
			 break;
			 case EQ_D : {
					 for(Constant a : set){
						 if (isParent(b,a)) {
							 ret = false;
							 break;
						 }
					 }
			 }
			 break;
			 case MUST_D: {
				// "b" should be a descendant to at least one of "a"
				 // nov 24, 2010 :  "b" should be a descendant to all of "a"
					 for(Constant a : set){
						 if (!isParent(b,a)) {
							 ret = false;
							 break;						 
							 } 
							 //else {
//							 ret = false;
//						 }
					 }
					 // none is found ret should be false
			 }	
			 break;
			 case MUST_P: {
				 // "b" should be a parent to at least one of "a"
				 ret = false;
				 for(Constant a : set){
					 if (isParent(a,b)) {
						 ret = true;
						 break;
					 } 
//					 else {
//						 ret = false;
//					 }
				 }
			 }	
			 break;
			 case NOT_EQ: {
				 	if (set.contains(b)) {
						 ret = false;
					 }
			 }
			 break;
			 case SUB: {
					 for(Constant a : set){
						 if (isParent(b,a)) {
							ret =  false; 
							break;
						 }
						
					 }
			 }	
			 break;
			 case NOT_SUB: {
					 for(Constant a : set){
						 if (isParent(a,b)) {
							 ret = false;
							 break;
						 }
					 }
			 }	
			 break;
			 }
			 //System.out.println(bucket + " " + set + " " + b + " " + ret);
			 return ret;
		 }
		 
		 private static boolean isParent(Constant child, Constant parent){
			 boolean ret = false;
			 for(Slice s : slicing.getSlices()){
				 Interval<Constant> inP = s.getDescendantInterval(parent);
				 Interval<Constant> inC = s.getEqualityInterval(child);
				 if(!inP.isEmpty() && !inC.isEmpty()){
					 //both should be in the interval otherwise the comparator complaints
				 Comparator<Constant> comp = inP.getComparator();
					 if (comp.compare(inP.getMin(), child) <= 0 && 
							 comp.compare(inP.getMax(), child) > 0) {
						 // Descendant found
						 ret = true;
						 break;
					 }
				 }
			 }// end for
			 return ret;
		 }


		/**
		 * updates set of constant according to rules for the literal
		 * if it has found a contradiction it deletes all elements from 
		 * the set
		 * @param bucket
		 * @param literal
		 * @return
		 */
		protected static Set<Constant> 
		updateBucket(Set<Constant> bucketSet, Bucket bucket, Constant a){
			if (bucket == OpenSliceSolver.Bucket.EQ_E || 
					bucket == OpenSliceSolver.Bucket.NOT_EQ){
				bucketSet.add(a);
			} else {
				//addSpecial(bucketSet, a);
				bucketSet.add(a);
			}
		return bucketSet;
		}
		
		
		private static void addSpecial(Set<Constant> bucketSet, Constant a){
			boolean add = true;
			Set<Constant> remove = new HashSet<Constant>();
			for (Constant c : bucketSet){
				if (slicing.getParentMap().get(a).contains(c)) {
					add = false;
					break;
				} else if (slicing.getParentMap().get(c).contains(a)){
					remove.add(c);
				}
			}
			if (!remove.isEmpty()){
				bucketSet.removeAll(remove);
			}
			if (add){
				bucketSet.add(a);
			}
		}

		@Override
		public void clear() {
			top=frames.get(null).iterator().next();
			top.detachSuccessor();
			frames.clear();
			frames.putSingle(null,top);
			
		}

		@Override
		public boolean isSAT() {
			return top.isSat();
		}

		@Override
		public boolean isSAT(Literal literal) {
			push(literal);
			boolean ret=isSAT();
			pop();
			return ret;
		}

		@Override
		public void pop() {
			frames.get(top.getLiteral().getConstant()).remove(top);
			top=top.detachPredecessor();
			
		}

		@Override
		protected void pushInternal(Literal literal) {
			frames.putSingle(literal.getConstant(),
					top=new SolverStackFrame(top,literal));
		}

	
	/**
	 * <p>A compact representation of conjunction of constraints. The solver
	 * keeps these representations on a stack to represent the substack of 
	 * literals.</p>
	 * @author Elena Sherman
	 * @author Brady J. Garvin
	 * @version 1.0, 
	 *
	 */
	protected static class SolverStackFrame{
		
		protected boolean sat = true;
		protected Constant eq = null;
		
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
		 * The set of possible contradictions for this solver's variable in
		 * each of the contradiction bucket.
		 */
		protected Map<Bucket, Set<Constant>> contradictions = 
			new HashMap<Bucket, Set<Constant>>();
		
		/**
		 * Construct a frame that encodes no constraints.
		 * @param slicing the Slicing this frame operates within
		 */
		public SolverStackFrame(){
		    predecessor=null;
		    literal=null;
		    for(Bucket b : Bucket.values()){
			contradictions.put(b, new HashSet<Constant>());
		    }
		}
		/**
		 * Construct a frame that encodes the constraints of its predecessor and
		 * additionally one more literal.
		 */
		public SolverStackFrame(SolverStackFrame predecessor,Literal literal){
		    this.predecessor = predecessor;
		    this.literal = literal;
		    Constant a = literal.getConstant();
			Relation r = literal.getRelation();
			boolean positive = literal.isPositive();
			
		    //update sat variable
		    sat = predecessor.sat;
		    eq = predecessor.eq;
//		    boolean debug = this.literal.getVariable().toString().equals("x7");
//		    if(debug){
//		    	System.out.println(literal + " sat " + sat);
//		    	System.out.println(predecessor.contradictions);
//		    }
		    if (sat) {
		    	// check for the abstract case
		    	if (a.isAbstract() && r == Literal.Relation.EQUAL_TO){
		    		if (positive){
		    			sat = false;
		    		}
		    		// no updates to the bucket made with the EQUAL_TO relation
		    	} else {
		    		if (r == Literal.Relation.EQUAL_TO){
		    			if (positive) {
		    				if (eq == null || eq.equals(a)) {
		    				eq = a;
		    				sat = updateSAT(predecessor.contradictions.
		    						get(OpenSliceSolver.Bucket.EQ_E),
		    						OpenSliceSolver.Bucket.EQ_E, a);
		    				if (sat){
		    					// add the previous constraint
		    					sat = updateSAT(predecessor.contradictions.
		    							get(OpenSliceSolver.Bucket.EQ_D),
		    							OpenSliceSolver.Bucket.EQ_D, a);
		    				}
		    				if (sat){
		    					// add the previous constraint
		    					sat = updateSAT(predecessor.contradictions.
		    							get(OpenSliceSolver.Bucket.MUST_D),
		    							OpenSliceSolver.Bucket.MUST_D, a);
		    				}
		    				if (sat){
		    					// update the buckets for x = A 
		    					// that are the same for concrete and final
		    					// the abstract should not get there
		    					if (!a.isAbstract()){
		    						update(OpenSliceSolver.Bucket.NOT_EQ, a);
		    						update(OpenSliceSolver.Bucket.NOT_SUB, a);
		    						update(OpenSliceSolver.Bucket.MUST_P, a);
		    					} else {
		    						// error
		    					}
		    				}
		    				} else {
		    					sat = false;
		    				}
		    			} else {
		    				sat = updateSAT(predecessor.contradictions.
		    						get(OpenSliceSolver.Bucket.NOT_EQ),
		    						OpenSliceSolver.Bucket.NOT_EQ, a);
		    				if (sat){
		    					// update the buckets for x = A 
		    					// that are the same for concrete and final
		    					// the abstract should not get there
		    					if (!a.isAbstract()){
		    						update(OpenSliceSolver.Bucket.EQ_E, a);
		    						// this one only for final
		    						if (a.isFinal()) {
		    							update(OpenSliceSolver.Bucket.SUB, a);
		    						}
		    					} else {
		    						// error
		    					}
		    				}
		    			}
		    		} else if (r == Literal.Relation.SUBTYPE_OF){
		    			if (positive){
		    				sat = updateSAT(predecessor.contradictions.
		    						get(OpenSliceSolver.Bucket.MUST_P),
		    						OpenSliceSolver.Bucket.MUST_P, a);
		    				if(sat) {
		    				sat = updateSAT(predecessor.contradictions.
		    						get(OpenSliceSolver.Bucket.SUB),
		    						OpenSliceSolver.Bucket.SUB, a);
		    				}
		    				// update buckets
		    				if (sat){
//		    					if(debug){
//		    						System.out.println("updating NOT_SUB " + predecessor.contradictions.get(OpenSliceSolver.Bucket.NOT_SUB));
//		    					}
		    					update(OpenSliceSolver.Bucket.NOT_SUB, a);
//		    					if(debug){
//		    						System.out.println("after updating NOT_SUB " + predecessor.contradictions.get(OpenSliceSolver.Bucket.NOT_SUB));
//		    					}
	    						update(OpenSliceSolver.Bucket.MUST_D, a);
	    						if (a.isFinal()) {
	    							update(OpenSliceSolver.Bucket.NOT_EQ, a);
	    						}
		    				}
		    			} else {
		    				sat = updateSAT(predecessor.contradictions.
		    						get(OpenSliceSolver.Bucket.NOT_SUB),
		    						OpenSliceSolver.Bucket.NOT_SUB, a);
		    				if (sat) {
		    					update(OpenSliceSolver.Bucket.SUB, a);
	    						if (a.isFinal()){
	    							update(OpenSliceSolver.Bucket.EQ_E,a);
		    						
	    						} else {
	    							update(OpenSliceSolver.Bucket.EQ_D, a);
	    						}
		    				}
		    			}

		    		} else {
		    			// should be an error
		    		}
		    	}

		    }
		    
		    // iterate over all buckets
		    // copy ones that have not been updated.
		    for (Map.Entry<Bucket, Set<Constant>> entry : 
		    	predecessor.contradictions.entrySet()){
		    	Bucket key = entry.getKey();
		    	if (!this.contradictions.containsKey(key)){
		    		this.contradictions.put(key, 
		    				new HashSet<Constant>(entry.getValue()));
		    	}
		    }
		    
		    // if it's still sat value of A to the buckets
		    // reset the successor
		    predecessor.successor = this;
		    
//		    if(debug){
//		    	System.out.println(literal + " sat " + sat);
//		    	System.out.println(this.contradictions);
//		    }
		    
		}
		
		 private void update(Bucket bucket, Constant a){
			 Set<Constant> set = predecessor.contradictions.get(bucket);
			 set =	updateBucket(new HashSet<Constant>(set), 
						bucket,a);
			 this.contradictions.put(bucket, set);
		    }
		
		public Map<Bucket, Set<Constant>> getContradictions(){
			return contradictions;
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
		
		public boolean isSat(){
			return sat;
		}
		
	} // enf of inner class
	
	
}
