
% Graph Data

sh_NodeShape("ex_APGARObservationShape") .
sh_property("ex_APGARObservationShape","ex_APGARObservationShape_related") .
sh_targetNode("ex_APGARObservationShape","ex_Observation1") .
sh_path("ex_APGARObservationShape_related","ex_related") .
sh_qualifiedMaxCount("ex_APGARObservationShape_related","3") .
xsd_integer("3") .
sh_qualifiedMinCount("ex_APGARObservationShape_related","3") .
sh_qualifiedValueShape("ex_APGARObservationShape_related","node1hgd7v9f9x2038") .
sh_property("node1hgd7v9f9x2038","node1hgd7v9f9x2039") .
sh_path("node1hgd7v9f9x2039","ex_related_target") .
sh_node("node1hgd7v9f9x2039","node1hgd7v9f9x2040") .
sh_property("node1hgd7v9f9x2040","node1hgd7v9f9x2041") .
sh_path("node1hgd7v9f9x2041","ex_reference") .
sh_hasValue("node1hgd7v9f9x2041","ex_something") .
ex_Observation("ex_Observation1") .
ex_related("ex_Observation1","node1hgd7v9f9x2042") .
ex_related_target("node1hgd7v9f9x2042","node1hgd7v9f9x2043") .
ex_reference("node1hgd7v9f9x2043","ex_something") .
ex_related_type("node1hgd7v9f9x2042","has_component") .
ex_code("has_component") .
ex_related("ex_Observation1","node1hgd7v9f9x2044") .
ex_related_target("node1hgd7v9f9x2044","node1hgd7v9f9x2045") .
ex_reference("node1hgd7v9f9x2045","ex_something") .
ex_related_type("node1hgd7v9f9x2044","has_component") .
ex_related("ex_Observation1","node1hgd7v9f9x2046") .
ex_related_target("node1hgd7v9f9x2046","node1hgd7v9f9x2047") .
ex_reference("node1hgd7v9f9x2047","ex_unrelated") .
ex_related_type("node1hgd7v9f9x2046","has_component") .
sh_nodeShape("ex_Observation1","ex_APGARObservationShape") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgd7v9f9x2048") .
rdf_first("node1hgd7v9f9x2048","http://repairs.shacl.org/qualifiedValueShape_001") .
rdf_rest("node1hgd7v9f9x2048","rdf_nil") .
sht_Validate("http://repairs.shacl.org/qualifiedValueShape_001") .
rdfs_label("http://repairs.shacl.org/qualifiedValueShape_001","Test of sh:qualifiedValueShape at property shape 001") .
xsd_string("Test of sh:qualifiedValueShape at property shape 001") .
mf_action("http://repairs.shacl.org/qualifiedValueShape_001","node1hgd7v9f9x2049") .
sht_dataGraph("node1hgd7v9f9x2049","http://repairs.shacl.org") .
sht_shapesGraph("node1hgd7v9f9x2049","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/qualifiedValueShape_001","node1hgd7v9f9x2050") .
sh_ValidationReport("node1hgd7v9f9x2050") .
sh_conforms("node1hgd7v9f9x2050","false") .
xsd_boolean("false") .
sh_result("node1hgd7v9f9x2050","node1hgd7v9f9x2051") .
sh_ValidationResult("node1hgd7v9f9x2051") .
sh_focusNode("node1hgd7v9f9x2051","ex_Observation1") .
sh_resultPath("node1hgd7v9f9x2051","ex_related") .
sh_resultSeverity("node1hgd7v9f9x2051","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2051","sh_QualifiedMinCountConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2051","ex_APGARObservationShape_related") .
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

% sh:qualifiedMinCount 3 for ex_APGARObservationShape_related
s1_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
ex_related_(X,@new(s1,X,ex_related,1..1),"t"):-choose(s1,X,ex_related,1) .
ex_related_(X,@new(s1,X,ex_related,1..2),"t"):-choose(s1,X,ex_related,2) .
ex_related_(X,@new(s1,X,ex_related,1..3),"t"):-choose(s1,X,ex_related,3) .
choose(s1,X,ex_related,3);choose(s1,X,ex_related,2);choose(s1,X,ex_related,1);choose(s1,X,ex_related,0):-s1_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
(C-2) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s2_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-2):-s1_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>2 .
ex_related_(X,Y,"f"):-s1_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
3 {s2_(Y,"t*"):ex_related_(X,Y,"t**")} 3:-s1_(X,"t*") .

node1hgd7v9f9x2053_(X,"t*"):-s2_(X,"t*") .
node1hgd7v9f9x2053_(X,"f"):-s2_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x2053
s3_(X,"t*"):-node1hgd7v9f9x2053_(X,"t*") .
choose(s3,X,ex_related_target,0):-s3_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s3_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s4_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s3_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
0 {s4_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s3_(X,"t*") .

node1hgd7v9f9x2055_(X,"t*"):-s4_(X,"t*") .
node1hgd7v9f9x2055_(X,"f"):-s4_(X,"f") .

s5_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
ex_reference_(X,@new(s5,X,ex_reference,1..1),"t"):-choose(s5,X,ex_reference,1) .
choose(s5,X,ex_reference,1);choose(s5,X,ex_reference,0):-s5_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s5_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s6_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s5_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s6_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s5_(X,"t*") .


% sh:minCount 0 for node1hgd7v9f9x2055
s7_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
choose(s7,X,ex_reference,0):-s7_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s7_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s8_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s7_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s8_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s7_(X,"t*") .


% universal for node1hgd7v9f9x2055
s9_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
ex_reference_(X,@new(s10,X,ex_reference,1..1),"t"):-choose(s10,X,ex_reference,1) .
choose(s10,X,ex_reference,1);choose(s10,X,ex_reference,0):-s10_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s11_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s10_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s11_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s5_(X,"f");s7_(X,"f");s9_(X,"f"):-node1hgd7v9f9x2055_(X,"f") .

% universal for node1hgd7v9f9x2053
s13_(X,"t*"):-node1hgd7v9f9x2053_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_related_target_(X,@new(s14,X,ex_related_target,1..1),"t"):-choose(s14,X,ex_related_target,1) .
choose(s14,X,ex_related_target,1);choose(s14,X,ex_related_target,0):-s14_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s14_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s15_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s14_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
1 {s15_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .

node1hgd7v9f9x2055_(X,"t*"):-s16_(X,"t*") .
node1hgd7v9f9x2055_(X,"f"):-s16_(X,"f") .

s17_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
ex_reference_(X,@new(s17,X,ex_reference,1..1),"t"):-choose(s17,X,ex_reference,1) .
choose(s17,X,ex_reference,1);choose(s17,X,ex_reference,0):-s17_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s17_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s18_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s17_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s18_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s17_(X,"t*") .


s19_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
choose(s19,X,ex_reference,0):-s19_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s19_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s20_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s19_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s19_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s20_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s19_(X,"t*") .


s21_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .
ex_reference_(X,@new(s22,X,ex_reference,1..1),"t"):-choose(s22,X,ex_reference,1) .
choose(s22,X,ex_reference,1);choose(s22,X,ex_reference,0):-s22_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s22_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s23_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s22_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s23_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s22_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .


s17_(X,"f");s19_(X,"f");s21_(X,"f"):-node1hgd7v9f9x2055_(X,"f") .

s3_(X,"f");s13_(X,"f"):-node1hgd7v9f9x2053_(X,"f") .

% sh:minCount 0 for ex_APGARObservationShape_related
s25_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
choose(s25,X,ex_related,0):-s25_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s25_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s26_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
ex_related_(X,Y,"f"):-s25_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
0 {s26_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s25_(X,"t*") .


% universal for ex_APGARObservationShape_related
s27_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
ex_related_(X,@new(s28,X,ex_related,1..1),"t"):-choose(s28,X,ex_related,1) .
choose(s28,X,ex_related,1);choose(s28,X,ex_related,0):-s28_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s28_(X,"t*") .
(C-0) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s29_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>0 .
ex_related_(X,Y,"f"):-s28_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
1 {s29_(Y,"t*"):ex_related_(X,Y,"t**")} 1:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .


s1_(X,"f");s25_(X,"f");s27_(X,"f"):-ex_APGARObservationShape_related_(X,"f") .
s31_(X,"t*"):-ex_APGARObservationShape_(X,"t*") .
ex_APGARObservationShape_related_(X,"t*"):-s31_(X,"t*") .
ex_APGARObservationShape_related_(X,"f"):-s31_(X,"f") .

% sh:qualifiedMaxCount 3 for ex_APGARObservationShape_related
s32_(X,"t*"):-ex_APGARObservationShape_related_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .
ex_related_(X,@new(s33,X,ex_related,1..1),"t"):-choose(s33,X,ex_related,1) .
ex_related_(X,@new(s33,X,ex_related,1..2),"t"):-choose(s33,X,ex_related,2) .
ex_related_(X,@new(s33,X,ex_related,1..3),"t"):-choose(s33,X,ex_related,3) .
ex_related_(X,@new(s33,X,ex_related,1..4),"t"):-choose(s33,X,ex_related,4) .
choose(s33,X,ex_related,4);choose(s33,X,ex_related,3);choose(s33,X,ex_related,2);choose(s33,X,ex_related,1);choose(s33,X,ex_related,0):-s33_(X,"t*") .
0 {ex_related_(X,Y,"t"):const(Y)} 1:-s33_(X,"t*") .
(C-3) {ex_related_(X,Y,"f"):ex_related_(X,Y,"t*");s34_(Y,"f"):ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f")} (C-3):-s33_(X,"f"),#count {Y:ex_related_(X,Y,"t*")}=C,C>3 .
ex_related_(X,Y,"f"):-s33_(X,"f"),ex_related_(X,Y,"t*"),ex_related_(X,Y,"f") .
4 {s34_(Y,"t*"):ex_related_(X,Y,"t**")} 4:-s33_(X,"t*") .

node1hgd7v9f9x2053_(X,"t*"):-s34_(X,"t*") .
node1hgd7v9f9x2053_(X,"f"):-s34_(X,"f") .

s35_(X,"t*"):-node1hgd7v9f9x2053_(X,"t*") .
choose(s35,X,ex_related_target,0):-s35_(X,"t*") .
0 {ex_related_target_(X,Y,"t"):const(Y)} 1:-s35_(X,"t*") .
(C-0) {ex_related_target_(X,Y,"f"):ex_related_target_(X,Y,"t*");s36_(Y,"f"):ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:ex_related_target_(X,Y,"t*")}=C,C>0 .
ex_related_target_(X,Y,"f"):-s35_(X,"f"),ex_related_target_(X,Y,"t*"),ex_related_target_(X,Y,"f") .
0 {s36_(Y,"t*"):ex_related_target_(X,Y,"t**")} 1:-s35_(X,"t*") .

node1hgd7v9f9x2055_(X,"t*"):-s36_(X,"t*") .
node1hgd7v9f9x2055_(X,"f"):-s36_(X,"f") .

s37_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
ex_reference_(X,@new(s37,X,ex_reference,1..1),"t"):-choose(s37,X,ex_reference,1) .
choose(s37,X,ex_reference,1);choose(s37,X,ex_reference,0):-s37_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s37_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s38_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s37_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s38_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s37_(X,"t*") .


s39_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
choose(s39,X,ex_reference,0):-s39_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s39_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s40_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s39_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s40_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s39_(X,"t*") .


s41_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
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


s37_(X,"f");s39_(X,"f");s41_(X,"f"):-node1hgd7v9f9x2055_(X,"f") .

s45_(X,"t*"):-node1hgd7v9f9x2053_(X,"t*") .
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

node1hgd7v9f9x2055_(X,"t*"):-s48_(X,"t*") .
node1hgd7v9f9x2055_(X,"f"):-s48_(X,"f") .

s49_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
ex_reference_(X,@new(s49,X,ex_reference,1..1),"t"):-choose(s49,X,ex_reference,1) .
choose(s49,X,ex_reference,1);choose(s49,X,ex_reference,0):-s49_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s49_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s50_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s49_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s49_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
1 {s50_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s49_(X,"t*") .


s51_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
choose(s51,X,ex_reference,0):-s51_(X,"t*") .
0 {ex_reference_(X,Y,"t"):const(Y)} 1:-s51_(X,"t*") .
(C-0) {ex_reference_(X,Y,"f"):ex_reference_(X,Y,"t*");s52_(Y,"f"):ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f")} (C-0):-s51_(X,"f"),#count {Y:ex_reference_(X,Y,"t*")}=C,C>0 .
ex_reference_(X,Y,"f"):-s51_(X,"f"),ex_reference_(X,Y,"t*"),ex_reference_(X,Y,"f") .
0 {s52_(Y,"t*"):ex_reference_(X,Y,"t**")} 1:-s51_(X,"t*") .


s53_(X,"t*"):-node1hgd7v9f9x2055_(X,"t*") .
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


s49_(X,"f");s51_(X,"f");s53_(X,"f"):-node1hgd7v9f9x2055_(X,"f") .

s35_(X,"f");s45_(X,"f"):-node1hgd7v9f9x2053_(X,"f") .

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


s32_(X,"f");s57_(X,"f");s59_(X,"f"):-ex_APGARObservationShape_related_(X,"f") .
s0_(X,"f");s31_(X,"f"):-ex_APGARObservationShape_(X,"f") .

% Interpretation Rules

ex_related_(X,Y,"t**"):-ex_related_(X,Y,"t*"),not ex_related_(X,Y,"f") .
ex_related_target_(X,Y,"t**"):-ex_related_target_(X,Y,"t*"),not ex_related_target_(X,Y,"f") .
ex_reference_(X,Y,"t**"):-ex_reference_(X,Y,"t*"),not ex_reference_(X,Y,"f") .

% Program Constraints

:-ex_related_(X,Y,"t"),ex_related_(X,Y,"f") .
:-ex_related_target_(X,Y,"t"),ex_related_target_(X,Y,"f") .
:-ex_reference_(X,Y,"t"),ex_reference_(X,Y,"f") .
:-s6_(X,"t*"),X!="ex_something" .
:-s6_(X,"f"),X="ex_something" .
:-s8_(X,"f") .
:-s12_(X,"f") .
:-s18_(X,"t*"),X!="ex_something" .
:-s18_(X,"f"),X="ex_something" .
:-s20_(X,"f") .
:-s24_(X,"f") .
:-s26_(X,"f") .
:-s30_(X,"f") .
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
