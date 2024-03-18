java -jar ./target/shacl-repairs-1.2.0-SNAPSHOT.jar src/test/resources/org/shacl/repairs/tests/example_data.ttl src/test/resources/org/shacl/repairs/tests/example_shapes.ttl src/test/resources/org/shacl/repairs/tests/example_rules.pl
clingo src/test/resources/org/shacl/repairs/tests/example_rules.pl --opt-mode=optN -n 100 -t 3 --quiet=1
