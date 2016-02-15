package tpodp.interval;

import java.util.*;

/**
 * <p>A mutable interval over objects.  By convention the interval is
 * [<code>min</code>..<code>max</code>); <code>min</code> is included, but
 * <code>max</code> is not.  Empty intervals can be specified by a minimum that is
 * greater than or equal to the maximum.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public class Interval<T>{
    /**
     * The means for determining which of two objects is lower.
     */
    protected Comparator<T>comparator;
    /**
     * The lowest object that is included in the interval, provided that the
     * interval is nonempty.
     */
    protected T min;
    /**
     * The highest object that is included in the interval, provided that the
     * interval is nonempty.
     */
    protected T max;

    /**
     * Construct an interval with the given bounds, or an empty interval if
     * <code>min&gt;=max</code>.
     * @param comparator the order of the elements
     * @param min the first object in the interval
     * @param max the first object after <code>min</code> not in the interval
     */
    public Interval(Comparator<T>comparator,T min,T max){
	if(comparator==null){
	    throw new NullPointerException("comparator");
	}
	this.comparator=comparator;
	this.min=min;
	this.max=max;
    }
    /**
     * Construct a copy of the given interval.
     * @other the interval to copy
     */
    public Interval(Interval<T>other){
	comparator=other.comparator;
	set(other);
    }

    /**
     * Determine which comparator this interval is with respect to
     * @return the comparator for comparing elements to this interval's min and max
     */
    public Comparator<T>getComparator(){
	return comparator;
    }

    /**
     * Determine if the interval contains no objects.
     * @return true if and only if <code>min&gt;=max</code> according to the
     * comparator
     */
    public boolean isEmpty(){
	return comparator.compare(min,max)>=0;
    }
    /**
     * Get the lower bound on the interval.  This is usually only meaningful if the
     * interval is nonempty.
     * @return the stored minimum
     */
    public T getMin(){
	return min;
    }
    /**
     * Get the upper bound on the interval.  This is usually only meaningful if the
     * interval is nonempty.
     * @return the stored maximum
     */
    public T getMax(){
	return max;
    }

    /**
     * Change the lower bound on the interval.
     * @param min the new lower bound.  The interval becomes empty if this value
     * meets or exceeds the stored upper bound.
     */
    public void setMin(T min){
	this.min=min;
    }
    /**
     * Change the upper bound on the interval.
     * @param max the new upper bound.  The interval becomes empty if this value
     * falls short of or only just attains the stored lower bound.
     */
    public void setMax(T max){
	this.max=max;
    }
    /**
     * Set this interval to be identical to the given one.  Note that this is a
     * stronger condition than making this interval equal&emdash;though all empty
     * intervals are equal they have no unique representation.
     * @param other the interval to become identical to
     * @throws IllegalArgumentException if <code>this</code> and <code>other</code>
     * are intervals with respect to different comparators
     */
    public void set(Interval<T>other){
	if(!comparator.equals(other.comparator)){
	    throw new IllegalArgumentException
		("comparator mismatch: "+comparator+" vs. "+other.comparator);
	}
	this.min=other.min;
	this.max=other.max;
    }

    /**
     * Restrict the range included by this interval to the objects that also are
     * included by the parameter.
     * @param other the interval that objects must fall inside to remain in this
     * interval
     */
    public void intersect(Interval<T>other){
	if(!comparator.equals(other.comparator)){
	    throw new IllegalArgumentException
		("comparator mismatch: "+comparator+" vs. "+other.comparator);
	}
	min=comparator.compare(min,other.min)>0?min:other.min;
	max=comparator.compare(max,other.max)<0?max:other.max;
    }

    /**
     * Determine whether another object is equal to this interval.
     * @param other the object with which to compare
     * @return true if and only if other is an interval with respect to the same
     * comparator and has the same set of objects in its interior
     */
    public boolean equals(Object other){
	if(!(other instanceof Interval)){
	    return false;
	}
	Interval cast=(Interval)other;
	if(!comparator.equals(cast.comparator)){
	    return false;
	}
	if(isEmpty()&&cast.isEmpty()){
	    return true;
	}
	return
	    (min==cast.min || (min!=null && min.equals(cast.min)))&&
	    (max==cast.max || (max!=null && max.equals(cast.max)));
    }

    /**
     * Determine the hash code of this interval such that two equal intervals
     * always have the same hash code.
     * @return a hash code that accounts for the comparator, min, and max of this
     * interval
     */
    public int hashCode(){
	if(isEmpty()){
	    return comparator.hashCode();
	}
	return comparator.hashCode()+min.hashCode()+2*max.hashCode();
    }

    /**
     * Represent this interval as a string, for debugging purposes.
     * @return A string encoding of this interval intended for human consumption.
     * <code>..<code> is used to indicate a range and <code>[empty)</code> stands
     * for an empty interval.
     */
    public String toString(){
	if(isEmpty()){
	    return "[empty)";
	}
	return "["+min+".."+max+")";
    }
}
