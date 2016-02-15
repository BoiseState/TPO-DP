package tpodp.interval;

import java.util.*;


/**
 * <p>An interval comparator that uses the intervals' internal ordering when the
 * intervals are equal or disjoint and complains otherwise.  Note that empty
 * intervals of the form [x,x) still have a position, and therefore could be
 * compared, but we opt to reject this case.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-01-26
 */
public final class DisjointNonemptyIntervalComparator<T> implements Comparator<Interval<T> >{
    /**
     * Find which interval precedes the other, requiring disjointness except in the
     * case of equality.
     * @param left one interval to compare
     * @param right the other to compare
     * @return a negative number if the left interval precedes the right, a
     * positive one for the mirror case, and zero if the two are equal
     * @throws IllegalArgumentException if the intervals are defined with different
     * comparators, or it they overlap without being equal
     */
    public int compare(Interval<T>left,Interval<T>right){
	if(left.isEmpty()){
	    throw new IllegalArgumentException
		("Cannot compare an empty interval (left side)");
	}
	if(right.isEmpty()){
	    throw new IllegalArgumentException
		("Cannot compare an empty interval (right side)");
	}
	Comparator<T>comparator=left.getComparator();
	if(!comparator.equals(right.getComparator())){
	    throw new IllegalArgumentException
		("comparator mismatch: "+comparator+" vs. "+right.getComparator());
	}
	if(comparator.compare(left.max,right.min)<=0){
	    return -1;
	}
	if(comparator.compare(left.min,right.max)>=0){
	    return 1;
	}
	if(left.min==right.min&&left.max==right.max){
	    return 0;
	}
	throw new IllegalArgumentException
	    ("Cannot compare unequal but overlapping intervals");
    }
    /**
     * See if another comparator is equivalent to this one.  Because this class is
     * final and fieldless, this amounts to a type check.
     * @param other the other comparator to check
     * @return true if and only if <code>other</code> is an instance of
     * <code>DisjointNonemptyIntervalComparator</code>
     */
    public boolean equals(Object other){
	return
	    (other!=null)&&
	    other instanceof DisjointNonemptyIntervalComparator;
    }
}
