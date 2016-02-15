package tpodp.wrappers;

import java.util.*;
import tpodp.*;

/**
 * <p>A solver wrapper that shields the actual solver from duplicate queries.  For
 * each <code>isSAT()</code> query the result returned by the wrapped solver is
 * cached.  The cache tracks the wrapped solver's stack, so the lifetime of cached
 * results is restricted to the lifetime of the corresponding set of literals.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class CachingSolver implements Solver{
    /**
     * The possible values to cache: either SAT or UNSAT, or UNKNOWN if there has
     * been no <code>isSAT()</code> call to establish the result.
     */
    protected enum CachedResult{UNKNOWN,UNSAT,SAT};
    /**
     * The wrapped solver.
     */
    protected Solver solver;
    /**
     * The stack of cached results, which is always consulted before the wrapped
     * solver.  This stack must always have the height of the wrapped solver's
     * stack, plus one for the case where no constraints are pushed.
     */
    protected Stack<CachedResult>cachedResults=new Stack<CachedResult>();

    /**
     * Wrap the given solver.  The proper functioning of the wrapper depends on
     * having exclusive access to the wrapped solver.  This is why the wrapping is
     * usually done in a factory method.
     * @param solver the solver to cache results from
     */
    public CachingSolver(Solver solver){
	this.solver=solver;
	//For the case where no constraints are present we cannot assume SAT
	//because the hierarchy may be devoid of concrete classes.
	cachedResults.push(CachedResult.UNKNOWN);
    }

    /**
     * First check for a cached result.  If there is none, ask the wrapped solver
     * and remember the answer.
     * @return true if the system is satisfiable, either according to a previous
     * call to the wrapped solver or a new one
     */
    public boolean isSAT(){
	switch(cachedResults.peek()){
	case UNKNOWN:
	    boolean ret=solver.isSAT();
	    cachedResults.pop();
	    cachedResults.push(ret?CachedResult.SAT:CachedResult.UNSAT);
	    return ret;
	case UNSAT:
	    return false;
	case SAT:
	    return true;
	}
	throw new RuntimeException
	    ("Cached result is not one of {UNKNOWN,UNSAT,SAT}");
    }
    //inherit javadoc
    public boolean isSAT(Literal literal){
	return solver.isSAT(literal);
    }
    /**
     * Add another literal to the wrapped solver's stack and allocate more space to
     * cache an <code>isSAT()</code> result.  As a small optimization, conclude
     * that the problem is still UNSAT if it is known to be UNSAT for a subset of
     * the pushed literals.
     * @param literal the literal to add to the constraint stack
     */
    public void push(Literal literal){
	solver.push(literal);
	switch(cachedResults.peek()){
	case UNKNOWN:
	case SAT:
	    cachedResults.push(CachedResult.UNKNOWN);
	    return;
	case UNSAT:
	    cachedResults.push(CachedResult.UNSAT);
	    return;
	}
	throw new RuntimeException
	    ("Cached result is not one of {UNKNOWN,UNSAT,SAT}");
    }
    //inherit javadoc
    public void pop(){
	solver.pop();
	cachedResults.pop();
    }
    //inherit javadoc
   public void clear(){
	solver.clear();
	CachedResult cachedEmptyResult=cachedResults.get(0);
	cachedResults.clear();
	cachedResults.push(cachedEmptyResult);
    }
}
