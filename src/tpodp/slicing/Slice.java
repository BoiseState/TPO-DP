package tpodp.slicing;

import java.util.*;

import tpodp.*;
import tpodp.interval.*;

/**
 * <p>All of the bookkeeping information associated with a slice: the order of the
 * types, the descendent intervals, and the lambda counts that govern insertion of
 * new types.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-06-09
 */
public class Slice{
    /**
     * The ordering of types within the slice.
     */
    protected TotalOrder<Constant>order=new TotalOrder<Constant>();
    /**
     * The intervals that describe each constant's descendants in this slice.  That
     * is, <code>descendentIntervals.get(x)</code> encloses <code>y</code> if and
     * only if <code>y</code> is a descendant of <code>x</code>.
     */
    protected Map<Constant,Interval<Constant> >descendentIntervals=
	new HashMap<Constant,Interval<Constant> >();
    /**
     * For each constant in the slice, the number of its ancestors who do not have
     * that constant as the min of their descendant interval.  These counts are
     * used to speed up the checks for legal insertion points.
     */
    protected Map<Constant,Integer>lambdas=new HashMap<Constant,Integer>();

    /**
     * Construct a slice with a single element.
     * @param type the element of the new slice
     * @param ancestors its ancestors
     */
    public Slice(Constant type,Set<Constant>ancestors){
	order.add(type,null);
	descendentIntervals.put(type,new Interval<Constant>(order,type,null));
	for(Constant ancestor:ancestors){
	    descendentIntervals.put
		(ancestor,new Interval<Constant>(order,type,null));
	}
	lambdas.put(type,0);
	lambdas.put(null,0);
    }
    
    /**
     * Add a type to the slice at a given position, possibly changing the endpoints
     * of some descendant intervals.
     * @param type the type to add to the slice
     * @param position a type already in the slice before which the new type will
     * be placed, <code>null</code> if the type should be placed at the end of the
     * slice
     * @param ancestors the new type's ancestors
     * @return the event for the endpoint changes, though there might be none
     */
    protected EndpointsChangedEvent add(Constant type,Constant position,Set<Constant>ancestors){
	EndpointsChangedEvent event=new EndpointsChangedEvent(this,type);
	order.add(type,position);
	int typeLambda=lambdas.get(position),positionLambda=typeLambda;
	Set<Constant>reducedAncestors=new HashSet<Constant>(ancestors);
	for(Map.Entry<Constant,Interval<Constant> >entry:
		descendentIntervals.entrySet()){
	    Interval<Constant>value=entry.getValue();
	    if(reducedAncestors.remove(entry.getKey())){
		if(value.getMin()==position){
		    ++positionLambda;
		    value.setMin(type);
		    event.addMinChange(entry.getKey());
		}
		if(value.getMax()==position){
		    ++typeLambda;
		}
	    }else if(value.getMax()==position){
		value.setMax(type);
		event.addMaxChange(entry.getKey());
	    }
	}
	descendentIntervals.put(type,new Interval<Constant>(order,type,position));
	for(Constant ancestor:reducedAncestors){
	    descendentIntervals.put
		(ancestor,new Interval<Constant>(order,type,position));
	}
	lambdas.put(type,typeLambda);
	lambdas.put(position,positionLambda);
	return event;
    }

    /**
     * Render the entire slice as single interval.
     * @return an interval that contains every type currently in the slice
     */
    public Interval<Constant>asInterval(){
	return new Interval<Constant>(order,order.iterator().next(),null);
    }

    /**
     * Obtain an interval which contains all of the elements of the slice that are
     * equal to the argument.
     * @param constant the type that all constants in the interval must be equal to
     * @return an interval comprising either exactly the type passed in or no types
     * at all
     */
    public Interval<Constant>getEqualityInterval(Constant constant){
	if(order.contains(constant)){
	    Iterator<Constant>succession=order.iterator(constant);
	    //break this into three lines for clarity
	    Constant min=succession.next();
	    Constant max=succession.hasNext()?succession.next():null;
	    return new Interval<Constant>(order,min,max);
	}
	return new Interval<Constant>(order,null,null);
    }
    /**
     * Obtain an interval which contains all of the elements of the slice that are
     * descended from the argument.
     * @param constant the type that all constants in the interval must descend from
     * @return an interval comprising every element that both is in the slice and
     * has <code>constant</code> as an ancestor
     */
    public Interval<Constant>getDescendantInterval(Constant constant){
	Interval<Constant>ret=descendentIntervals.get(constant);
	if(ret==null){
	    return new Interval<Constant>(order,null,null);
	}
	return ret;
    }

    /**
     * Attempt to add a type to the slice, possibly changing the endpoints
     * of some descendant intervals.
     * @param type the type to add to the slice
     * @param ancestors the new type's ancestors
     * @return if the addition was successful, the event for the endpoint changes,
     * though there might be none; if the addition failed, <code>null</code>
     */
    public EndpointsChangedEvent add(Constant type,Set<Constant>ancestors){
	Interval<Constant>common=asInterval();
	for(Constant ancestor:ancestors){
	    Interval<Constant>mask=descendentIntervals.get(ancestor);
	    if(mask!=null){
	    	common.intersect(mask);
	    }
	}
	//empty is okay, as long as we still have location
	if(order.compare(common.getMin(),common.getMax())>0){
	    return null;
	}
	int surroundMin=0,surroundMax=0;
	for(Constant ancestor:ancestors){
	    Interval<Constant>range=descendentIntervals.get(ancestor);
	    if(range!=null){
		if(order.compare(range.getMin(),common.getMin())<0&&
		   order.compare(range.getMax(),common.getMin())>0){
		    ++surroundMin;
		}
		if(order.compare(range.getMin(),common.getMax())<0&&
		   order.compare(range.getMax(),common.getMax())>0){
		    ++surroundMax;
		}
	    }
	}
	if(lambdas.get(common.getMin())==surroundMin){
	    return add(type,common.getMin(),ancestors);
	}
	if(lambdas.get(common.getMax())==surroundMax){
	    return add(type,common.getMax(),ancestors);
	}
	////fast slicing: don't check between min and max
	return null;
    }

    /**
     * Present this slice as a string for debugging purposes.
     * @return the order of elements, "/", and then the descendant intervals
     */
    public String toString(){
	return order+"/"+descendentIntervals;
    }
    
    public TotalOrder<Constant> getOrder(){
    	return order;
    }
}
