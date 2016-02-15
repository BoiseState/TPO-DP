package bitvector;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

import tpodp.Constant;
import tpodp.Literal;
import tpodp.Variable;
import tpodp.Literal.Relation;
import tpodp.driver.ConstraintOperation;
import tpodp.hierarchy.DAGReader;

public class Driver {
	protected static String problemName;
	protected static MultiVariableBitSolver solver;
	protected static List<Variable>x=new ArrayList<Variable>();
	protected static List<Constant>constants;
	protected static DAGReader reader;
	protected static SimpleSet basicSets;
	
	protected static List<ConstraintOperation>readSMTCSuffix(String filename) throws IOException{
		List<ConstraintOperation>ret=new ArrayList<ConstraintOperation>();
		File file=new File(filename);
		//System.out.println(filename + " " + file.exists());
		if(!file.exists()){
		    return ret;
		}
		InputStream in=null;
		try{
		    in=new FileInputStream(file);
		    BufferedReader reader=new BufferedReader(new InputStreamReader(in));
		    String line=null;
		    int state=0;
		    //int constrCount = 1;
		    Stack<Literal>constraints=new Stack<Literal>();
		    while((line=reader.readLine())!=null){
		    	//System.out.println(line);
			switch(state){
			case 0:
			    if(line.equals(";symbolic execution tree")){
				++state;
			    }
			    break;
			case 1:
			    if(line.equals("(push)")){
				//nop
			    }else if(line.equals("(pop)")){
				Literal constraint=constraints.pop();
				ConstraintOperation operation=
				    new ConstraintOperation(false,constraint);
				ret.add(operation);
			    }else if(!line.equals("(check-sat)")){
			    	
			    	
				Literal constraint=convert(line);
				ConstraintOperation operation=
				    new ConstraintOperation(true,constraint);
				constraints.push(constraint);
				ret.add(operation);
				//if(line.contains("x0") && constrCount <= 16911)
		    	//	System.out.println(constrCount + " " +line + " constr " + constraint + " oper " + operation);
				//constrCount++;
			    }
			    break;
			}
		    }
		}finally{
		    if(in!=null){
			in.close();
		    }
		}
		return ret;
	    }

	 protected static Literal convert(String line){
			boolean positive=
			    !line.startsWith("(assert (not");
			boolean subtype=
			    line.startsWith("(assert (not (le")||
			    line.startsWith("(assert (le");
			int start=line.indexOf('x')+1,
			    mid=line.indexOf(' ',start),
			    end=line.indexOf(')',mid);
			int index=Integer.parseInt(line.substring(start,mid));
			while(x.size()<=index){
			    x.add(new Variable("x"+x.size()));
			}
			Variable variable=x.get(index);
			String constantName=line.substring(mid+1,end);
			Constant constant=null;
			for(Constant candidate:constants){
			    if(constantName.equals(candidate.toString())){
				constant=candidate;
			    }
			}
			
			//if constant is final then subtype should be changed to false
			//because the only possible type is the final one therefore
			//it shall be constant. It is needed for the open hierarchy to operate correctly
			if (constant.isFinal()){
				subtype = false;
			}
			
			Literal newLit = new Literal
		    (positive,
		   	     variable,
		   	     subtype?
		   	     Relation.SUBTYPE_OF:
		   	     Relation.EQUAL_TO,
		   	     constant);
			//System.out.println(newLit);
			return newLit;
		    }
	
	 protected static void processOptions(String[]args){
			if(args.length!=2){
			    usage(1);
			}
			problemName=args[1];
			
			reader = new DAGReader(args[0]);
			//basicSets = new SimpleSet(reader.getDAG());
			//basicSets = new SimpleSetReg(reader.getDAG());
			basicSets = new SimpleSetOpt(reader.getDAG());
			constants = reader.getDAG().getTopologicalOrder();
			
	 }
	 
	 protected static void usage(int exitCode){
			System.err.println("Usage: java Driver [Hierarchy File] [Problem File]");
			System.exit(exitCode);
		    }

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
		long timestamp=System.currentTimeMillis();
		processOptions(args);
		System.err.println("Setup: "+
				   (System.currentTimeMillis()-timestamp)+
				   "ms");
		List<ConstraintOperation>operations=readSMTCSuffix(problemName);

		solver = new MultiVariableBitSolver();
		
		for(Variable var : x){
			solver.add(new BitVectorSolver(var, basicSets));
		}
		
		//now add the operations to it
		//System.out.println(operations);
		timestamp = System.currentTimeMillis();
		for(ConstraintOperation o : operations){
			o.apply(solver);
			
			if(o.isPush()){
				if(solver.isSAT()){
					System.out.println("sat");
				} else {
					System.out.println("unsat");
				}
			}
		}
		System.err.println("Processing: "+
				   (System.currentTimeMillis()-timestamp)+
				   "ms");

	}

}
