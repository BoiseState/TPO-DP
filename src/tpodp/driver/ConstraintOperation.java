package tpodp.driver;

import tpodp.Literal;
import tpodp.Solver;


public class ConstraintOperation{
    protected boolean push;
    protected Literal constraint;

    public ConstraintOperation(boolean push,Literal constraint){
	this.push=push;
	this.constraint=constraint;
    }

    public boolean isPush(){
	return push;
    }

    public Literal getConstraint(){
	return constraint;
    }

    public void apply(Solver solver){
	if(push){
	    solver.push(constraint);
	}else{
	    solver.pop();
	}
    }

    public String toString(){
	return (push?"push ":"pop ")+constraint;
    }

}
