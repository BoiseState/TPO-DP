package bitvector;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

import tpodp.Constant;
import tpodp.Literal;
import tpodp.Literal.Relation;
import tpodp.hierarchy.DAG;

public class SimpleSetOpt extends SimpleSet {
	private Map<Constant,BitSet> subtype;
	private Map<Constant,BitSet> notSubtype;
	private Map<Constant,BitSet> equals;
	private Map<Constant,BitSet> notEquals;

	public SimpleSetOpt(DAG dag) {
		super(dag);
		subtype = new HashMap<Constant, BitSet>();
		notSubtype = new HashMap<Constant, BitSet>();
		equals = new HashMap<Constant, BitSet>();
		notEquals = new HashMap<Constant, BitSet>();
	}
	
	@Override
	public BitSet getSet(Literal literal){
		BitSet literalBitSet = null;
		Relation rel = literal.getRelation();
		Constant c = literal.getConstant();
		
		if(rel == Relation.SUBTYPE_OF){
			if(literal.isPositive()){
				if(subtype.containsKey(c)){
					literalBitSet = subtype.get(c);
				} else {
					literalBitSet = getSubtype(c);
					subtype.put(c, literalBitSet);
				}
			} else {
				if(notSubtype.containsKey(c)){
					literalBitSet = notSubtype.get(c);
				} else {
					literalBitSet = getnotSubtype(c);
					notSubtype.put(c, literalBitSet);
				}
			}
		} else if (rel == Relation.EQUAL_TO){
			if(literal.isPositive()){
				if(equals.containsKey(c)){
					literalBitSet = equals.get(c);
				} else {
					literalBitSet = getEqual(c);
					equals.put(c, literalBitSet);
				}
			} else {
				if(notEquals.containsKey(c)){
					literalBitSet = notEquals.get(c);
				} else {
					literalBitSet = getNotEqual(c);
					notEquals.put(c, literalBitSet);
				}
			}
		} else {
			System.out.println("Unknown relation");
			System.exit(2);
		}
		
		return literalBitSet;
	}

}
