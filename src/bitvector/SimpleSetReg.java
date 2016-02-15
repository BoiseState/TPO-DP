package bitvector;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

import tpodp.Literal;
import tpodp.Constant;
import tpodp.Literal.Relation;
import tpodp.hierarchy.DAG;

/**
 * This class pre-computes 4 possible sets for
 * each of the hierarchy types
 * @author esherman
 *
 */
public class SimpleSetReg extends SimpleSet {
	
	private Map<Constant,BitSet> subtype;
	private Map<Constant,BitSet> notSubtype;
	private Map<Constant,BitSet> equals;
	private Map<Constant,BitSet> notEquals;
	
	

	public SimpleSetReg(DAG dag) {
		super(dag);
		subtype = new HashMap<Constant, BitSet>();
		notSubtype = new HashMap<Constant, BitSet>();
		equals = new HashMap<Constant, BitSet>();
		notEquals = new HashMap<Constant, BitSet>();
		//populate sets right away
		long timestamp=System.currentTimeMillis();
		for(Constant c : dag.getTopologicalOrder()){
			subtype.put(c, this.getSubtype(c));
			notSubtype.put(c, this.getnotSubtype(c));
			equals.put(c, this.getEqual(c));
			notEquals.put(c, this.getNotEqual(c));
		}
		
		System.err.println("Create Basic Set: "+
				   (System.currentTimeMillis()-timestamp)+
				   "ms");
	}
	
	@Override
	public BitSet getSet(Literal literal){
		BitSet literalBitSet = null;
		Relation rel = literal.getRelation();
		Constant c = literal.getConstant();
		
		if(rel == Relation.SUBTYPE_OF){
			if(literal.isPositive()){
				literalBitSet = subtype.get(c);
			} else {
				literalBitSet = notSubtype.get(c);
			}
		} else if (rel == Relation.EQUAL_TO){
			if(literal.isPositive()){
				literalBitSet = equals.get(c);
			} else {
				literalBitSet = notEquals.get(c);
			}
		} else {
			System.out.println("Unknown relation");
			System.exit(2);
		}
		
		return literalBitSet;
	}

}
