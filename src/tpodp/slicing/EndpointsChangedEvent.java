package tpodp.slicing;

import java.util.*;
import tpodp.*;

/**
 * <p>An event to indicate that the endpoint of some intervals has changed due to
 * the introduction of a new type in the hierarchy.</p>
 */
public class EndpointsChangedEvent{
    /**
     * The slice in which the endpoint has moved.
     */
    protected Slice source;
    /**
     * The new value of the endpoint.
     */
    protected Constant newValue;
    /**
     * The constants whose descendant intervals have had their min change.
     */
    protected Set<Constant>minChanged=new HashSet<Constant>();
    /**
     * The constants whose descendant intervals have had their max change.
     */
    protected Set<Constant>maxChanged=new HashSet<Constant>();

    /**
     * Construct an event with the given slice and new value; constants whose
     * descendant intervals have changes are added later.
     * @param source the slice in which the endpoint has moved
     * @param the new value of the endpoint
     */
    public EndpointsChangedEvent(Slice source,Constant newValue){
	this.source=source;
	this.newValue=newValue;
    }

    /**
     * Determine in which slice this event has taken place.
     * @return the slice in which the endpoint has moved
     */
    public Slice getSlice(){
	return source;
    }
    /**
     * Determine where the endpoint has moved.
     * @return the new value of the endpoint
     */
    public Constant getNewValue(){
	return newValue;
    }
    /**
     * Determine which constants have had their descendant interval's minimum
     * change.
     * @return the constants whose descendant intervals have had their min change.
     */
    public Set<Constant>getMinChangedConstants(){
	return Collections.unmodifiableSet(minChanged);
    }
    /**
     * Determine which constants have had their descendant interval's maximum
     * change.
     * @return the constants whose descendant intervals have had their max change.
     */
    public Set<Constant>getMaxChangedConstants(){
	return Collections.unmodifiableSet(maxChanged);
    }

    /**
     * Add a constant that has had its descendant interval's minimum change.
     * @param the constant whose descendant interval has had its min change.
     */
    public void addMinChange(Constant type){
	minChanged.add(type);
    }
    /**
     * Add a constant that has had its descendant interval's maximum change.
     * @param the constant whose descendant interval has had its max change.
     */
    public void addMaxChange(Constant type){
	maxChanged.add(type);
    }
}
