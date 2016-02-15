package tpodp.interval;

import java.util.*;

/**
 * <p>A mutable total order over a set objects.  The constant <code>null</code> is
 * treated specially; it is part of every <code>TotalOrder</code>, and always
 * succeeds everything else.  Any one total order must never contain more than
 * 2<sup>31</sup>-1 elements, and no more than 2<sup>30</sup>-1 elements may be
 * added at a time.</p>
 * @author Elena Sherman
 * @author Brady J. Garvin
 * @version 1.0, 2010-06-03
 * @see <a href="http://portal.acm.org/citation.cfm?id=28434">Dietz and Sleator,
 * 1987</a>
 */
public class TotalOrder<T> implements Iterable<T>,Comparator<T>{
    /**
     * <p>The bookkeeping information associated with a single element in a
     * <code>TotalOrder</code>: it's value, location, predecessor, and
     * successor.</p>
     * @author Elena Sherman
     * @author Brady J. Garvin
     * @version 1.0, 2010-06-03
     * @see <a href="http://portal.acm.org/citation.cfm?id=28434">Dietz and
     * Sleator, 1987</a>
     */
    private static class TotalOrderRecord<T>{
	/**
	 * The location of this element in the cyclic quotient group Z/(2^{64})Z.
	 * This location is not meaningful by itself, but only in comparison to a
	 * point of reference: the (unsigned) difference between this value and the
	 * reference point yields our location in the reversed (linear) total
	 * order.  For instance, suppose element A has cyclicPosition=4 and element
	 * B has cyclicPosition=9.  If the reference point is 12, B comes before A
	 * in the order, because it will take fewer decrement operations to reach 9
	 * from 12 than to reach 4 from 12.  But if the reference point is 5, A
	 * precedes B; to get to 9 from 5 we must decrement all the way through the
	 * negatives, to overflow, and past.
	 */
	protected long cyclicPosition;

	/**
	 * The object that this records as an element of the total order.
	 */
	protected T element;

	/**
	 * The record that immediately precedes this one in the total order.
	 */
	protected TotalOrderRecord<T>predecessor;

	/**
	 * The record that immediately follow this one in the total order.
	 */
	protected TotalOrderRecord<T>successor;

	/**
	 * Construct a record for the null element, which is used to represent the
	 * reference point for <code>cyclicPosition</code>s.
	 */
	protected TotalOrderRecord(){
	    cyclicPosition=0;
	    element=null;
	    predecessor=this;
	    successor=this;
	}

	/**
	 * Construct a record by specifying the values of its members.  Note that
	 * this constructor does not modify other records, in particular that
	 * <code>predecessor.successor</code> and
	 * <code>successor.predecessor</code> will not be set to <code>this</code>.
	 * @param cyclicPosition the location of this element in the cyclic
	 * quotient group Z/(2^{64})Z
	 * @param element the object that this record shall represent
	 * @param predecessor the record that immediately follows this one
	 * @param successor the record that immediately precedes this one
	 */
	protected TotalOrderRecord(long cyclicPosition,
				   T element,
				   TotalOrderRecord<T>predecessor,
				   TotalOrderRecord<T>successor){
	    this.cyclicPosition=cyclicPosition;
	    this.element=element;
	    this.predecessor=predecessor;
	    this.successor=successor;
	}

	/**
	 * Perform the minimum amount of updating so that the underlying circular
	 * linked list of records skips over <code>this</code>.  Thus, two links
	 * are collapsed into one.
	 */
	protected void collapse(){
	    predecessor.successor=successor;
	    successor.predecessor=predecessor;
	}
    } // end of the inner class

    /**
     * A convenience map for finding a record containing a given element, so that
     * clients can pass elements of the total order rather than their corresponding
     * records.
     */
    protected Map<T,TotalOrderRecord<T> >records=
	new HashMap<T,TotalOrderRecord<T> >();

    /**
     * Construct an empty total order.
     */
    public TotalOrder(){
	records.put(null,new TotalOrderRecord<T>());
    }

    /**
     * Divide the difference between two cyclic positions into a number of
     * intervals.  More specifically, divide a long by an int, treating the long as
     * if it were unsigned, and as 2<sup>64</sup> if it is zero.
     * @param difference the difference of two cyclic positions
     * @param divisor the number of intervals to split that difference into
     * @return the floored difference between cyclic positions if
     * <code>divisor-1</code> elements were distributed evenly between the two
     * positions that were subtracted
     */
    protected long divideDifference(long difference,long divisor){
	if(divisor<2){
	    throw new IllegalArgumentException("divisor "+divisor+" is not >=2");
	}
	long halfDifference;
	if(difference==0){
	    //Special case because binary 100000... is negative
	    halfDifference=Long.MIN_VALUE;
	    if((divisor&1)==0){
		return -(halfDifference/(divisor>>>1));
	    }
	    long negatedResult=(halfDifference/divisor)<<1;
	    boolean extraspace=(negatedResult+1)*divisor<0;
	    return -negatedResult+(extraspace?1:0);
	}
	halfDifference=(difference>>>1);
	if((divisor&1)==0){
	    return halfDifference/(divisor>>>1);
	}
	long result=(halfDifference/divisor)<<1;
	boolean extraspace=(difference-(result+1)*divisor)>=0;
	return result+(extraspace?1:0);
    }

    /**
     * This is 110000... in binary, a convenience constant for checking whether
     * <code>makeRoomBefore</code> has hit a case where it will make mistakes and
     * possibly infinite loop.
     */
    protected final static long THRESHOLD=Long.MIN_VALUE>>1;
    /**
     * Increase the available cyclic positions before the given record in an
     * asymptotically efficient way.  This should only be called when there is no
     * room between the given position and its predecessor.
     * @param the element to make room before
     * @return the amount of room created, namely the difference between
     * <code>position.predecessor.cyclicPosition<code> and
     * <code>position.cyclicPosition</code>
     */
    protected long makeRoomBefore(TotalOrderRecord<T>position){
	long base=position.cyclicPosition;
	int numberOfUpdatesPlusOne=2;
	TotalOrderRecord<T>
	    i=position.predecessor,
	    j=i.predecessor;
	//If this fails, we've don't have enough bits in a long.
	assert (Long.MIN_VALUE+i.cyclicPosition-base)<=THRESHOLD;
	//See the paper by Dietz and Sleator for an in-depth explanation of this
	//loop.  Rather than using indices, we are making i and j pointers to
	//records.
	while((j.cyclicPosition-base)<=4*(i.cyclicPosition-base)){
	    i=i.predecessor;
	    if(j!=position){
		j=j.predecessor;
		++numberOfUpdatesPlusOne;
		if(j!=position){
		    j=j.predecessor;
		    ++numberOfUpdatesPlusOne;
		}
	    }
	    //same assertion as above
	    assert (Long.MIN_VALUE+i.cyclicPosition-base)<=THRESHOLD;
	}
	//Evenly space everything that we've decided to move.
	long
	    cyclicPosition=position.cyclicPosition,
	    delta=divideDifference(j.cyclicPosition-cyclicPosition,
				   numberOfUpdatesPlusOne);
	for(TotalOrderRecord<T>update=position.predecessor;update!=j;
	    update=update.predecessor){
	    cyclicPosition+=delta;
	    update.cyclicPosition=cyclicPosition;
	}
	return delta;
    }

    /**
     * Determine whether an object appears in the total order.
     * @return true if the element is comparable under the order.
     */
    public boolean contains(T element){
	return records.containsKey(element);
    }

    /**
     * Add an element to the total order at a given location.
     * @param addition the element to add, which must not already be in the total
     * order
     * @param position the element immediately before which the addition will
     * appear; recall that <code>null</code> is always the last element
     * @throws IllegalStateException if <code>addition</code> is already in the
     * order
     * @throws NoSuchElementException if <code>position</code> is not in the order
     */
    public void add(T addition,T position){
	if(records.containsKey(addition)){
	    throw new IllegalStateException(addition+" is already in the order");
	}
	TotalOrderRecord<T>successor=records.get(position);
	if(successor==null){
	    throw new NoSuchElementException("position "+position);
	}
	TotalOrderRecord<T>predecessor=successor.predecessor;
	long difference=predecessor.cyclicPosition-successor.cyclicPosition;
	if(difference==1){
	    difference=makeRoomBefore(successor);
	}
	TotalOrderRecord<T>record=new TotalOrderRecord<T>
	    (successor.cyclicPosition+divideDifference(difference,2),
	     addition,predecessor,successor);
	records.put(addition,record);
	predecessor.successor=record;
	successor.predecessor=record;
    }

    /**
     * Add a list of elements to the total order at a given location.
     * @param additions the elements to add, in order, which must not already be
     * present, and which must not be duplicated
     * @param position the element immediately before which the additions will
     * appear; recall that <code>null</code> is always the last element
     * @throws IllegalArgumentException if the <code>additions</code> contain any
     * element more than once
     * @throws IllegalStateException if any element in <code>additions</code> is
     * already in the order
     * @throws NoSuchElementException if <code>position</code> is not in the order
     */
    public void addAll(List<T>additions,T position){
	if(additions.isEmpty()){
	    return;
	}
	Set<T>seen=new HashSet<T>();
	for(T addition:additions){
	    if(seen.contains(addition)){
		throw new IllegalArgumentException
		    (addition+" appears more than once in the additions");
	    }
	    if(records.containsKey(addition)){
		throw new IllegalStateException
		    (addition+" is already in the order");
	    }
	    seen.add(addition);
	}
	TotalOrderRecord<T>successor=records.get(position);
	if(successor==null){
	    throw new NoSuchElementException("position "+position);
	}
	TotalOrderRecord<T>predecessor=successor.predecessor;
	long difference=predecessor.cyclicPosition-successor.cyclicPosition;
	//If there is not enough room, place what we can, make room, and try again.
	if(difference>0&&difference<=additions.size()){
	    TotalOrderRecord<T>record=successor;
	    long base=record.cyclicPosition+additions.size();
	    for(int i=additions.size(),limit=i-(int)difference;(--i)>limit;){
		T addition=additions.get(i);
		record=new TotalOrderRecord<T>
		    (base-i,addition,predecessor,successor);
		records.put(addition,record);
		successor.predecessor=record;
		successor=record;
	    }
	    predecessor.successor=record;
	    makeRoomBefore(record);
	    addAll(additions.subList(0,additions.size()+1-(int)difference),
		   record.element);
	    return;
	}
	TotalOrderRecord<T>record=null;
	long
	    cyclicPosition=predecessor.cyclicPosition,
	    delta=divideDifference(difference,additions.size()+1);
	for(T addition:additions){
	    cyclicPosition-=delta;
	    record=new TotalOrderRecord<T>
		(cyclicPosition,addition,predecessor,successor);
	    records.put(addition,record);
	    predecessor.successor=record;
	    predecessor=record;
	}
	successor.predecessor=record;
    }

    /**
     * Remove an element from the total order.
     * @param removal the element to make incomparable under this order
     * @return true if the element was removed, false if it was not found
     * @throws IllegalArgumentException if the removal is <code>null</code>;
     * <code>null</code> must always be the last element of the total order
     */
    public boolean remove(T removal){
	if(removal==null){
	    throw new IllegalArgumentException();
	}
	TotalOrderRecord<T>record=records.remove(removal);
	if(record==null){
	    return false;
	}
	record.collapse();
	return true;
    }

    /**
     * @param left an element to compare
     * @param right another element to compare
     * @return a negative number if <code>left</code> precedes <code>right</code>,
     * a positive number in the opposite case, and zero if the arguments are the
     * same
     * @throws NoSuchElementException if any argument is not an element of the
     * order
     */
    public int compare(T left,T right){
	TotalOrderRecord<T>
	    root=records.get(null),
	    leftRecord=records.get(left),
	    rightRecord=records.get(right);
	if(leftRecord==null){
	    throw new NoSuchElementException("left "+left);
	}
	if(rightRecord==null){
	    throw new NoSuchElementException("right "+right);
	}
	long
	    leftPosition=(Long.MIN_VALUE+
			  leftRecord.cyclicPosition-root.cyclicPosition),
	    rightPosition=(Long.MIN_VALUE+
			   rightRecord.cyclicPosition-root.cyclicPosition);
	//be careful about overflow; don't use leftPosition-rightPosition
	if(leftPosition<rightPosition){
	    return 1;
	}
	if(rightPosition<leftPosition){
	    return -1;
	}
	return 0;
    }

    /**
     * <p>An iterator over the elements of a <code>TotalOrder</code>.</p>
     * @author Elena Sherman
     * @author Brady J. Garvin
     * @version 1.0, 2010-06-04
     */
    protected class TotalOrderIterator implements Iterator<T>{
	/**
	 * The next record whose element will be returned.
	 */
	protected TotalOrderRecord<T>next;
	/**
	 * The record whose element has already been returned, and which may be
	 * removed.
	 */
	protected TotalOrderRecord<T>last;

	/**
	 * Construct an iterator that will return the given record first.
	 * @param first the record to begin the iteration at
	 */
	public TotalOrderIterator(TotalOrderRecord<T>first){
	    next=first;
	    last=null;
	}

	//inherit Javadoc
	public boolean hasNext(){
	    return next.element!=null;
	}

	//inherit Javadoc
	public T next(){
	    T ret=next.element;
	    if(ret==null){
		throw new NoSuchElementException();
	    }
	    last=next;
	    next=next.successor;
	    return ret;
	}

	//inherit Javadoc
	public void remove(){
	    if(last==null){
		throw new IllegalStateException();
	    }
	    records.remove(last.element);
	    last.collapse();
	}
    }

    /**
     * Construct an iterator over the non-null elements of the total order.
     * @return an iterator starting with the first non-null element and ending with
     * the last
     */
    public Iterator<T>iterator(){
	return new TotalOrderIterator(records.get(null).successor);
    }

    /**
     * Construct an iterator over the non-null elements of the total order,
     * skipping until the given position.
     * @param position the first element to return; preceding elements are skipped
     * @return an iterator starting with the give element and ending with the last
     * @throws NoSuchElementException if the argument is not in the order
     */
    public Iterator<T>iterator(T position){
	TotalOrderRecord<T>first=records.get(position);
	if(first==null){
	    throw new NoSuchElementException("position "+position);
	}
	return new TotalOrderIterator(first);
    }

    /**
     * Represent this total order as a string, for debugging purposes.
     * @return A string encoding of this order intended for human consumption, of
     * the form <code>[</code>(first element)<code>-&gt;</code>(second
     * element)<code>-&gt;</code>etc.<code>-&gt;null]<code>
     */
    public String toString(){
	StringBuilder ret=new StringBuilder();
	ret.append("[");
	for(T t:this){
	    ret.append(t).append("->");
	}
	ret.append("null]");
	return ret.toString();
    }
}
