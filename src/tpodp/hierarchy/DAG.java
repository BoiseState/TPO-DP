package tpodp.hierarchy;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.jgrapht.DirectedGraph;
import org.jgrapht.graph.DefaultEdge;
import org.jgrapht.graph.SimpleDirectedGraph;
import org.jgrapht.traverse.TopologicalOrderIterator;

import tpodp.Constant;


/**
 * 
 * @author Elena Sherman
 * This class creates a DAG representation of poset
 * By adding constraint type (Constant cont_1 <: Constant const_2)
 * Also it verifies that there is not cycles
 * because the relation has transitive properties.
 *  
 * The most important method is toPQE that converts the 
 * DAG representation of poset to PQE representation of poset
 * via Map<Constant, SliceRecord>
 */

public class DAG {
	
	//element should be stored in a graph
	private SimpleDirectedGraph<Constant, DefaultEdge> poset;
	
	public DAG() {
		poset = new 
		  SimpleDirectedGraph<Constant, DefaultEdge>(DefaultEdge.class);
	}
	
	public Set<DefaultEdge> getRelations() {
		return poset.edgeSet();
	}
	public boolean addRelation(Constant c1, Constant c2) {
		boolean added = false;
		boolean c1Exist = false;
		boolean c2Exist = false;
		// add vertex c1
		c1Exist = !poset.addVertex(c1);
		
		// add vertex c2
		c2Exist = !poset.addVertex(c2);
		
		// some cleaning to the graph - not sure how useful it is,
		// but in general it should make slicing more efficient.
		
		// if 1. edge is not already there and 2. no path between c2 and c1 and 3. visa versa
		// otherwise 1 - redundant, 2 - pollutes graph, 3 - cycle in the graph - exception.
		if (!poset.containsEdge(c2, c1) && !pathExists(c2,c1, new HashSet<Constant>()) 
				&& !pathExists(c1, c2, new HashSet<Constant>())) {
			// check for transitivity if both vertices existed
			if (c1Exist && c2Exist) {
				// 1. remove edges between c2's immediate children
				// that are also descendant of c1.
				
				// finding immediate children of c2
				Set<Constant> c2Children = new HashSet<Constant>();
				for (DefaultEdge edge : poset.outgoingEdgesOf(c2)) {
					c2Children.add(poset.getEdgeTarget(edge));
				}
				// removing (c2, child) edge if child is also a descendant of c1
				for (Constant child : c2Children) {
					if (pathExists(c1, child, new HashSet<Constant>())) {
						poset.removeEdge(c2, child);
					}
				}
				
				
				// 2. Removing edges between c1 and c1's immediate parent
				// that is also a parent of c2
				
				// finding immediate parents of c1
				Set<Constant> c1Parents = new HashSet<Constant>();
				for (DefaultEdge edge : poset.incomingEdgesOf(c1)) {
					c1Parents.add(poset.getEdgeSource(edge));
				}
				// removing (parent, c1) edge if parent is also an ancestor of c2
				for (Constant parent : c1Parents) {
					if (pathExists(parent, c2, new HashSet<Constant>())) {
						poset.removeEdge(parent, c1);
					}
				}
				
			}// end if c1Exist && c2Exist
			
			//since c1 <: c2 => c2 - source vertex, c1, - target vertex
			added = !poset.addEdge(c2, c1).equals(null);
		}
		
		return added;
	}
	
	public boolean isParent (Constant parent, Constant child) {
		return pathExists(parent, child, new HashSet<Constant> ());
	}
	
	/**
	 * creating path from source - effectively checking
	 * if source has <b>this </b> as  a descendant
	 * @param source - the next element to explore
	 * @param visited - the set of elements that have been explored
	 * @return
	 */
	private boolean pathExists (Constant source, Constant target,
			Set<Constant> visited) {
		if (source.equals(target)) {
			return true;
		}
		boolean found = false;
		visited.add(source);
		for (DefaultEdge edge : poset.outgoingEdgesOf(source)) {
			Constant child = poset.getEdgeTarget(edge);
			if (!visited.contains(child)) {
				if (child.equals(target)) {
					found = true;
				} else {
					found = pathExists(child, target, visited);
				}
			}//end if ! visited
			//break if found
			if (found) {
				break;
			}
		}
		return found;
	}
	
	@Override public String toString() {
		return poset.toString();
	}
	
	public boolean hasRelation(Constant c1, Constant c2) {
		return poset.containsEdge(c2, c1);
	}
	
	/**
	 * Traversed poset using backward DFS
	 * @return the set of ancestors of <b>this</b> element
	 */
	public Set<Constant> getAncestors(Constant c1){
		Set<Constant> ancestors = new HashSet<Constant>();
			backwardDFS(ancestors, c1);
		return ancestors;
	}
	
	/**
	 * Populates ancestors parameter
	 * @param ancestors set of ancestors so far
	 * @param el the element to explore
	 */
	private void backwardDFS(Set<Constant> ancestors, Constant el) {
		//add itself to the set
		ancestors.add(el);
		//get the set of incoming edges
		for (DefaultEdge edge : poset.incomingEdgesOf(el)) {
			Constant parent = poset.getEdgeSource(edge);
			//if the parent not has not been explored
			if (! ancestors.contains(parent)) {
				//recursively call - DFS
				backwardDFS(ancestors, parent);
			}
		}
	}
	
	public Set<Constant> getConstants() {
		return poset.vertexSet();
	}

    //BJG (NLZ): this is a hack because I'm under time pressure; will fix
    public SimpleDirectedGraph<Constant, DefaultEdge> getPoset(){
	return poset;
    }
	
	public Constant getSource(DefaultEdge edge) {
		return poset.getEdgeSource(edge);
	}
	
	public Constant getTarget(DefaultEdge edge) {
		return poset.getEdgeTarget(edge);
	}
	
	public ArrayList<Constant>  getTopologicalOrder(){
		TopologicalOrderIterator<Constant, DefaultEdge> toi = 
			new TopologicalOrderIterator<Constant, DefaultEdge>(poset);
		ArrayList<Constant> sortedList = new ArrayList<Constant>();
		while(toi.hasNext()) {
			Constant next = toi.next();
			sortedList.add(next);
		}
		
		return sortedList;
	}
	
	public List<Constant> getReverseToplogicalOrder(){
		List<Constant> reverseTopOrder = new ArrayList<Constant>();
		List<Constant> topOrder = getTopologicalOrder();
		for(int i=topOrder.size()-1; i >= 0; i--){
			reverseTopOrder.add(topOrder.get(i));
		}
		return reverseTopOrder;
	}
	
	/**
	 * reconnect children of from to their new parent to
	 * removes the from vertex and its edges
	 * @param from
	 * @param to
	 */
	public void reconnect(Constant from, Constant to, Set<Constant> reconnectTheseOnly){
		for(DefaultEdge e : poset.outgoingEdgesOf(from)){
			Constant child = poset.getEdgeTarget(e);
			if(reconnectTheseOnly.contains(child)){
				poset.addEdge(to, child);
			}
			
		}
		poset.removeVertex(from); // it also removes the edges
	}
	
	public void removeNotConnected(Constant to){
		Set<Constant> removeSet = new HashSet<Constant>();
		for (Constant c : this.getConstants()){
			if(!this.isParent(to, c)){
				removeSet.add(c);
			}
		}
		poset.removeAllVertices(removeSet);
	}
	

	/**
	 * gets the children of parent including the parent
	 * @param parent
	 * @return children of parent
	 */
	public Set<Constant> getChildren(Constant parent){
		Set<Constant> children = new HashSet<Constant>();
		children.add(parent);
			for(DefaultEdge e : poset.outgoingEdgesOf(parent)){
				Constant child = poset.getEdgeTarget(e);
				children.addAll(getChildren(child)); // call recursively
			}
		return children;
	}
	
	public Constant getConstantByName(String name){
		for(Constant c : poset.vertexSet()) {
			if (c.toString().equals(name)){
				return c;
			}
		}
		return null;
	}
	
	public List<Constant> getAbstractConstants(){
		List<Constant> ret = new ArrayList<Constant>();
		for(Constant c : getConstants()){
			if(c.isAbstract()){
				ret.add(c);
			}
		}
		return ret;
	}
	
	public List<Constant> getConcreteConstants(){
		List<Constant> ret = new ArrayList<Constant>();
		for(Constant c : getConstants()){
			if(c.isConcrete()){
				ret.add(c);
			}
		}
		return ret;
	}
	
	public List<Constant> getFinalConstants(){
		List<Constant> ret = new ArrayList<Constant>();
		for(Constant c : getConstants()){
			if(c.isFinal()){
				ret.add(c);
			}
		}
		return ret;
	}
}
