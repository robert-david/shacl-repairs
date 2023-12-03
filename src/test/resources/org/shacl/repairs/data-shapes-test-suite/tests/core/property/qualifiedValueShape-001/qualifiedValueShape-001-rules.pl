
% Graph Data

sh_NodeShape("ex_APGARObservationShape") .
sh_property("ex_APGARObservationShape","ex_APGARObservationShape_related") .
sh_targetNode("ex_APGARObservationShape","ex_Observation1") .
sh_path("ex_APGARObservationShape_related","ex_related") .
sh_qualifiedMaxCount("ex_APGARObservationShape_related","3") .
xsd_integer("3") .
sh_qualifiedMinCount("ex_APGARObservationShape_related","3") .
sh_qualifiedValueShape("ex_APGARObservationShape_related","node1hgobhchgx510") .
sh_property("node1hgobhchgx510","node1hgobhchgx511") .
sh_path("node1hgobhchgx511","ex_related_target") .
sh_node("node1hgobhchgx511","node1hgobhchgx512") .
sh_property("node1hgobhchgx512","node1hgobhchgx513") .
sh_path("node1hgobhchgx513","ex_reference") .
sh_hasValue("node1hgobhchgx513","ex_something") .
ex_Observation("ex_Observation1") .
ex_related("ex_Observation1","node1hgobhchgx514") .
ex_related_target("node1hgobhchgx514","node1hgobhchgx515") .
ex_reference("node1hgobhchgx515","ex_something") .
ex_related_type("node1hgobhchgx514","has_component") .
ex_code("has_component") .
ex_related("ex_Observation1","node1hgobhchgx516") .
ex_related_target("node1hgobhchgx516","node1hgobhchgx517") .
ex_reference("node1hgobhchgx517","ex_something") .
ex_related_type("node1hgobhchgx516","has_component") .
ex_related("ex_Observation1","node1hgobhchgx518") .
ex_related_target("node1hgobhchgx518","node1hgobhchgx519") .
ex_reference("node1hgobhchgx519","ex_unrelated") .
ex_related_type("node1hgobhchgx518","has_component") .
sh_nodeShape("ex_Observation1","ex_APGARObservationShape") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgobhchgx520") .
rdf_first("node1hgobhchgx520","http://repairs.shacl.org/qualifiedValueShape_001") .
rdf_rest("node1hgobhchgx520","rdf_nil") .
sht_Validate("http://repairs.shacl.org/qualifiedValueShape_001") .
rdfs_label("http://repairs.shacl.org/qualifiedValueShape_001","Test of sh:qualifiedValueShape at property shape 001") .
xsd_string("Test of sh:qualifiedValueShape at property shape 001") .
mf_action("http://repairs.shacl.org/qualifiedValueShape_001","node1hgobhchgx521") .
sht_dataGraph("node1hgobhchgx521","http://repairs.shacl.org") .
sht_shapesGraph("node1hgobhchgx521","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/qualifiedValueShape_001","node1hgobhchgx522") .
sh_ValidationReport("node1hgobhchgx522") .
sh_conforms("node1hgobhchgx522","false") .
xsd_boolean("false") .
sh_result("node1hgobhchgx522","node1hgobhchgx523") .
sh_ValidationResult("node1hgobhchgx523") .
sh_focusNode("node1hgobhchgx523","ex_Observation1") .
sh_resultPath("node1hgobhchgx523","ex_related") .
sh_resultSeverity("node1hgobhchgx523","sh_Violation") .
sh_sourceConstraintComponent("node1hgobhchgx523","sh_QualifiedMinCountConstraintComponent") .
sh_sourceShape("node1hgobhchgx523","ex_APGARObservationShape_related") .
mf_status("http://repairs.shacl.org/qualifiedValueShape_001","sht_approved") .

% Shape Targets

targetNode("ex_Observation1",ex_APGARObservationShape) .

% Constants

const("ex_something") .

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

s0_(X,"t*"):-ex_APGARObservationShape_(X,"t*") .
ex_APGARObservationShape_related_(X,"t*"):-s0_(X,"t*") .
ex_APGARObservationShape_related_(X,"f"):-s0_(X,"f") .

% sh:qualifiedMaxCount 3 for ex_APGARObservationShape_related
s1_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
ex_related_(X,@new(s2,X,ex_related,1..1),"t"):-choose(s2,X,ex_related,1) .
ex_related_(X,@new(s2,X,ex_related,1..2),"t"):-choose(s2,X,ex_related,2) .
ex_related_(X,@new(s2,X,ex_related,1..3),"t"):-choose(s2,X,ex_related,3) .
ex_related_(X,@new(s2,X,ex_related,1..4),"t"):-choose(s2,X,ex_related,4) .
choose(s2,X,ex_related,4);choose(s2,X,ex_related,3);choose(s2,X,ex_related,2);choose(s2,X,ex_related,1);choose(s2,X,ex_related,0):-s2_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s2_(X,"t*") .
(C-3) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s3_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-3):-s2_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>3 .
ex_related_(X,Y,"f"):-s2_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
4 {s3_(Y,"t*"):ex_related_(X,Y,"t**")} 4:-s2_(X,"t*") .

node1hgobhchgx525_(X,"t*"):-s3_(X,"t*") .
node1hgobhchgx525_(X,"f"):-s3_(X,"f") .

% sh:minCount 0 for node1hgobhchgx525
s4_(X,"t*"):-node1hgobhchgx525_(X,"t*") .
choose(s4,X,ex_related_target,0):-s4_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s5_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s4_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
0 {s5_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s4_(X,"t*") .

node1hgobhchgx527_(X,"t*"):-s5_(X,"t*") .
node1hgobhchgx527_(X,"f"):-s5_(X,"f") .

s6_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
ex_reference_(X,@new(s6,X,ex_reference,1..1),"t"):-choose(s6,X,ex_reference,1) .
choose(s6,X,ex_reference,1);choose(s6,X,ex_reference,0):-s6_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s6_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s7_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s6_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s7_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s6_(X,"t*") .


% sh:minCount 0 for node1hgobhchgx527
s8_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
choose(s8,X,ex_reference,0):-s8_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s8_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s9_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s8_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s9_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for node1hgobhchgx527
s10_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_reference_(X,@new(s11,X,ex_reference,1..1),"t"):-choose(s11,X,ex_reference,1) .
choose(s11,X,ex_reference,1);choose(s11,X,ex_reference,0):-s11_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s11_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s12_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s11_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s12_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s6_(X,"f");s8_(X,"f");s10_(X,"f"):-node1hgobhchgx527_(X,"f") .

% universal for node1hgobhchgx525
s14_(X,"t*"):-node1hgobhchgx525_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
ex_related_target_(X,@new(s15,X,ex_related_target,1..1),"t"):-choose(s15,X,ex_related_target,1) .
choose(s15,X,ex_related_target,1);choose(s15,X,ex_related_target,0):-s15_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s15_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s16_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s15_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
1 {s16_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .

node1hgobhchgx527_(X,"t*"):-s17_(X,"t*") .
node1hgobhchgx527_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
ex_reference_(X,@new(s18,X,ex_reference,1..1),"t"):-choose(s18,X,ex_reference,1) .
choose(s18,X,ex_reference,1);choose(s18,X,ex_reference,0):-s18_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s18_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s19_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s18_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s19_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s18_(X,"t*") .


s20_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
choose(s20,X,ex_reference,0):-s20_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s20_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s21_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s20_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s21_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s20_(X,"t*") .


s22_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
ex_reference_(X,@new(s23,X,ex_reference,1..1),"t"):-choose(s23,X,ex_reference,1) .
choose(s23,X,ex_reference,1);choose(s23,X,ex_reference,0):-s23_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s23_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s24_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s23_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s23_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s24_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .


s18_(X,"f");s20_(X,"f");s22_(X,"f"):-node1hgobhchgx527_(X,"f") .

s4_(X,"f");s14_(X,"f"):-node1hgobhchgx525_(X,"f") .

% sh:minCount 0 for ex_APGARObservationShape_related
s26_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
choose(s26,X,ex_related,0):-s26_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s26_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s27_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s26_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
ex_related_(X,Y,"f"):-s26_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
0 {s27_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s26_(X,"t*") .


% universal for ex_APGARObservationShape_related
s28_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s29_(X,"f"):-s28_(X,"t*") .
s29_(X,"t*"):-s28_(X,"f") .
ex_related_(X,@new(s29,X,ex_related,1..1),"t"):-choose(s29,X,ex_related,1) .
choose(s29,X,ex_related,1);choose(s29,X,ex_related,0):-s29_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s29_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s30_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s29_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
ex_related_(X,Y,"f"):-s29_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
1 {s30_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s29_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .


s1_(X,"f");s26_(X,"f");s28_(X,"f"):-ex_APGARObservationShape_related_(X,"f") .
s32_(X,"t*"):-ex_APGARObservationShape_(X,"t*") .
ex_APGARObservationShape_related_(X,"t*"):-s32_(X,"t*") .
ex_APGARObservationShape_related_(X,"f"):-s32_(X,"f") .

% sh:qualifiedMinCount 3 for ex_APGARObservationShape_related
s33_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
ex_related_(X,@new(s33,X,ex_related,1..1),"t"):-choose(s33,X,ex_related,1) .
ex_related_(X,@new(s33,X,ex_related,1..2),"t"):-choose(s33,X,ex_related,2) .
ex_related_(X,@new(s33,X,ex_related,1..3),"t"):-choose(s33,X,ex_related,3) .
choose(s33,X,ex_related,3);choose(s33,X,ex_related,2);choose(s33,X,ex_related,1);choose(s33,X,ex_related,0):-s33_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s33_(X,"t*") .
(C-2) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s34_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-2):-s33_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>2 .
ex_related_(X,Y,"f"):-s33_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
3 {s34_(Y,"t*"):ex_related_(X,Y,"t**")} 3:-s33_(X,"t*") .

node1hgobhchgx525_(X,"t*"):-s34_(X,"t*") .
node1hgobhchgx525_(X,"f"):-s34_(X,"f") .

s35_(X,"t*"):-node1hgobhchgx525_(X,"t*") .
choose(s35,X,ex_related_target,0):-s35_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s35_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s36_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s35_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
0 {s36_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s35_(X,"t*") .

node1hgobhchgx527_(X,"t*"):-s36_(X,"t*") .
node1hgobhchgx527_(X,"f"):-s36_(X,"f") .

s37_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
ex_reference_(X,@new(s37,X,ex_reference,1..1),"t"):-choose(s37,X,ex_reference,1) .
choose(s37,X,ex_reference,1);choose(s37,X,ex_reference,0):-s37_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s37_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s38_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s37_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s38_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s37_(X,"t*") .


s39_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
choose(s39,X,ex_reference,0):-s39_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s39_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s40_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s39_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s40_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s39_(X,"t*") .


s41_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .
ex_reference_(X,@new(s42,X,ex_reference,1..1),"t"):-choose(s42,X,ex_reference,1) .
choose(s42,X,ex_reference,1);choose(s42,X,ex_reference,0):-s42_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s42_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s43_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s42_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s42_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s43_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s42_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .


s37_(X,"f");s39_(X,"f");s41_(X,"f"):-node1hgobhchgx527_(X,"f") .

s45_(X,"t*"):-node1hgobhchgx525_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
ex_related_target_(X,@new(s46,X,ex_related_target,1..1),"t"):-choose(s46,X,ex_related_target,1) .
choose(s46,X,ex_related_target,1);choose(s46,X,ex_related_target,0):-s46_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s46_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s47_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s46_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
1 {s47_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .

node1hgobhchgx527_(X,"t*"):-s48_(X,"t*") .
node1hgobhchgx527_(X,"f"):-s48_(X,"f") .

s49_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
ex_reference_(X,@new(s49,X,ex_reference,1..1),"t"):-choose(s49,X,ex_reference,1) .
choose(s49,X,ex_reference,1);choose(s49,X,ex_reference,0):-s49_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s49_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s50_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s49_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s49_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s50_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s49_(X,"t*") .


s51_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
choose(s51,X,ex_reference,0):-s51_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s51_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s52_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s51_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s51_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s52_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s51_(X,"t*") .


s53_(X,"t*"):-node1hgobhchgx527_(X,"t*") .
s54_(X,"f"):-s53_(X,"t*") .
s54_(X,"t*"):-s53_(X,"f") .
ex_reference_(X,@new(s54,X,ex_reference,1..1),"t"):-choose(s54,X,ex_reference,1) .
choose(s54,X,ex_reference,1);choose(s54,X,ex_reference,0):-s54_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s54_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s55_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s54_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s54_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s55_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s54_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .


s49_(X,"f");s51_(X,"f");s53_(X,"f"):-node1hgobhchgx527_(X,"f") .

s35_(X,"f");s45_(X,"f"):-node1hgobhchgx525_(X,"f") .

s57_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
choose(s57,X,ex_related,0):-s57_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s57_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s58_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s57_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
ex_related_(X,Y,"f"):-s57_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
0 {s58_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s57_(X,"t*") .


s59_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s60_(X,"f"):-s59_(X,"t*") .
s60_(X,"t*"):-s59_(X,"f") .
ex_related_(X,@new(s60,X,ex_related,1..1),"t"):-choose(s60,X,ex_related,1) .
choose(s60,X,ex_related,1);choose(s60,X,ex_related,0):-s60_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s60_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s61_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s60_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
ex_related_(X,Y,"f"):-s60_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
1 {s61_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s60_(X,"t*") .
s62_(X,"f"):-s61_(X,"t*") .
s62_(X,"t*"):-s61_(X,"f") .


s33_(X,"f");s57_(X,"f");s59_(X,"f"):-ex_APGARObservationShape_related_(X,"f") .
s0_(X,"f");s32_(X,"f"):-ex_APGARObservationShape_(X,"f") .

% Interpretation Rules

ex_related_(X,Y,"t**"):-ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f") .
ex_related_target_(X,Y,"t**"):-ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f") .
ex_reference_(X,Y,"t**"):-ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f") .

% Program Constraints

:-ex_related_(X,Y,"t"),ex_related_(X,Y,"f") .
:-ex_related_target_(X,Y,"t"),ex_related_target_(X,Y,"f") .
:-ex_reference_(X,Y,"t"),ex_reference_(X,Y,"f") .
:-s7_(X,"t*"),X!="ex_something" .
:-s7_(X,"f"),X="ex_something" .
:-s9_(X,"f") .
:-s13_(X,"f") .
:-s19_(X,"t*"),X!="ex_something" .
:-s19_(X,"f"),X="ex_something" .
:-s21_(X,"f") .
:-s25_(X,"f") .
:-s27_(X,"f") .
:-s31_(X,"f") .
:-s38_(X,"t*"),X!="ex_something" .
:-s38_(X,"f"),X="ex_something" .
:-s40_(X,"f") .
:-s44_(X,"f") .
:-s50_(X,"t*"),X!="ex_something" .
:-s50_(X,"f"),X="ex_something" .
:-s52_(X,"f") .
:-s56_(X,"f") .
:-s58_(X,"f") .
:-s62_(X,"f") .

% Change Set Rules

add(ex_related(X,Y)):-ex_related_(X,Y,"t**"),not ex_related(X,Y) .
del(ex_related(X,Y)):-ex_related_(X,Y,"f"),ex_related(X,Y) .
#minimize { 1@1,X,Y: ex_related_(X,Y,"t"), const(Y) } .
add(ex_related_target(X,Y)):-ex_related_target_(X,Y,"t**"),not ex_related_target(X,Y) .
del(ex_related_target(X,Y)):-ex_related_target_(X,Y,"f"),ex_related_target(X,Y) .
#minimize { 1@1,X,Y: ex_related_target_(X,Y,"t"), const(Y) } .
add(ex_reference(X,Y)):-ex_reference_(X,Y,"t**"),not ex_reference(X,Y) .
del(ex_reference(X,Y)):-ex_reference_(X,Y,"f"),ex_reference(X,Y) .
#minimize { 1@1,X,Y: ex_reference_(X,Y,"t"), const(Y) } .
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
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
