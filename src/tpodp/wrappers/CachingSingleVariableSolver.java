package tpodp.wrappers;

import tpodp.wrappers.CachingSolver;
import tpodp.*;

/**
 * <p>A <code>CachingSolver</code> restricted to a single variable.  Too bad Java
 * doesn't have multiple inheritance.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class CachingSingleVariableSolver extends SingleVariableSolver{
    /**
     * The implementation <code>CachingSolver</code>, which is wrapped with an
     * interface to prevent multiple variables.
     */
    protected CachingSolver solver;

    /**
     * Wrap the given solver.  The proper functioning of the wrapper depends on
     * having exclusive access to the wrapped solver.  This is why the wrapping is
     * usually done in a factory method.
     * @param solver the solver to simplify constraints for
     */
    public CachingSingleVariableSolver(SingleVariableSolver solver){
	super(solver.getVariable());
	//In lieu of multiple inheritance
	this.solver=new CachingSolver(solver);
    }

    /**
     * First check for a cached result.  If there is none, ask the wrapped solver
     * and remember the answer.
     * @return true if the system is satisfiable, either according to a previous
     * call to the wrapped solver or a new one
     */
    public boolean isSAT(){
	return solver.isSAT();
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
