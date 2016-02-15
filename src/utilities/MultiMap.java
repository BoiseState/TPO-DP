package utilities;

import java.util.*;

/**
 * <p>An extension of the <code>Map</code> interface to guarantee some convenience
 * operations when the value type is a <code>Set</code>.</p>
 * @author Brady J. Garvin
 * @version 1.0, 2009-12-04
 * @see java.util.Map
 */
public interface MultiMap<K,V> extends Map<K,Set<V> >{
    public Set<V>getNonNull(K key);
    public boolean putSingle(K key,V value);
}
