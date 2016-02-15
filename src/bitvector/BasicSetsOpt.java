package bitvector;

import java.util.BitSet;

import tpodp.Constant;
import tpodp.Literal;
import tpodp.Literal.Relation;
import tpodp.hierarchy.DAG;

public class BasicSetsOpt extends BasicSets {
	public int addedSet; //a counter

	public BasicSetsOpt(DAG dag) {
		super(dag);
		addedSet = 0;
	}
	
	@Override
	public BitSet getSet(Literal literal){
		BitSet ret = null;
		BitTypes bitTypes = null;
		// add the type if it not present for this literal
		Constant c = literal.getConstant();
		if(!basicSets.containsKey(c)){
			BitSet equalSet = null;
			BitSet notEqualSet = null;
			BitSet subtypeSet = null;
			BitSet notSubtypeSet = null;
			//basicSets.put(literal.getConstant(), generateTypes(c));
			//generate the constraint only for that literal it is not present in the set
			if(literal.getRelation() == Relation.SUBTYPE_OF){
				if(literal.isPositive()){
					ret = genSubtypeNew(c);
					subtypeSet = ret;
				} else {
					ret = genNotSubtypeNew(c);
					notSubtypeSet = ret;
				}
			} else if (literal.getRelation() == Relation.EQUAL_TO){
				if(literal.isPositive()){
					ret = genEqualNew(c);
					equalSet = ret;
				} else {
					ret = genNotEqualNew(c);
					notEqualSet = ret;
				}
			} else {
				System.out.println("Unknown relation");
				System.exit(2);
			}
			// generate the set and add to the map
			bitTypes = new BitTypes(equalSet, notEqualSet, subtypeSet, notSubtypeSet);
			basicSets.put(c, bitTypes);
			addedSet++;
		} else {
			// bitTypes is present but the particular entry might not
			bitTypes = basicSets.get(c);
			if(literal.getRelation() == Relation.SUBTYPE_OF){
				if(literal.isPositive()){
					ret = bitTypes.getSubtype();
					if(ret == null){
						addedSet++;
						ret = genSubtype(c, bitTypes);
						bitTypes.subtype = ret;
					}
				} else {
					ret = bitTypes.getnotSubtype();
					if(ret == null){
						addedSet++;
						ret = genNotSubtype(c, bitTypes);
						bitTypes.notSubtype = ret;
					}
				}
			} else if (literal.getRelation() == Relation.EQUAL_TO){
				if(literal.isPositive()){
					ret = bitTypes.getEqual();
					if(ret == null) {
						addedSet++;
						ret = genEqual(c, bitTypes);
						bitTypes.equal = ret;
					} 
				} else {
					ret = bitTypes.getNotEqual();
					if(ret == null){
						addedSet++;
						ret = genNotEqual(c, bitTypes);
					bitTypes.notEqual = ret;
					}
				}
			} else {
				System.out.println("Unknown relation");
				System.exit(2);
			}
		}
		return ret;
	}

	private BitSet genNotEqual(Constant c, BitTypes bt) {
		BitSet ret = bt.getEqual();
		if(ret == null){
			ret = genNotEqualNew(c);
		} else {
			ret.flip(0, size);
		}
		return ret;
	}

	private BitSet genEqual(Constant c, BitTypes bt) {
		BitSet ret = bt.getNotEqual();
		if(ret == null){
			ret = genEqualNew(c);
		} else {
			ret.flip(0, size);
		}
		return ret;
	}

	private BitSet genNotSubtype(Constant c, BitTypes bt) {
		BitSet ret = bt.getSubtype();
		if(ret == null){
			ret = genNotSubtypeNew(c);
		} else {
			ret.flip(0, size);
		}
		return ret;
	}

	private BitSet genSubtype(Constant c, BitTypes bt) {
		BitSet ret = bt.getnotSubtype();
		if(ret == null){
			ret = genSubtypeNew(c);
		} else {
			ret.flip(0, size);
		}
		return ret;
	}

	private BitSet genNotEqualNew(Constant c) {
		BitSet ret = genEqualNew(c);
		ret.flip(0, size);
		return ret;
	}

	private BitSet genEqualNew(Constant c) {
		int index = placement.get(c);
		BitSet ret = new BitSet(size);
		ret.set(index);
		return ret;
	}

	private BitSet genNotSubtypeNew(Constant c) {
		BitSet ret = genSubtypeNew(c);
		ret.flip(0, size);
		return ret;
	}

	private BitSet genSubtypeNew(Constant c) {
		BitSet ret = new BitSet(size);
		for(Constant child : dag.getChildren(c)){
			int index = placement.get(child);
			ret.flip(index);
		}
		return ret;
	}
	

}
