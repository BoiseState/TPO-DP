package tpodp;

/**
 * <p>A partially implemented solver over one variable with just the infrastructure
 * to check that every literal pushed references only that variable.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public abstract class SingleVariableSolver implements Solver{
    /**
     * The variable whose assignments this solver is prepared to check.  All
     * literals on the stack must reference only this variable.
     */
    protected final Variable variable;

    /**
     * Construct the solver such that it restricts literals to a single variable.
     * @param variable the only variable that will be accepted as part of literals
     */
    public SingleVariableSolver(Variable variable){
	this.variable=variable;
    }

    /**
     * Determine which variable this solver is prepared to accept.
     * @return variable the only variable that will be accepted as part of an
     * argument to <code>push(Literal)</code>
     */
    public Variable getVariable(){
	return variable;
    }

    //inherit javadoc
    public abstract boolean isSAT();
    public abstract boolean isSAT(Literal literal);
    public abstract void pop();
    public abstract void clear();

    /**
     * The method where the subclass does the actual work of pushing the literal,
     * adding it to the top of this solver's literal stack.  This is a distinct
     * method from <code>push(Literal)</code> so that the latter can be declared
     * final.
     * @param literal the additional literal to push onto the stack
     */
    protected abstract void pushInternal(Literal literal);

    /**
     * A wrapper around <code>pushInternal(Literal)</code> that checks the argument
     * for references to variables besides the one this solver is meant to process.
     * @param literal the additional literal to check and then push onto the stack
     * @throws IllegalArgumentException if any variable besides the one this solver
     * is designated for is referenced in the argument
     */
    public final void push(Literal literal){
	if(literal.getVariable()!=variable){
	    throw new IllegalArgumentException
		("Single-variable solver for "+variable+
		 " cannot process the literal "+literal);
	}
	pushInternal(literal);
    }
}
