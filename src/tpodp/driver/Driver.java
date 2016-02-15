package tpodp.driver;
import java.io.*;
import java.util.*;

import tpodp.*;
import tpodp.Literal.Relation;
import tpodp.wrappers.MultiVariableSolver;
import tpodp.hierarchy.*;
import tpodp.slicing.*;

public class Driver{
    protected static String problemName;
    protected static SolverFactory factory;
    protected static List<Variable>x=new ArrayList<Variable>();
    protected static MultiVariableSolver solver = null;
    protected static List<Constant>constants;
    static int constrCount = 1;

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

    protected static void process(List<ConstraintOperation>operations){
    	ArrayList<String> stack = new ArrayList<String>();
	for(ConstraintOperation operation:operations){
	    operation.apply(solver);
//	    if(constrCount <= 995) {
//	    	if(operation.isPush()){
//	    		stack.add(operation.toString());
//	    		constrCount++;
//	    	} else {
//	    		stack.remove(stack.size() - 1);
//	    	}
//	    	if(constrCount-1 <= 995){
//	    	if(operation.isPush()){
//	    	 System.out.println((constrCount-1) + " " + operation);
//	    	 System.out.println(stack);
//	    	}
//	    	}
//	    	
//	    }
	    if(operation.isPush()){
		if(((Solver) solver).isSAT()){
		    System.out.println("sat");
		}else{
		    System.out.println("unsat");
		}
	    }
	}
    }

    protected static void usage(int exitCode){
	System.err.println("Usage: java Driver [Hierarchy File] [Problem File] [Solver type: open | closed]");
	System.err.println("For open type hierarchy:\n java Driver nanoXML.hierarchy nanoXML_1vars_5deep_0.smt2 open");
	System.err.println("For closed type hierarchy:\n java Driver nanoXML.hierarchy nanoXML_1vars_5deep_0.smt2 closed");
	System.exit(exitCode);
    }

    protected static void processOptions(String[]args){
	if(args.length != 3){
	    usage(1);
	}
	problemName=args[1];
	
	//either solver assumes open or closed type hierarchy
	boolean openSolver = false;
	if(args[2].equals("open")){
		openSolver = true;
	} else if (args[2].equals("closed")){
		openSolver = false;
	} else {
		usage(1);
	}
	
	DAGReader reader = new DAGReader(args[0]);
	//dag=(new DAGReader(args[0])).getDAG();
	
	long timestamp=System.currentTimeMillis();
	//set to false when processing closed hierarchy and to true when processing open hierarchy
	Slicing slicing;
	if(openSolver){
		slicing = new Slicing(true);
	} else {
		slicing =new Slicing(false);
	}
	reader.populate(slicing);
	
	//instantiate appropriate 
	//slicing.add(type,set<>parents);
	//factory=new SliceSolverFactory(slicing);
	//closed hierarchy solver
	factory = new UnwrappedSliceSolverFactory(slicing);
    // open hierarchy solver
	//factory = new UnwrappedOpenSliceSolverFactory(slicing);
//	System.err.println("Preprocessing: "+
//			   (System.currentTimeMillis()-timestamp)+
//			   "ms");
	constants= reader.getDAG().getTopologicalOrder();
	
	
    }

    
    public static void main(String[]args) throws Exception{
    long timestamp=System.currentTimeMillis();
    //in processOptions changes are made for open/closed type hierarchy solver
	processOptions(args);
	System.err.println("Setup: "+
			   (System.currentTimeMillis()-timestamp)+
			   "ms");
	List<ConstraintOperation>operations=readSMTCSuffix(problemName);
	solver = new MultiVariableSolver();
	for(Variable variable:x){ 
	    //solver.add(factory.buildSolver(variable));
		solver.add((SingleVariableSolver) factory.buildSolver(variable));

	}
	timestamp = System.currentTimeMillis();
	process(operations);
	System.err.println("Processing: "+
			   (System.currentTimeMillis()-timestamp)+
			   "ms");
    }
}
