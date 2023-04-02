This is a proof of concept prototype implementation of the ASP repair program described in the paper "Repairing SHACL Constraint Violations using Answer Set Programming".

REPAIR PROGRAM
--------------
The repair program takes a data graph file (ttl) and a shapes graph file (ttl) and produces an ASP repair program that can be run using clingo (https://potassco.org/clingo/). For an example how to call the java program, please see the included "run-example.sh" script.

The repair program uses optimisation parameters for clingo that are required to be passed when executing to retrieve the optimal repair models. Please run:

clingo path/to/clingoFile.pl --opt-mode=optN -n 10 --quiet=1

As an alternative to a local installation of clingo, you can use the online web version of clingo at https://potassco.org/clingo/run/

Note that running clingo this way, you cannot pass the parameters and therefore will get not only the optimal repair models. However, the optimisation cost is returned for the models and the optimal repairs are contained in the models with the lowest optimisation cost.

TESTS
-----

We provide a test suite including a set of 43 tests that are grouped by general notion of what the constraints check. So tests within "class" are mainly examples for class constraint violations. Note that most tests mix different constraints, though.

Each test contains a data graph file, a shapes graph file and a clingo file that was produced by the repair program for these two input files. You can either run the repair program, which will produce the exact same clingo file, or directly use the clingo file to run with clingo.

We also provide 21 test cases from the official SHACL test suite (https://w3c.github.io/data-shapes/data-shapes-test-suite/).