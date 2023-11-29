
% Graph Data

sh_NodeShape("ex_AndShape") .
sh_and("ex_AndShape","node1hgd7v9f9x2598") .
rdf_first("node1hgd7v9f9x2598","ex_SuperShape") .
rdf_rest("node1hgd7v9f9x2598","node1hgd7v9f9x2599") .
rdf_first("node1hgd7v9f9x2599","node1hgd7v9f9x2600") .
sh_property("node1hgd7v9f9x2600","node1hgd7v9f9x2601") .
sh_path("node1hgd7v9f9x2601","ex_property") .
sh_maxCount("node1hgd7v9f9x2601","1") .
xsd_integer("1") .
rdf_rest("node1hgd7v9f9x2599","rdf_nil") .
sh_targetNode("ex_AndShape","ex_InvalidInstance1") .
sh_targetNode("ex_AndShape","ex_InvalidInstance2") .
sh_targetNode("ex_AndShape","ex_ValidInstance1") .
ex_property("ex_InvalidInstance2","One") .
xsd_string("One") .
ex_property("ex_InvalidInstance2","Two") .
xsd_string("Two") .
sh_NodeShape("ex_SuperShape") .
sh_property("ex_SuperShape","node1hgd7v9f9x2602") .
sh_path("node1hgd7v9f9x2602","ex_property") .
sh_minCount("node1hgd7v9f9x2602","1") .
ex_property("ex_ValidInstance1","One") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgd7v9f9x2603") .
rdf_first("node1hgd7v9f9x2603","http://repairs.shacl.org/and_002") .
rdf_rest("node1hgd7v9f9x2603","rdf_nil") .
sht_Validate("http://repairs.shacl.org/and_002") .
rdfs_label("http://repairs.shacl.org/and_002","Test of sh:and at node shape 002") .
xsd_string("Test of sh:and at node shape 002") .
mf_action("http://repairs.shacl.org/and_002","node1hgd7v9f9x2604") .
sht_dataGraph("node1hgd7v9f9x2604","http://repairs.shacl.org") .
sht_shapesGraph("node1hgd7v9f9x2604","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/and_002","node1hgd7v9f9x2605") .
sh_ValidationReport("node1hgd7v9f9x2605") .
sh_conforms("node1hgd7v9f9x2605","false") .
xsd_boolean("false") .
sh_result("node1hgd7v9f9x2605","node1hgd7v9f9x2606") .
sh_ValidationResult("node1hgd7v9f9x2606") .
sh_focusNode("node1hgd7v9f9x2606","ex_InvalidInstance1") .
sh_resultSeverity("node1hgd7v9f9x2606","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2606","sh_AndConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2606","ex_AndShape") .
sh_value("node1hgd7v9f9x2606","ex_InvalidInstance1") .
sh_result("node1hgd7v9f9x2605","node1hgd7v9f9x2607") .
sh_ValidationResult("node1hgd7v9f9x2607") .
sh_focusNode("node1hgd7v9f9x2607","ex_InvalidInstance2") .
sh_resultSeverity("node1hgd7v9f9x2607","sh_Violation") .
sh_sourceConstraintComponent("node1hgd7v9f9x2607","sh_AndConstraintComponent") .
sh_sourceShape("node1hgd7v9f9x2607","ex_AndShape") .
sh_value("node1hgd7v9f9x2607","ex_InvalidInstance2") .
mf_status("http://repairs.shacl.org/and_002","sht_approved") .

% Shape Targets

targetNode("ex_ValidInstance1",ex_AndShape) .
targetNode("ex_InvalidInstance1",ex_AndShape) .
targetNode("ex_InvalidInstance2",ex_AndShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_AndShape_("ex_ValidInstance1","t*"):-actualTarget("ex_ValidInstance1",ex_AndShape) .
ex_AndShape_("ex_InvalidInstance1","t*"):-actualTarget("ex_InvalidInstance1",ex_AndShape) .
ex_AndShape_("ex_InvalidInstance2","t*"):-actualTarget("ex_InvalidInstance2",ex_AndShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-ex_AndShape_(X,"t*") .
node1hgd7v9f9x2612_(X,"t*"):-s0_(X,"t*") .
node1hgd7v9f9x2612_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for node1hgd7v9f9x2612
s1_(X,"t*"):-node1hgd7v9f9x2612_(X,"t*") .
ex_property_(X,@new(s1,X,ex_property,1..1),"t"):-choose(s1,X,ex_property,1) .
choose(s1,X,ex_property,1);choose(s1,X,ex_property,0):-s1_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s2_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s1_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1hgd7v9f9x2612
s3_(X,"t*"):-node1hgd7v9f9x2612_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_property_(X,@new(s4,X,ex_property,1..1),"t"):-choose(s4,X,ex_property,1) .
choose(s4,X,ex_property,1);choose(s4,X,ex_property,0):-s4_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s5_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s4_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hgd7v9f9x2612_(X,"f") .
s7_(X,"t*"):-ex_AndShape_(X,"t*") .
node1hgd7v9f9x2611_(X,"t*"):-s7_(X,"t*") .
node1hgd7v9f9x2611_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x2611
s8_(X,"t*"):-node1hgd7v9f9x2611_(X,"t*") .
choose(s8,X,ex_property,0):-s8_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s9_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s8_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s9_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s8_(X,"t*") .


% sh:maxCount 1 for node1hgd7v9f9x2611
s10_(X,"t*"):-node1hgd7v9f9x2611_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_property_(X,@new(s11,X,ex_property,1..1),"t"):-choose(s11,X,ex_property,1) .
ex_property_(X,@new(s11,X,ex_property,1..2),"t"):-choose(s11,X,ex_property,2) .
choose(s11,X,ex_property,2);choose(s11,X,ex_property,1);choose(s11,X,ex_property,0):-s11_(X,"t*") .
(C-1) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s12_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-1):-s11_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>1 .
ex_property_(X,Y,"f"):-s11_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
2 {s12_(Y,"t*"):ex_property_(X,Y,"t**")} 2:-s11_(X,"t*") .


% universal for node1hgd7v9f9x2611
s13_(X,"t*"):-node1hgd7v9f9x2611_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_property_(X,@new(s14,X,ex_property,1..1),"t"):-choose(s14,X,ex_property,1) .
choose(s14,X,ex_property,1);choose(s14,X,ex_property,0):-s14_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s15_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s14_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s15_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s10_(X,"f");s13_(X,"f"):-node1hgd7v9f9x2611_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_AndShape_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
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
