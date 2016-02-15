package tpodp.interval;

import java.util.*;


/**
 * <p>A mutable union of disjoint intervals.</p> <p>Lacking anywhere else to
 * document this, we note here the important class invariant that every interval in
 * the union should nonempty.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 * @see interval.Interval
 */
public class IntervalUnion<T>{
    /**
     * The disjoint intervals, sorted in increasing order.
     */
    protected SortedSet<Interval<T> >intervals=
	new TreeSet<Interval<T> >(new DisjointNonemptyIntervalComparator<T>());

    /**
     * Construct an empty union.
     */
    public IntervalUnion(){}
    /**
     * Construct a union consisting of exactly one interval.
     * @param the single member of the union, which is replicated to guard the
     * class from later, external changes to the argument
     */
    public IntervalUnion(Interval<T>interval){
	if(!interval.isEmpty()){
	    intervals.add(new Interval<T>(interval));
	}
    }
    /**
     * Construct a union with the same intervals as in the argument union.
     * @param union the union to deep copy
     */
    public IntervalUnion(IntervalUnion<T>union){
	for(Interval<T>interval:union.intervals){
	    assert !interval.isEmpty();
	    intervals.add(new Interval<T>(interval));
	}
    }

    /**
     * Determine which comparator the constituent intervals are with respect to
     * @return the comparator for comparing elements to the contained intervals,
     * or <code>null</code> if the union is empty, so that it doesn't matter
     */    
    public Comparator<T>getComparator(){
	if(isEmpty()){
	    return null;
	}
	return intervals.iterator().next().getComparator();
    }

    /**
     * Determine if the union contains no elements at all.
     * @return true if and only if the union encloses zero elements
     */
    public boolean isEmpty(){
	//thanks to the class invariant, this is easy
	return intervals.isEmpty();
    }

    /**
     * Modify this union in place so that it contains only objects that are
     * enclosed both by its old set of intervals and the argument. (This operation
     * could be faster with some better support from the Java collections libarary.
     * But for now the extra cost seems to be a nonissue.)
     * @param other the interval that integers must fall in to be retained in the
     * interval union
     * @throws IllegalArgumentException if the intervals are defined with different
     * comparators
     */
    public void intersect(Interval<T>other){
	Comparator<T>comparator=getComparator();
	if(comparator==null){
	    return;
	}
	if(!comparator.equals(other.getComparator())){
	    throw new IllegalArgumentException
		("comparator mismatch: "+comparator+" vs. "+other.getComparator());
	}
	if(other.isEmpty()){
	    intervals.clear();
	    return;
	}
	int state=0;
	for(Iterator<Interval<T> >it=intervals.iterator();it.hasNext();){
	    Interval<T>interval=it.next();
	    assert !interval.isEmpty();
	    switch(state){
	    case 0://before other.min
		if(comparator.compare(interval.getMax(),other.getMin())<=0){
		    it.remove();
		    break;
		}
		//transition to next state
		++state;
		if(comparator.compare(interval.getMin(),other.getMin())<=0){
		    interval.intersect(other);
		    assert !interval.isEmpty();
		    break;//and don't fall through
		}
		//and fall through
	    case 1://between other.min and other.max
		if(comparator.compare(interval.getMax(),other.getMax())<=0){
		    break;
		}
		//transition to next state
		++state;
		if(comparator.compare(interval.getMin(),other.getMax())<0){
		    interval.intersect(other);
		    assert !interval.isEmpty();
		    break;//and don't fall through
		}
		//and fall through
	    case 2://past other.max
		it.remove();
		break;
	    }
	}
    }
    /**
     * Modify this union in place so that it contains only objects that are
     * enclosed by its old set of intervals but not by the argument. (This
     * operation could be faster with some better support from the Java collections
     * library.  But for now the extra cost seems to be a nonissue.)
     * @param other the interval that integers must not fall in to be retained in
     * the interval union
     * @throws IllegalArgumentException if the intervals are defined with different
     * comparators
     */
    public void without(Interval<T>other){
	Comparator<T>comparator=getComparator();
	if(comparator==null){
	    return;
	}
	if(!comparator.equals(other.getComparator())){
	    throw new IllegalArgumentException
		("comparator mismatch: "+comparator+" vs. "+other.getComparator());
	}
	if(other.isEmpty()){
	    return;
	}
	int state=0;
	for(Iterator<Interval<T> >it=intervals.iterator();it.hasNext();){
	    Interval<T>interval=it.next();
	    assert !interval.isEmpty();
	    switch(state){
	    case 0://before other.min
		if(comparator.compare(interval.getMax(),other.getMin())<=0){
		    break;
		}
		//transition to next state
		++state;
		if(comparator.compare(interval.getMin(),other.getMin())<0){
		    if(comparator.compare(interval.getMax(),other.getMax())>0){
			//split interval into two and finish (Note the separation
			//of instantiation and insertion, which keeps us from
			//overwriting needed data and yet avoids the risk of
			//confusing the comparator and misording the intervals)
			Interval<T>extra=new Interval<T>
			    (comparator,other.getMax(),interval.getMax());
			interval.setMax(other.getMin());
			intervals.add(extra);
			assert !interval.isEmpty();
			assert !extra.isEmpty();
			return;
		    }
		    interval.setMax(other.getMin());
		    assert !interval.isEmpty();
		    break;//and don't fall through
		}
		//and fall through
 	    case 1://between other.min and other.max
		if(comparator.compare(interval.getMax(),other.getMax())<=0){
		    it.remove();
		    break;
		}
		if(comparator.compare(interval.getMin(),other.getMax())<0){
		    interval.setMin(other.getMax());
		    assert !interval.isEmpty();
		}
		//nothing more can be changed, so stop now
		return;
	    }
	}
    }

    /**
     * Determine whether another object is equal to this union of intervals.
     * @param other the object with which to compare
     * @return true if and only if other is an interval union with respect to the
     * same comparator and has the same set of objects in its interior
     */
    public boolean equals(Object other){
	if(!(other instanceof IntervalUnion)){
	    return false;
	}
	IntervalUnion cast=(IntervalUnion)other;
	//The call intervals.equals(other.intervals) will resort to the comparator,
	//which will throw an exception when the unions have intervals overlapping
	//only somewhat; instead we do this:
	Iterator otherIterator=cast.intervals.iterator();
	for(Interval<T>interval:intervals){
	    if(!otherIterator.hasNext()){
		return false;
	    }
	    if(!interval.equals(otherIterator.next())){
		return false;
	    }
	}
	return !otherIterator.hasNext();
    }

    /**
     * Determine the hash code of this union such that two equal unions always have
     * the same hash code.
     * @return a hash code that accounts for all of the intervals in this union
     */
    public int hashCode(){
	return intervals.hashCode();
    }

    /**
     * Represent this interval union as a string, for debugging purposes.
     * @return A string encoding of this union intended for human consumption.
     */
    public String toString(){
	return intervals.toString();
    }
}
