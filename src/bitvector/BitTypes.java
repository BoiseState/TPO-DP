package bitvector;

import java.util.BitSet;

public class BitTypes {
	BitSet equal;
	BitSet notEqual;
	BitSet subtype;
	BitSet notSubtype;
	
	public BitTypes(BitSet eq, BitSet notEq, BitSet sub, BitSet notSub){
		equal = eq;
		notEqual = notEq;
		subtype = sub;
		notSubtype = notSub;
	}
	
	public BitSet getEqual(){
		if(equal == null) return null;
		return (BitSet) equal.clone();
	}
	
	public BitSet getNotEqual(){
		if(notEqual == null) return null;
		return (BitSet) notEqual.clone();
	}
	
	public BitSet getSubtype(){
		if(subtype == null) return null;
		return (BitSet) subtype.clone();
	}

	public BitSet getnotSubtype(){
		if(notSubtype == null) return null;
		return (BitSet) notSubtype.clone();
	}
	
	@Override
	public String toString(){
		String s = "\n eq: ";
		return s+equal + "\nneq"+notEqual + "\nsub" + subtype + "\nnsub" + notSubtype + "\n";
	}
}
