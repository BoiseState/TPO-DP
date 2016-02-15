package tpodp;

/**
 * <p>The operations that must be supported by a solver for the Type-based Partial
 * Orders fragment (TPO).</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public interface Solver{
    /**
     * Determine whether the conjunction of the current stack of literals is
     * satisfiable.  That is, does there exist a set of assignments to all of the
     * relevant variables such that (1) every variable's assignment is (or, for
     * some solvers, could be) in this solver's type hierarchy, and (2) the
     * assignments satisfy all literals on this solver's stack when those literals
     * are interpreted under that same hierarchy?
     * @return True if and only if the conjunction on the stack is satisfiable.
     */
    public boolean isSAT();
    /**
     * A convenience method: Determine whether the conjunction of the current stack
     * of literals and the argument is satisfiable.  This is semantically
     * equivalent to the sequence of calls <code>push(literal)</code>,
     * <code>isSAT()</code>, <code>pop()</code>, though in some cases (depending on
     * the underlying implementation) this method may run slightly faster.
     * @param literal the additional conjunct that must be satisfied
     * @return True if and only if the literals on the stack and the argument are
     * simultaneously satisfiable.
     */
    public boolean isSAT(Literal literal);
    /**
     * Add a literal to the top of this solver's literal stack.
     * @param literal the additional literal to push onto the stack
     */
    public void push(Literal literal);
    /**
     * Remove a literal from the top of this solver's literal stack.
     * @throws java.util.EmptyStackException if there is no literal to remove
     */
    public void pop();
    /**
     * Remove all literals from this solver's literal stack.
     */
    public void clear();
}
