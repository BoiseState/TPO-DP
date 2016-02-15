package tpodp.wrappers;

import java.util.*;
import tpodp.*;

/**
 * <p>A solver wrapper that shields the actual solver from duplicate constraints.
 * Specifically, the wrapped solver only sees a subset of the wrapper's stack where
 * that subset contains each constraint exactly once.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class SimplifyingSolver implements Solver{
    /**
     * The wrapped solver.
     */
    protected Solver solver;
    /**
     * The set of literals that are on the stack.
     */
    protected Set<Literal>literalSet=new HashSet<Literal>();
    /**
     * The unfiltered stack of literals.
     */
    protected Stack<Literal>literalStack=new Stack<Literal>();

    /**
     * Wrap the given solver.  The proper functioning of the wrapper depends on
     * having exclusive access to the wrapped solver.  This is why the wrapping is
     * usually done in a factory method.
     * @param solver the solver to simplify constraints for
     */
    public SimplifyingSolver(Solver solver){
	this.solver=solver;
    }

    //inherit javadoc
    public boolean isSAT(){
	return solver.isSAT();
    }
    /**
     * If the given literal is already on the stack, return the cached result.
     * Otherwise forward the check to the internal solver.
     * @param literal the literal to temporarily add to the stack before checking
     * satisfiability
     * @return whether the conjunction of the literals on the stack and the
     * argument is satisfiable
     */
    public boolean isSAT(Literal literal){
	if(literalSet.contains(literal)){
	    return solver.isSAT();
	}else{
	    return solver.isSAT(literal);
	}
    }
    /**
     * If the given literal is already on the stack, do nothing (except to update
     * the bookkeeping so that the matching pop also does nothing).  Otherwise,
     * forward the push onto the internal solver.
     * @param literal the literal to possibly add to the stack
     */
    public void push(Literal literal){
	if(literalSet.add(literal)){
	    literalStack.push(literal);
	    solver.push(literal);
	}else{
	    literalStack.push(null);
	}
    }
    //inherit javadoc
    public void pop(){
	Literal literal=literalStack.pop();
	if(literal!=null){
	    literalSet.remove(literal);
	    solver.pop();
	}
    }
    //inherit javadoc
    public void clear(){
	literalSet.clear();
	literalStack.clear();
	solver.clear();
    }
}
