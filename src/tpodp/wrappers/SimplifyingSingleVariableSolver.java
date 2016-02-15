package tpodp.wrappers;

import tpodp.wrappers.SimplifyingSolver;
import tpodp.*;

/**
 * <p>A <code>SimplifyingSolver</code> restricted to a single variable.  Too bad
 * Java doesn't have multiple inheritance.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class SimplifyingSingleVariableSolver extends SingleVariableSolver{
    /**
     * The wrapped solver.
     */
    protected SimplifyingSolver solver;

    /**
     * Wrap the given solver.  The proper functioning of the wrapper depends on
     * having exclusive access to the wrapped solver.  This is why the wrapping is
     * usually done in a factory method.
     * @param solver the solver to simplify constraints for
     */
    public SimplifyingSingleVariableSolver(SingleVariableSolver solver){
	super(solver.getVariable());
	this.solver=new SimplifyingSolver(solver);
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
	return solver.isSAT(literal);
    }
    /**
     * If the given literal is already on the stack, do nothing (except to update
     * the bookkeeping so that the matching pop also does nothing).  Otherwise,
     * forward the push onto the internal solver.
     * @param literal the literal to possibly add to the stack
     */
    protected void pushInternal(Literal literal){
	solver.push(literal);
    }
    //inherit javadoc
    public void pop(){
	solver.pop();
    }
    //inherit javadoc
    public void clear(){
	solver.clear();
    }
}
