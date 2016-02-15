package tpodp.hierarchy;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import tpodp.Constant;
import tpodp.slicing.Slicing;

/**
 * 
 * @author Elena Sherman
 * @author Brady J. Garvin
 * This class reads hierarchy from the predefined format
 * and creates DAG.
 * Format:
 * java.util.ConcreteClass, c
 * java.lang.AbstractClass, a
 * java.lang.Interface, a
 * ...
 * edges
 * java.util.ConcreteClass, java.lang.Interface
 * java.util.ConcreteClass, java.lang.AstractClass
 * ...
 */
public class DAGReader {
	public DAG dag;
	public Map<String, Constant> constantsByName;
	
	public DAGReader(String fileName) {
		dag = new DAG();
		constantsByName = new HashMap<String,Constant>();
		try {
			FileInputStream fstream = new FileInputStream(fileName);
			DataInputStream in = new DataInputStream(fstream);
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String line;
			boolean readVertices = true;
			//Read file line by line
			while((line = br.readLine()) != null) {
				//System.out.println("r " + line);
				if (line.contentEquals("edges")) {
					readVertices = false;
					continue;
				}
				if (readVertices) {
					String[] nameType = line.split(",");
					boolean isConcrete = !nameType[1].trim().equals("a");
					boolean isExtensible = !nameType[1].trim().equals("f");
					Constant c = new Constant(nameType[0].trim(), isConcrete, isExtensible);
					constantsByName.put(c.toString(), c);
				} else {
					// entering edges = relations to the DAG
					String[] relation = line.split(",");
					Constant child = constantsByName.get(relation[0].trim());
					Constant parent = constantsByName.get(relation[1].trim());
					dag.addRelation(child, parent);
				}
			}
		} catch (IOException e) {
			System.out.println("Error in I/O" + e.getMessage());
		}
		
	}
	
	/**
	 * 
	 * @return DAG of the read hierachy
	 */
	public DAG getDAG() {
		return dag;
	}
	
	//populate Slicing object
	public void populate(Slicing sl){
		for( Constant c : dag.getTopologicalOrder()){
			Set<Constant> s = dag.getAncestors(c);
			s.remove(c);
			sl.add(c, s);
		}
	}
	
}
