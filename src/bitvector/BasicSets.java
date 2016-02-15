package bitvector;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

import tpodp.Constant;
import tpodp.Literal;
import tpodp.Literal.Relation;
import tpodp.hierarchy.DAG;

/*
 * This class contains the map of types to their BitTypes
 */
public class BasicSets {
	//for each type in the dag construct sets for <, !<, =, !=
	protected Map<Constant, BitTypes> basicSets;
	protected DAG dag;
	// hierarchy size;
	protected int size;
	//maps type to bit set index
	protected Map<Constant, Integer> placement;
	
	public BasicSets(DAG dag){
		long timestamp=System.currentTimeMillis();
		this.dag = dag;
		size = dag.getConstants().size();
		basicSets = new HashMap<Constant, BitTypes>();
		placement = new HashMap<Constant, Integer>();
		int index = 0;
		for(Constant c : dag.getTopologicalOrder()){
			placement.put(c, index);
			index++;
		}
		//System.out.println("Constant " + size + " index " + index);
		System.err.println("Placement setup: "+
				   (System.currentTimeMillis()-timestamp)+
				   "ms");
		
		//System.out.println("Placement " + placement);
		//System.out.println("BasicSets " + basicSets);
		
	}
	
	protected BitTypes generateTypes(Constant c) {
		BitTypes ret = null;
		int index = placement.get(c);
		
		BitSet equalSet = new BitSet(size);
		//set index of c to true
		equalSet.set(index);
		BitSet notEqualSet = new BitSet(size);
		//set everything else except c to true
		notEqualSet.set(0, size-1);
		notEqualSet.flip(index);
		//more complicated
		BitSet subtypeSet = new BitSet(size);
		for(Constant child : dag.getChildren(c)){
			index = placement.get(child);
			subtypeSet.flip(index);
		}
		BitSet notSubtypeSet = (BitSet)subtypeSet.clone();
		notSubtypeSet.flip(0, size);
		
		ret = new BitTypes(equalSet, notEqualSet, subtypeSet, notSubtypeSet);
		return ret;
		
	}
	
	public BitSet getSet(Literal literal){
		BitSet literalSet = null;
		BitTypes types = basicSets.get(literal.getConstant());
		if(literal.getRelation() == Relation.SUBTYPE_OF){
			if(literal.isPositive()){
				literalSet = types.getSubtype();
			} else {
				literalSet = types.getnotSubtype();
			}
		} else if (literal.getRelation() == Relation.EQUAL_TO){
			if(literal.isPositive()){
				literalSet = types.getEqual();
			} else {
				literalSet = types.getNotEqual();
			}
		} else {
			System.out.println("Unknown relation");
			System.exit(2);
		}
		return literalSet;
	}
	
	
	
	public int getSetSize(){
		return size;
	}

}
