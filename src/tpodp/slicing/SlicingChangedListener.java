package tpodp.slicing;

import java.util.*;

/**
 * <p>An listener for changes to a hierarchy encoded in a <code>Slicing</code>.</p>
 * @see Slicing
 */
public interface SlicingChangedListener extends EventListener{
    /**
     * A new slice has appeared.
     * @param event A description of the new addition.
     */
    public void sliceAdded(SliceAddedEvent event);
    /**
     * Some descendant intervals have had their endpoint change.
     * @param event A description of the endpoint updates.
     */
    public void endpointsChanged(EndpointsChangedEvent event);
}
