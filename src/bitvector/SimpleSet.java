package bitvector;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

import tpodp.Constant;
import tpodp.Literal;

import tpodp.Literal.Relation;
import tpodp.hierarchy.DAG;

/**
 * This class computes only the =, !=, <, !< sets, don't store any
 * @author esherman
 *
 */
public class SimpleSet {
	//DAG where the hierarchy is stored
	protected DAG dag;
	//hierarchy size
	protected int size;
	//maps hierarchy type to its index in the bit vector
	protected Map<Constant, Integer> indexOfType;
	

	public SimpleSet(DAG dag){
		long timestamp=System.currentTimeMillis();
		this.dag = dag;
		//size = dag.getConstants().size();
		size = 0;
		indexOfType = new HashMap<Constant, Integer>();
		int index = 0;
		for(Constant c : dag.getTopologicalOrder()){
			//Exclude abstract types from the set since they cannot be used for the answer
			if(!c.isAbstract()){
				indexOfType.put(c, index);
				size++;
				index++;
			}
		}
		System.err.println("Placement setup: "+
				   (System.currentTimeMillis()-timestamp)+
				   "ms");
	}
	
	public BitSet getSet(Literal literal){
		BitSet literalBitSet = null;
		Relation rel = literal.getRelation();
		Constant c = literal.getConstant();
		
		if(rel == Relation.SUBTYPE_OF){
			if(literal.isPositive()){
				literalBitSet = getSubtype(c);
			} else {
				literalBitSet = getnotSubtype(c);
			}
		} else if (rel == Relation.EQUAL_TO){
			if(literal.isPositive()){
				literalBitSet = getEqual(c);
			} else {
				literalBitSet = getNotEqual(c);
			}
		} else {
			System.out.println("Unknown relation");
			System.exit(2);
		}
		
		return literalBitSet;
	}

	protected BitSet getNotEqual(Constant c) {
		BitSet notEqualSet = new BitSet(size);
		//set everything else except c to true
		notEqualSet.set(0, size-1);
		int index = indexOfType.get(c);
		notEqualSet.flip(index);
		return notEqualSet;
	}

	protected BitSet getEqual(Constant c) {

		BitSet equalSet = new BitSet(size);
		if(! c.isAbstract()){
			int index = indexOfType.get(c);
		//set index of c to true
			equalSet.set(index);
		}
		return equalSet;
	}

	protected BitSet getnotSubtype(Constant c) {
		BitSet notSubtypeSet = getSubtype(c);
		notSubtypeSet.flip(0, size);//from inclusive to exclusive
		return notSubtypeSet;
	}

	protected BitSet getSubtype(Constant c) {
		BitSet subtypeSet = new BitSet(size);
		for(Constant child : dag.getChildren(c)){
			if(!child.isAbstract()){
				int index = indexOfType.get(child);
				subtypeSet.flip(index);
			}
		}
		return subtypeSet;
	}
	
	public int getSize(){
		return size;
	}
}
