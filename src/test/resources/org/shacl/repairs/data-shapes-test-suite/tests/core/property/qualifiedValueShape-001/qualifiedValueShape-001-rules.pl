
% Graph Data

sh_NodeShape("ex_APGARObservationShape") .
sh_property("ex_APGARObservationShape","ex_APGARObservationShape_related") .
sh_targetNode("ex_APGARObservationShape","ex_Observation1") .
sh_path("ex_APGARObservationShape_related","ex_related") .
sh_qualifiedMaxCount("ex_APGARObservationShape_related","3") .
xsd_integer("3") .
sh_qualifiedMinCount("ex_APGARObservationShape_related","3") .
sh_qualifiedValueShape("ex_APGARObservationShape_related","node1g835dclmx406") .
sh_property("node1g835dclmx406","node1g835dclmx407") .
sh_path("node1g835dclmx407","ex_related_target") .
sh_node("node1g835dclmx407","node1g835dclmx408") .
sh_property("node1g835dclmx408","node1g835dclmx409") .
sh_path("node1g835dclmx409","ex_reference") .
sh_hasValue("node1g835dclmx409","ex_something") .
ex_Observation("ex_Observation1") .
ex_related("ex_Observation1","node1g835dclmx410") .
ex_related_target("node1g835dclmx410","node1g835dclmx411") .
ex_reference("node1g835dclmx411","ex_something") .
ex_related_type("node1g835dclmx410","has_component") .
ex_code("has_component") .
ex_related("ex_Observation1","node1g835dclmx412") .
ex_related_target("node1g835dclmx412","node1g835dclmx413") .
ex_reference("node1g835dclmx413","ex_something") .
ex_related_type("node1g835dclmx412","has_component") .
ex_related("ex_Observation1","node1g835dclmx414") .
ex_related_target("node1g835dclmx414","node1g835dclmx415") .
ex_reference("node1g835dclmx415","ex_unrelated") .
ex_related_type("node1g835dclmx414","has_component") .
sh_nodeShape("ex_Observation1","ex_APGARObservationShape") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1g835dclmx416") .
rdf_first("node1g835dclmx416","http://repairs.shacl.org/qualifiedValueShape_001") .
rdf_rest("node1g835dclmx416","rdf_nil") .
sht_Validate("http://repairs.shacl.org/qualifiedValueShape_001") .
rdfs_label("http://repairs.shacl.org/qualifiedValueShape_001","Test of sh:qualifiedValueShape at property shape 001") .
xsd_string("Test of sh:qualifiedValueShape at property shape 001") .
mf_action("http://repairs.shacl.org/qualifiedValueShape_001","node1g835dclmx417") .
sht_dataGraph("node1g835dclmx417","http://repairs.shacl.org") .
sht_shapesGraph("node1g835dclmx417","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/qualifiedValueShape_001","node1g835dclmx418") .
sh_ValidationReport("node1g835dclmx418") .
sh_conforms("node1g835dclmx418","false") .
xsd_boolean("false") .
sh_result("node1g835dclmx418","node1g835dclmx419") .
sh_ValidationResult("node1g835dclmx419") .
sh_focusNode("node1g835dclmx419","ex_Observation1") .
sh_resultPath("node1g835dclmx419","ex_related") .
sh_resultSeverity("node1g835dclmx419","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx419","sh_QualifiedMinCountConstraintComponent") .
sh_sourceShape("node1g835dclmx419","ex_APGARObservationShape_related") .
mf_status("http://repairs.shacl.org/qualifiedValueShape_001","sht_approved") .

% Shape Targets

targetNode("ex_Observation1",ex_APGARObservationShape) .

% Constants

const("http://datashapes.org/sh/tests/core/property/qualifiedValueShape-001.test#something") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_APGARObservationShape_("ex_Observation1","t*"):-actualTarget("ex_Observation1",ex_APGARObservationShape) .

% Annotation Rules

ex_related_(X,Y,"t*"):-ex_related(X,Y) .
ex_related_(X,Y,"t*"):-ex_related_(X,Y,"t") .
ex_related_target_(X,Y,"t*"):-ex_related_target(X,Y) .
ex_related_target_(X,Y,"t*"):-ex_related_target_(X,Y,"t") .
ex_reference_(X,Y,"t*"):-ex_reference(X,Y) .
ex_reference_(X,Y,"t*"):-ex_reference_(X,Y,"t") .

% Repair Rules

ex_APGARObservationShape_related_(X,"t*"):-ex_APGARObservationShape_(X,"t*") .

% sh:qualifiedMaxCount 3 for ex_APGARObservationShape_related
s0_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
ex_related_(X,@new(s1,X,ex_related,1..1),"t"):-choose(s1,X,ex_related,1) .
ex_related_(X,@new(s1,X,ex_related,1..2),"t"):-choose(s1,X,ex_related,2) .
ex_related_(X,@new(s1,X,ex_related,1..3),"t"):-choose(s1,X,ex_related,3) .
ex_related_(X,@new(s1,X,ex_related,1..4),"t"):-choose(s1,X,ex_related,4) .
choose(s1,X,ex_related,4);choose(s1,X,ex_related,3);choose(s1,X,ex_related,2);choose(s1,X,ex_related,1);choose(s1,X,ex_related,0):-s1_(X,"t*") .
(C-3) {ex_related_(X,Y,"f"):ex_related(X,Y);s2_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-3):-s1_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>3 .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
4 {s2_(Y,"t*"):ex_related_(X,Y,"t**")} 4:-s1_(X,"t*") .

node1g835dclmx421_(X,"t*"):-s2_(X,"t*") .
node1g835dclmx421_(X,"f"):-s2_(X,"f") .

% sh:minCount 0 for node1g835dclmx421
s3_(X,"t*"):-node1g835dclmx421_(X,"t*") .
choose(s3,X,ex_related_target,0):-s3_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target(X,Y);s4_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s3_(X,"t*") .
0 {s4_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s3_(X,"t*") .

node1g835dclmx423_(X,"t*"):-s4_(X,"t*") .
node1g835dclmx423_(X,"f"):-s4_(X,"f") .
s5_(X,"t*"):-node1g835dclmx423_(X,"t*") .
ex_reference_(X,@new(s5,X,ex_reference,1..1),"t"):-choose(s5,X,ex_reference,1) .
choose(s5,X,ex_reference,1);choose(s5,X,ex_reference,0):-s5_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s6_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s5_(X,"t*") .
1 {s6_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s5_(X,"t*") .



% sh:minCount 0 for node1g835dclmx423
s7_(X,"t*"):-node1g835dclmx423_(X,"t*") .
choose(s7,X,ex_reference,0):-s7_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s8_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s7_(X,"t*") .
0 {s8_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s7_(X,"t*") .


% universal for node1g835dclmx423
s9_(X,"t*"):-node1g835dclmx423_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
ex_reference_(X,@new(s10,X,ex_reference,1..1),"t"):-choose(s10,X,ex_reference,1) .
choose(s10,X,ex_reference,1);choose(s10,X,ex_reference,0):-s10_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s11_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
1 {s11_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s5_(X,"f");s7_(X,"f");s9_(X,"f"):-node1g835dclmx423_(X,"f") .

% universal for node1g835dclmx421
s13_(X,"t*"):-node1g835dclmx421_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_related_target_(X,@new(s14,X,ex_related_target,1..1),"t"):-choose(s14,X,ex_related_target,1) .
choose(s14,X,ex_related_target,1);choose(s14,X,ex_related_target,0):-s14_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target(X,Y);s15_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s14_(X,"t*") .
1 {s15_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .

node1g835dclmx423_(X,"t*"):-s16_(X,"t*") .
node1g835dclmx423_(X,"f"):-s16_(X,"f") .
s17_(X,"t*"):-node1g835dclmx423_(X,"t*") .
ex_reference_(X,@new(s17,X,ex_reference,1..1),"t"):-choose(s17,X,ex_reference,1) .
choose(s17,X,ex_reference,1);choose(s17,X,ex_reference,0):-s17_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s18_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s17_(X,"t*") .
1 {s18_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s17_(X,"t*") .



s19_(X,"t*"):-node1g835dclmx423_(X,"t*") .
choose(s19,X,ex_reference,0):-s19_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s20_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s19_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s19_(X,"t*") .
0 {s20_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s19_(X,"t*") .


s21_(X,"t*"):-node1g835dclmx423_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .
ex_reference_(X,@new(s22,X,ex_reference,1..1),"t"):-choose(s22,X,ex_reference,1) .
choose(s22,X,ex_reference,1);choose(s22,X,ex_reference,0):-s22_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s23_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s22_(X,"t*") .
1 {s23_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s22_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .


s17_(X,"f");s19_(X,"f");s21_(X,"f"):-node1g835dclmx423_(X,"f") .

s3_(X,"f");s13_(X,"f"):-node1g835dclmx421_(X,"f") .

% sh:qualifiedMinCount 3 for ex_APGARObservationShape_related
s25_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
ex_related_(X,@new(s25,X,ex_related,1..1),"t"):-choose(s25,X,ex_related,1) .
ex_related_(X,@new(s25,X,ex_related,1..2),"t"):-choose(s25,X,ex_related,2) .
ex_related_(X,@new(s25,X,ex_related,1..3),"t"):-choose(s25,X,ex_related,3) .
choose(s25,X,ex_related,3);choose(s25,X,ex_related,2);choose(s25,X,ex_related,1);choose(s25,X,ex_related,0):-s25_(X,"t*") .
(C-2) {ex_related_(X,Y,"f"):ex_related(X,Y);s26_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-2):-s25_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>2 .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s25_(X,"t*") .
3 {s26_(Y,"t*"):ex_related_(X,Y,"t**")} 3:-s25_(X,"t*") .

node1g835dclmx421_(X,"t*"):-s26_(X,"t*") .
node1g835dclmx421_(X,"f"):-s26_(X,"f") .

s27_(X,"t*"):-node1g835dclmx421_(X,"t*") .
choose(s27,X,ex_related_target,0):-s27_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target(X,Y);s28_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s27_(X,"t*") .
0 {s28_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s27_(X,"t*") .

node1g835dclmx423_(X,"t*"):-s28_(X,"t*") .
node1g835dclmx423_(X,"f"):-s28_(X,"f") .
s29_(X,"t*"):-node1g835dclmx423_(X,"t*") .
ex_reference_(X,@new(s29,X,ex_reference,1..1),"t"):-choose(s29,X,ex_reference,1) .
choose(s29,X,ex_reference,1);choose(s29,X,ex_reference,0):-s29_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s30_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s29_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s29_(X,"t*") .
1 {s30_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s29_(X,"t*") .



s31_(X,"t*"):-node1g835dclmx423_(X,"t*") .
choose(s31,X,ex_reference,0):-s31_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s32_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s31_(X,"t*") .
0 {s32_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s31_(X,"t*") .


s33_(X,"t*"):-node1g835dclmx423_(X,"t*") .
s34_(X,"f"):-s33_(X,"t*") .
s34_(X,"t*"):-s33_(X,"f") .
ex_reference_(X,@new(s34,X,ex_reference,1..1),"t"):-choose(s34,X,ex_reference,1) .
choose(s34,X,ex_reference,1);choose(s34,X,ex_reference,0):-s34_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s35_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s34_(X,"t*") .
1 {s35_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s34_(X,"t*") .
s36_(X,"f"):-s35_(X,"t*") .
s36_(X,"t*"):-s35_(X,"f") .


s29_(X,"f");s31_(X,"f");s33_(X,"f"):-node1g835dclmx423_(X,"f") .

s37_(X,"t*"):-node1g835dclmx421_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
ex_related_target_(X,@new(s38,X,ex_related_target,1..1),"t"):-choose(s38,X,ex_related_target,1) .
choose(s38,X,ex_related_target,1);choose(s38,X,ex_related_target,0):-s38_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target(X,Y);s39_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s38_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s38_(X,"t*") .
1 {s39_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s38_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .

node1g835dclmx423_(X,"t*"):-s40_(X,"t*") .
node1g835dclmx423_(X,"f"):-s40_(X,"f") .
s41_(X,"t*"):-node1g835dclmx423_(X,"t*") .
ex_reference_(X,@new(s41,X,ex_reference,1..1),"t"):-choose(s41,X,ex_reference,1) .
choose(s41,X,ex_reference,1);choose(s41,X,ex_reference,0):-s41_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s42_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s41_(X,"t*") .
1 {s42_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s41_(X,"t*") .



s43_(X,"t*"):-node1g835dclmx423_(X,"t*") .
choose(s43,X,ex_reference,0):-s43_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s44_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s43_(X,"t*") .
0 {s44_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s43_(X,"t*") .


s45_(X,"t*"):-node1g835dclmx423_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
ex_reference_(X,@new(s46,X,ex_reference,1..1),"t"):-choose(s46,X,ex_reference,1) .
choose(s46,X,ex_reference,1);choose(s46,X,ex_reference,0):-s46_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference(X,Y);s47_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s46_(X,"t*") .
1 {s47_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .


s41_(X,"f");s43_(X,"f");s45_(X,"f"):-node1g835dclmx423_(X,"f") .

s27_(X,"f");s37_(X,"f"):-node1g835dclmx421_(X,"f") .

% sh:minCount 0 for ex_APGARObservationShape_related
s49_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
choose(s49,X,ex_related,0):-s49_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related(X,Y);s50_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s49_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s49_(X,"t*") .
0 {s50_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s49_(X,"t*") .


% universal for ex_APGARObservationShape_related
s51_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s52_(X,"f"):-s51_(X,"t*") .
s52_(X,"t*"):-s51_(X,"f") .
ex_related_(X,@new(s52,X,ex_related,1..1),"t"):-choose(s52,X,ex_related,1) .
choose(s52,X,ex_related,1);choose(s52,X,ex_related,0):-s52_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related(X,Y);s53_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s52_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s52_(X,"t*") .
1 {s53_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s52_(X,"t*") .
s54_(X,"f"):-s53_(X,"t*") .
s54_(X,"t*"):-s53_(X,"f") .


s0_(X,"f");s25_(X,"f");s49_(X,"f");s51_(X,"f"):-ex_APGARObservationShape_related_(X,"f") .
ex_APGARObservationShape_related_(X,"f"):-ex_APGARObservationShape_(X,"f") .

% Interpretation Rules

ex_related_(X,Y,"t**"):-ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f") .
ex_related_target_(X,Y,"t**"):-ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f") .
ex_reference_(X,Y,"t**"):-ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f") .

% Program Constraints

:-ex_related_(X,Y,"t"),ex_related_(X,Y,"f") .
:-ex_related_target_(X,Y,"t"),ex_related_target_(X,Y,"f") .
:-s6_(X,"t*"),X!="ex_something" .
:-s6_(X,"f"),X="ex_something" .
:-ex_reference_(X,Y,"t"),ex_reference_(X,Y,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .
:-s18_(X,"t*"),X!="ex_something" .
:-s18_(X,"f"),X="ex_something" .
:-s20_(X,"f") .
:-s24_(X,"f") .
:-s30_(X,"t*"),X!="ex_something" .
:-s30_(X,"f"),X="ex_something" .
:-s32_(X,"f") .
:-s36_(X,"f") .
:-s42_(X,"t*"),X!="ex_something" .
:-s42_(X,"f"),X="ex_something" .
:-s44_(X,"f") .
:-s48_(X,"f") .
:-s50_(X,"f") .
:-s54_(X,"f") .

% Change Set Rules

add(ex_related(X,Y)):-ex_related_(X,Y,"t**"),not ex_related(X,Y) .
del(ex_related(X,Y)):-ex_related_(X,Y,"f"),ex_related(X,Y) .
#minimize { 1@1,X,Y: ex_related_(X,Y,"t"), const(Y) } .
add(ex_related_target(X,Y)):-ex_related_target_(X,Y,"t**"),not ex_related_target(X,Y) .
del(ex_related_target(X,Y)):-ex_related_target_(X,Y,"f"),ex_related_target(X,Y) .
#minimize { 1@1,X,Y: ex_related_target_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: ex_reference_(X,Y,"t"), const(Y) } .
add(ex_reference(X,Y)):-ex_reference_(X,Y,"t**"),not ex_reference(X,Y) .
del(ex_reference(X,Y)):-ex_reference_(X,Y,"f"),ex_reference(X,Y) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

% Program Functions

#show actualTarget/2 .
#show skipTarget/2 .
#show add/1 .
#show del/1 .


#script (lua)
function new(S, X, E, C)
local x = tostring(S) .. tostring(X) .. tostring(E) .. tostring(C)
local result = 0
for i = 1, string.len(x) do
result = result + string.byte(x,i)
end
return tostring(result)
end
#end .
