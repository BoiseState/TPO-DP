# TPO-DP
The source code and the benchmarks used in "Deciding Type-Based Partial-Order Constraints for Path-Sensitive Analysis"  paper by Elena Sherman, Brady J. Garvin, Matthew B. Dwyer (ACM Trans. Softw. Eng. Methodol)

src folder contains Java source code for our implementation of bit vector solver (bitvector package) and slice solver (tpodp package).

benchmarks folder contains three suborders:
	closed - benchmarks for the closed hierarchies
	open - benchmarks for the open hierarchies
	converted-hierarchies - type hierarchy encoding for tpo-dp and bitvector solvers
	
lib folder contains a graph library (jgrapht-jdk1.5.jar) to store type hierarchies.

------------------------------------BENCHMARKS------------------------------------

Benchmarks for each of the programs are located in the folder named after that program. For example for nanoXML closed benchmarks are located in "./benchmarks/closed/nanoXML".

Each benchmark has the following naming
<programName>_<NumberOfVars>vars_<TreeDepths>deep_<id>.smt2
For example,
nanoXML_16vars_5deep_9.smt2
is a benchmark for nanoXML program with 16 variables that has the depths of the query tree up to 5 and is 10th benchmark (0-indexed) among total of 10 of the benchmarks generated using the same parameters. 

Such benchmarks contain only actual operations and constraints for the type-based query and not the constraints to set up the type hierarchy in smt2 format for Z3.

This is done in the file 
nanoXML_16vars.smt2 
for the above benchmark and is located in the same directory. Each benchmark for a program and the number of variables has a corresponding type hierarchy encoding file in smt2 format for Z3. Thus, in order to have the "complete" smt2 file you need to append the benchmark file containing the queries to the type hierarchy encoding file. For example

cat nanoXML_16vars.smt2 nanoXML_16vars_5deep_9.smt2 > completeBenchark.smt2

Then completeBenchamrk.smt2 should be passed to Z3.

------------------------------------BITVECTOR------------------------------------

Regular compilation just make sure to add ./lib/jgrapht-jdk1.5.jar to your classpath

To run:
java bitvector.Driver <type-hierarchy_file> <benchmark_file>

Can only be used to run closed type hierarchy benchmarks, for example

java bitvector.Driver ./benchmarks/converted-hierarchies/nanoXML.hierarchy  ./benchmarks/closed/nanoXML/nanoXML_16vars_5deep_9.smt2


------------------------------------TPO-DP------------------------------------

Regular compilation just make sure to add ./lib/jgrapht-jdk1.5.jar to your classpath 

To run:
java tpodp.driver.Driver <type-hierarchy_file> <benchmark_file> <SolverType: open | closed>

For example:
java topdp.driver.Driver ./benchmarks/converted-hierarchies/nanoXML.hierarchy  ./benchmarks/closed/nanoXML/nanoXML_16vars_5deep_9.smt2 closed
