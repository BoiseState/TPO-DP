package tpodp.slicing;


import tpodp.*;
import tpodp.wrappers.MultiVariableSolver;

/**
 * <p>The factory that, given a hierarchy, establishes a straight slicing and uses
 * it to construct slice-based solvers over the entire hierarchy.  This version
 * does no wrapping, for testing purposes.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class UnwrappedSliceSolverFactory implements SolverFactory{
    /**
     * The locations of types and their descendants in the slicing.
     */
    protected Slicing slicing;
    
    /**
     * Create a factory that builds solvers for the given hierarchy.
     * @param slicing the encoding of the hierarchy
     */
    public UnwrappedSliceSolverFactory(Slicing slicing){
	this.slicing=slicing;
    }

    /**
     * Construct a solver given the variable that it is expected to process.
     * @param variable the variable that the returned solver must accept
     * constraints for
     * @return a solver that accepts constraints involving the given variable
     */
    public SingleVariableSolver buildSolver(Variable variable){
	return slicing.includesAbstractTypes()? 
			new OpenSliceSolver(variable,slicing):
			new SliceSolver(variable,slicing);
    }

    //inherit javadoc
    public Solver buildSolver(Variable...variables){
	//if there is only one variable, skip the overhead of the multi-variable
	//wrapper
	if(variables.length==1){
	    return buildSolver(variables[0]);
	}
	MultiVariableSolver solver=new MultiVariableSolver();
	for(Variable variable:variables){
	    solver.add(buildSolver(variable));
	}
	return solver;
    }
}
