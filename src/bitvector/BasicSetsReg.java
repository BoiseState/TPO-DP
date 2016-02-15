package bitvector;

import tpodp.Constant;
import tpodp.hierarchy.DAG;

public class BasicSetsReg extends BasicSets {

	public BasicSetsReg(DAG dag) {
		super(dag);
		// in regular we populate basicSets in the beginning
		long timestamp=System.currentTimeMillis();
		for(Constant c : dag.getTopologicalOrder()){
			basicSets.put(c, generateTypes(c));
		}
		
		System.err.println("Create Basic Set: "+
				   (System.currentTimeMillis()-timestamp)+
				   "ms");
	}
	
	
}
