package tpodp;

/**
 * <p>An immutable representation of a single type within a type hierarchy.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class Constant{
    /**
     * The fully qualified type name, for example, <code>tpodp.Constant</code>,
     * that this constant represents.  Distinct instances of <code>Constant</code>
     * that have the same name will nonetheless be treated as different.
     */
    public String name;
    /**
     * Whether the type represented by this constant can be instantiated.  False
     * for abstract classes.
     */
    protected final boolean concrete;
    /**
     * Whether the type represented by this constant permits subclasses.  False for
     * final classes.
     */
    protected final boolean extensible;

    /**
     * Construct a type constant from a name, a concreteness, and an extensibility.
     * @param name the fully qualified name of the type the new constant should
     *   represent
     * @param concrete true if the type the new constant should represent can be
     *   instantiated
     * @param extensible true if the type the new constant should represent can be
     *   extended
     */
    public Constant(String name,boolean concrete,boolean extensible){
	this.name=name;
	this.concrete=concrete;
	this.extensible=extensible;
    }
    /**
     * Determine this constant's fully qualified type name.
     * @return the fully qualified name of the type this constant represents
     */
    public String toString(){
	return name;
    }
    /**
     * Determine whether this constant represents an instantiable type.
     * @return true if and only if the type this constant represents can be
     *   instantiated
     */
    public boolean isConcrete(){
	return concrete;
    }
    /**
     * Determine whether this constant represents an non-instantiable type.
     * @return true if and only if the type this constant represents cannot be
     *   instantiated
     */
    public boolean isAbstract(){
	return !concrete;
    }
    /**
     * Determine whether this constant represents an extensible type.
     * @return true if and only if the type this constant represents can be
     *   extended
     */
    public boolean isExtensible(){
	return extensible;
    }
    /**
     * Determine whether this constant represents a final type.
     * @return true if and only if the type this constant represents cannot be
     *   extended
     */
    public boolean isFinal(){
	return !extensible;
    }
}
