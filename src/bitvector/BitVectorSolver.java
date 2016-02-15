package bitvector;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

import tpodp.Literal;
import tpodp.SingleVariableSolver;
import tpodp.Variable;

public class BitVectorSolver extends SingleVariableSolver {
	
	
	SimpleSet basicSets;
	
	//keep track of the constraints/literals that were push/pop
	//if constraint in in the collection then don't do the operation at all and just copy
	// the last BitSet
	List<Literal> addedConstraints;
	//place to store the results in the incremental way
	List<BitSet> stack;
	
	public BitVectorSolver(Variable variable, SimpleSet basicSets){
		super(variable);
		this.basicSets = basicSets;	
		stack = new ArrayList<BitSet>();
		addedConstraints = new ArrayList<Literal>();
		//push 1's on the stack - all possible values
		int size = basicSets.getSize();
		BitSet ones = new BitSet(size);
		ones.flip(0, size);//from inclusive to exclusive
		stack.add(ones);
	}

	

	@Override
	public boolean isSAT() {
		BitSet last = stack.get(stack.size()-1);
		return !last.isEmpty();
	}

	@Override
	public boolean isSAT(Literal literal) {
		BitSet currentSet = (BitSet)stack.get(stack.size()-1);
		// get the set that is relevant to the literal
		BitSet literalSet = basicSets.getSet(literal);
		return currentSet.intersects(literalSet);
	}

	@Override
	public void pop() {
		//System.out.println("Popping");
		if(!stack.isEmpty()){
			stack.remove(stack.size()-1);
			addedConstraints.remove(addedConstraints.size() - 1);
		}
	}

	@Override
	public void clear() {
		stack.clear();

	}

	@Override
	protected void pushInternal(Literal literal) {
		BitSet currentSet = (BitSet)stack.get(stack.size()-1).clone();
		if(!addedConstraints.contains(literal)) {
		//System.out.println("Pushing " + literal);
		// here is the heart of the procedure
		// get the last value from the stack

		// get the set that is relevant to the literal
		BitSet literalSet = basicSets.getSet(literal); // it is cloned
		currentSet.and(literalSet);
		}
		stack.add(currentSet);
		addedConstraints.add(literal);
	}

		
	
}
