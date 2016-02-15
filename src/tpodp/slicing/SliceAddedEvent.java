package tpodp.slicing;

import tpodp.*;

/**
 * <p>An event to indicate that a new slice has appeared due to the introduction of
 * a new type in the hierarchy.</p>
 */
public class SliceAddedEvent{
    /**
     * The new slice.
     */
    protected Slice source;
    /**
     * The new slice's sole non-<code>null</code> constant.
     */
    protected Constant value;

    /**
     * Construct an event with the given slice and new value.
     */
    public SliceAddedEvent(Slice source,Constant value){
	this.source=source;
	this.value=value;
    }

    /**
     * Determine which slice has been added.
     * @return the new slice
     */
    public Slice getSlice(){
	return source;
    }
    /**
     * Determine which type was added to establish the new slice.
     * @return the new slice's sole non-<code>null</code> constant.
     */
    public Constant getValue(){
	return value;
    }
}
