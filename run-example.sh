java -jar ./shacl-repairs-1.0.jar org.shacl.repairs.Main src/test/resources/org/shacl/repairs/tests/example_data.ttl src/test/resources/org/shacl/repairs/tests/example_shapes.ttl shacl-repairs/src/test/resources/org/shacl/repairs/tests/example_rules.pl
clingo src/test/resources/org/shacl/repairs/tests/example_rules.pl --opt-mode=optN -n 100 --quiet=1
