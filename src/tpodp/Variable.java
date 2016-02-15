package tpodp;

/**
 * <p>An immutable representation of a single type variable.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class Variable{
    /**
     * The variable's name, which is used only to represent the variable as a
     * string.  In particular, two distinct instances of the <code>Variable</code>
     * class may share a name without being treats as the same variable.
     */
    protected final String name;

    /**
     * Construct a type variable with a given name.
     * @param name the string representation to lend to this variable
     */
    public Variable(String name){
	this.name=name;
    }

    /**
     * Determine this variable's name
     * @return the name given to this variable at construction time
     */
    public String toString(){
	return name;
    }
}
