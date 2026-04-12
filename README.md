This is an experimental branch implementing a proof of concept for an **infinite target recursion guard** based on the publication **'A two-layered Approach to cope with Recursion in SHACL
Repairs'** published at 
QKG@ESWC 2026 — Evaluating, Improving, and Sustaining Knowledge Graph Quality. 
Co-located with the Extended Semantic Web Conference, May 10 -- 14, 2026, Dubrovnik, Croatia.

The initial implementation of the ASP repair program described in the paper "Repairing SHACL Constraint Violations using Answer Set Programming" and "A Logic Programming Approach to Repairing SHACL Constraint Violations" was adapted to support a finite domain of new values, which limits target recursion based on a defined maximum number of additions with new values for each property.

The examples from the publication are added to the test cases in the *target-recursion* folder as *example_1*, *example_2* and *example_3*.

BUILD
-----
To build the repair application, please follow the steps: 

- The SHACL repair program is using clingo for ASP solving. Please install clingo (v5.8.0) as described on https://potassco.org/clingo/.
- The SHACL repair program needs a modified version of the Eclipse RDF4J framework (https://rdf4j.org/). This modified version is available at https://github.com/robert-david/rdf4j.
- From the project folder of the cloned RDF4J framework, 
  - switch to the shacl-repairs branch: git checkout shacl-repairs
  - and then run: mvn install
- Please clone the SHACL repair program from the branch https://github.com/robert-david/shacl-repairs
- From the project folder of the cloned shacl-repairs (main branch), 
  - run: mvn install

REPAIR PROGRAM
--------------
The repair program takes a data graph file (ttl) and a shapes graph file (ttl) and produces an ASP repair program that can be run using clingo (https://potassco.org/clingo/). For an example how to call the java program, please see the included "run-example.sh" script.

The repair program uses optimisation parameters for clingo that are required to be passed when executing to retrieve the optimal repair models. Please run:

clingo path/to/clingoFile.pl --opt-mode=optN -n 100 --quiet=1

As an alternative to a local installation of clingo, you can use the online web version of clingo at https://potassco.org/clingo/run/

Note that running clingo this way, you cannot pass the parameters and therefore will get not only the optimal repair models. However, the optimisation cost is returned for the models and the optimal repairs are contained in the models with the lowest optimisation cost.

TESTS
-----

We provide a test suite including a set of 91 tests that are grouped by general notion of what the constraints check. So tests within "class" are mainly examples for class constraint violations. Note that most tests mix different constraints, though.

Each test contains a data graph file, a shapes graph file and a clingo file that was produced by the repair program for these two input files. You can either run the repair program, which will produce the exact same clingo file, or directly use the clingo file to run with clingo.

We also provide 32 test cases from the official SHACL test suite (https://w3c.github.io/data-shapes/data-shapes-test-suite/).
