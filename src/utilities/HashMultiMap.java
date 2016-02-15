package utilities;

import java.util.*;

/**
 * <p>An concretization of the <code>MultiMap</code> interface with an underlying
 * <code>HashMap</code> implementation.</p>
 * @author Brady J. Garvin
 * @version 1.0, 2009-12-04
 * @see MultiMap
 * @see java.util.HashMap
 */
public class HashMultiMap<K,V> extends HashMap<K,Set<V> > implements MultiMap<K,V>{
    public Set<V>getNonNull(K key){
	Set<V>values=get(key);
	if(values==null){
	    values=new HashSet<V>();
	    put(key,values);
	}
	return values;
    }

    public boolean putSingle(K key,V value){
	return getNonNull(key).add(value);
    }

}
