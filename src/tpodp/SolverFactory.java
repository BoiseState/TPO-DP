package tpodp;

/**
 * <p>The operations that must be supported by classes that construct solvers.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public interface SolverFactory{
    /**
     * Construct a solver given the variables that it is expected to process.
     * @param variables the variables that the returned solver must accept
     * constraints for
     * @return a solver that accepts constraints involving at least the given set
     * of variables
     */
    public Solver buildSolver(Variable...variables);
}
