package tpodp.wrappers;

import java.util.*;
import tpodp.*;

/**
 * <p>A wrapper that combines several <code>SingleVariableSolver</code>s into
 * one.  Constraints are dispatched to the internal solver according to the
 * variable that they reference.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class MultiVariableSolver implements Solver{
    /**
     * The mapping from variables to the solvers that process them.
     */
    protected Map<Variable,SingleVariableSolver>solvers=
	new HashMap<Variable,SingleVariableSolver>();
    /**
     * The variables that were involved in the pushed constraints, so that popping
     * can dispatch to the correct subsolver.
     */
    protected Stack<Variable>constrainedVariables=
	new Stack<Variable>();

    /**
     * Add a subsolver to support a new variable, or replace a subsolver for an
     * already supported variable.
     * @param solver the solver that becomes a subsolver.  The proper functioning
     * of this multi-variable solver depends on having exclusive access to the
     * subsolver.  This is why the adding is usually done in a factory method.
     * @throws IllegalStateException if the constraint stack is not empty
     */
    public void add(SingleVariableSolver solver){
	if(!constrainedVariables.isEmpty()){
	    throw new IllegalStateException
		("The multi-variable solver must be cleared before "+
		 "single-variable solvers can be added");
	}
	solvers.put(solver.getVariable(),solver);
    }
    /**
     * Remove the matching subsolver and so support for the given variable, if the
     * variable is supported.  Otherwise, do nothing.
     * @param variable the variable that should no longer be supported
     * @throws IllegalStateException if the constraint stack is not empty
     */
    public void remove(Variable variable){
	if(!constrainedVariables.isEmpty()){
	    throw new IllegalStateException
		("The multi-variable solver must be cleared before "+
		 "single-variable solvers can be removed");
	}
	solvers.remove(variable);
    }
    /**
     * Remove support for all variables by disconnecting all subsolvers.
     */
    public void removeAllSubsolvers(){
	if(!constrainedVariables.isEmpty()){
	    throw new IllegalStateException
		("The multi-variable solver must be cleared before "+
		 "single-variable solvers can be removed");
	}
	solvers.clear();
    }

    //inherit javadoc
    public boolean isSAT(){
	for(Map.Entry<Variable,SingleVariableSolver>entry:solvers.entrySet()){
	    if(!entry.getValue().isSAT()){
		return false;
	    }
	}
	return true;
    }
    //inherit javadoc
    public boolean isSAT(Literal literal){
	push(literal);
	boolean ret=isSAT();
	pop();
	return ret;
    }
    /**
     * Add a literal to the top of this solver's literal stack.
     * @param literal the literal to push onto the constraint stack
     * @throws IllegalArgumentException if the solver cannot support the literal's
     * variable
     */
    public void push(Literal literal){
	Variable variable=literal.getVariable();
	SingleVariableSolver solver=solvers.get(variable);
	if(solver==null){
	    throw new IllegalArgumentException
		("Variable "+variable+" is not recognized by this solver");
	}
	solver.push(literal);
	constrainedVariables.push(variable);
    }
    //inherit javadoc
    public void pop(){
	Variable variable=constrainedVariables.pop();
	SingleVariableSolver solver=solvers.get(variable);
	assert solver!=null;
	solver.pop();
    }
    //inherit javadoc
    public void clear(){
	for(Map.Entry<Variable,SingleVariableSolver>entry:solvers.entrySet()){
	    entry.getValue().clear();
	}
	constrainedVariables.clear();
    }
}
