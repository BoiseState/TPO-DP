package tpodp;

/**
 * <p>An immutable representation of a single literal in the Type-based Partial
 * Orders fragment (TPO).  Each literal is a possibly negated atom that relates one
 * type variable to one type constant, either as the variable being a subtype of
 * the constant or being equal to the constant.</p>
 * @see tpodp.Constant
 * @see tpodp.Variable
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public final class Literal{
    /**
     * The set of relations that may occur in this literal's atom---either that the
     * variable is a subtype of the constant or equal to it.
     */
    public static enum Relation{SUBTYPE_OF,EQUAL_TO};

    /**
     * True if the literal is the unnegated atom, false otherwise.  Thus, for
     * example, positive would be true for a literal that asserts equality, but
     * false for one that asserts disequality.
     */
    protected final boolean positive;
    /**
     * The variable that is related to the constant by this literal.  For instance,
     * if this literal asserts that <code>x</code> is a subtype of
     * <code>foo.bar</code>, <code>x</code> would be the variable.
     */
    protected final Variable variable;
    /**
     * The relation that connects the variable and constant in this literal's atom.
     * Thus, for example, both an assertion of equality and disequality would have
     * the relation being <code>EQUAL_TO</code>.
     */
    protected final Relation relation;
    /**
     * The constant that is related to the variable by this literal.  For instance,
     * if this literal asserts that <code>x</code> is a subtype of
     * <code>foo.bar</code>, <code>foo.bar</code> would be the constant.
     */
    protected final Constant constant;

    /**
     * Construct an immutable constraint with the given values for its fields.
     * @param positive true if the constraint should remain unnegated, false
     * otherwise
     * @param variable the variable that should be constrained by this literal
     * @param relation the relation between the variable and constant that should
     * be enforced or forbidden
     * @param constant the type constant that the variable should be related to by
     * this literal
     */
    public Literal(boolean positive,Variable variable,Relation relation,Constant constant){
	this.positive=positive;
	this.variable=variable;
	this.relation=relation;
	this.constant=constant;
    }

    /**
     * Determine if this literal is positive.
     * @return True if this literal is an unnegated atom.  That is, this method
     * returns true if this literal expresses either that the variable is equal to
     * the constant or a subtype of it.  If, on the other hand, this literal means
     * that the variable is not equal to or not a subtype of the constant, this
     * method return false.
     */
    public boolean isPositive(){
	return positive;
    }
    /**
     * Determine the variable constrained by this literal.
     * @return the variable that is related to a constant by this literal
     */
    public Variable getVariable(){
	return variable;
    }
    /**
     * Determine how this literal relates its variable to its constant.
     * @return either <code>tpodp.Literal.Relation.SUBTYPE_OF</code> or
     * <code>tpodp.Literal.Relation.EQUAL_TO</code> according to the relation that
     * this literal enforces or forbids.
     */
    public Relation getRelation(){
	return relation;
    }
    /**
     * Determine the constant that this literal relates its variable to.
     * @return The constant that the variable is compared to by this literal.
     */
    public Constant getConstant(){
	return constant;
    }

    /**
     * Compute the hashcode of this literal such that equal literals have the same
     * hashcode.
     * @return A hashcode that considers all of this class's members. 
     */
    public int hashCode(){
	int ret;
	ret=variable.hashCode()+relation.hashCode()+constant.hashCode();
	if(positive){
	    return ret;
	}
	return ~ret;
    }

    /**
     * Determine whether this literal is identical in every member to the argument.
     * @throws java.lang.ClassCastException if <code>o</code> is not an instance of
     * <code>tpodp.Literal</code>.
     */
    public boolean equals(Object o){
	Literal other=(Literal)o;
	return
	    positive==other.positive&&
	    variable==other.variable&&
	    relation==other.relation&&
	    constant==other.constant;
    }

    /**
     * Represent this literal as a string, for debugging purposes.
     * @return A string encoding of this literal intended for human consumption.
     * <code>~<code> is used to indicate negation, <code>&lt;:</code> for
     * subtype-of, and <code>==</code> means type equality.
     */
    public String toString(){
	StringBuffer ret=new StringBuffer();
	if(!isPositive()){
	    ret.append('~');
	}
	ret.append('(').append(variable);
	switch(relation){
	case SUBTYPE_OF:
	    ret.append("<:");
	    break;
	case EQUAL_TO:
	    ret.append("==");
	    break;
	default:
	    ret.append("<?>");
	}
	ret.append(constant).append(')');
	return ret.toString();
    }
}
