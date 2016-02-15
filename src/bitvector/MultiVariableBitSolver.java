package bitvector;

import java.util.Map;
import java.util.HashMap;
import java.util.Stack;

import tpodp.Literal;
import tpodp.SingleVariableSolver;
import tpodp.Solver;
import tpodp.Variable;

public class MultiVariableBitSolver implements Solver{

	protected Map<Variable, BitVectorSolver> solvers = new HashMap<Variable, BitVectorSolver>();
	
	/**
     * The variables that were involved in the pushed constraints, so that popping
     * can dispatch to the correct subsolver.
     */
    protected Stack<Variable>constrainedVariables=
	new Stack<Variable>();
    
    public void add(BitVectorSolver solver){
    	if(!constrainedVariables.isEmpty()){
    		throw new IllegalStateException
    		("The multi-variable solver must be cleared before "+
    		 "single-variable solvers can be added");
    	}
    	
    	solvers.put(solver.getVariable(), solver);
    }
    
  //inherit javadoc
    public boolean isSAT(){
	for(Map.Entry<Variable,BitVectorSolver>entry:solvers.entrySet()){
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
	for(Map.Entry<Variable,BitVectorSolver>entry:solvers.entrySet()){
	    entry.getValue().clear();
	}
	constrainedVariables.clear();
    }
	
}
