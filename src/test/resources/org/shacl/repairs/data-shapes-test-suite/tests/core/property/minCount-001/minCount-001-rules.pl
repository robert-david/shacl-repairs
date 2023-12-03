
% Graph Data

ex_Person("ex_InvalidPerson") .
rdfs_label("ex_InvalidPerson","Invalid person") .
xsd_string("Invalid person") .
rdfs_Class("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
rdfs_Resource(X):-ex_Person(X) .
sh_NodeShape("ex_PersonShape") .
sh_property("ex_PersonShape","ex_PersonShape_firstName") .
sh_targetClass("ex_PersonShape","ex_Person") .
sh_targetNode("ex_PersonShape","ex_ValidResource") .
sh_path("ex_PersonShape_firstName","ex_firstName") .
sh_datatype("ex_PersonShape_firstName","xsd_string") .
sh_minCount("ex_PersonShape_firstName","1") .
xsd_integer("1") .
ex_Person("ex_ValidResource") .
ex_firstName("ex_ValidResource","John") .
xsd_string("John") .
rdfs_label("ex_ValidResource","Valid resource") .
xsd_string("Valid resource") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgobhchgx407") .
rdf_first("node1hgobhchgx407","http://repairs.shacl.org/minCount_001") .
rdf_rest("node1hgobhchgx407","rdf_nil") .
sht_Validate("http://repairs.shacl.org/minCount_001") .
rdfs_label("http://repairs.shacl.org/minCount_001","Test of sh:minCount at property shape 001") .
xsd_string("Test of sh:minCount at property shape 001") .
mf_action("http://repairs.shacl.org/minCount_001","node1hgobhchgx408") .
sht_dataGraph("node1hgobhchgx408","http://repairs.shacl.org") .
sht_shapesGraph("node1hgobhchgx408","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/minCount_001","node1hgobhchgx409") .
sh_ValidationReport("node1hgobhchgx409") .
sh_conforms("node1hgobhchgx409","false") .
xsd_boolean("false") .
sh_result("node1hgobhchgx409","node1hgobhchgx410") .
sh_ValidationResult("node1hgobhchgx410") .
sh_focusNode("node1hgobhchgx410","ex_InvalidPerson") .
sh_resultPath("node1hgobhchgx410","ex_firstName") .
sh_resultSeverity("node1hgobhchgx410","sh_Violation") .
sh_sourceConstraintComponent("node1hgobhchgx410","sh_MinCountConstraintComponent") .
sh_sourceShape("node1hgobhchgx410","ex_PersonShape_firstName") .
mf_status("http://repairs.shacl.org/minCount_001","sht_approved") .

% Shape Targets

targetNode("ex_InvalidPerson",ex_PersonShape) .
targetNode("ex_ValidResource",ex_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_PersonShape_("ex_InvalidPerson","t*"):-actualTarget("ex_InvalidPerson",ex_PersonShape) .
ex_PersonShape_("ex_ValidResource","t*"):-actualTarget("ex_ValidResource",ex_PersonShape) .

% Annotation Rules

ex_firstName_(X,Y,"t*"):-ex_firstName(X,Y) .
ex_firstName_(X,Y,"t*"):-ex_firstName_(X,Y,"t") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for ex_PersonShape_firstName
s1_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
ex_firstName_(X,@new(s1,X,ex_firstName,1..1),"t"):-choose(s1,X,ex_firstName,1) .
choose(s1,X,ex_firstName,1);choose(s1,X,ex_firstName,0):-s1_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s1_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for ex_PersonShape_firstName
s3_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s4_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s7_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s7_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for ex_PersonShape_firstName
s8_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
choose(s8,X,ex_firstName,0):-s8_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s9_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s8_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s9_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s8_(X,"t*") .

xsd_string_(X,"t"):-s9_(X,"t*") .
xsd_string_(X,"f"):-s9_(X,"f") .

s10_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_firstName_(X,@new(s11,X,ex_firstName,1..1),"t"):-choose(s11,X,ex_firstName,1) .
choose(s11,X,ex_firstName,1);choose(s11,X,ex_firstName,0):-s11_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s12_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s11_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s12_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

xsd_string_(X,"t"):-s13_(X,"t*") .
xsd_string_(X,"f"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s14_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s14_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s14_(X,"f") .

s15_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
ex_firstName_(X,@new(s15,X,ex_firstName,1..1),"t"):-choose(s15,X,ex_firstName,1) .
choose(s15,X,ex_firstName,1);choose(s15,X,ex_firstName,0):-s15_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s16_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s15_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s16_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s15_(X,"t*") .


s17_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
ex_firstName_(X,@new(s18,X,ex_firstName,1..1),"t"):-choose(s18,X,ex_firstName,1) .
choose(s18,X,ex_firstName,1);choose(s18,X,ex_firstName,0):-s18_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s19_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s18_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s19_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s18_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .


s15_(X,"f");s17_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s21_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s21_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s21_(X,"f") .

s22_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
choose(s22,X,ex_firstName,0):-s22_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s23_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s22_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s23_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s22_(X,"t*") .

xsd_string_(X,"t"):-s23_(X,"t*") .
xsd_string_(X,"f"):-s23_(X,"f") .

s24_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
ex_firstName_(X,@new(s25,X,ex_firstName,1..1),"t"):-choose(s25,X,ex_firstName,1) .
choose(s25,X,ex_firstName,1);choose(s25,X,ex_firstName,0):-s25_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s26_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s25_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s26_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s25_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .

xsd_string_(X,"t"):-s27_(X,"t*") .
xsd_string_(X,"f"):-s27_(X,"f") .

s22_(X,"f");s24_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s0_(X,"f");s7_(X,"f");s14_(X,"f");s21_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s16_(X,"f") .
:-s20_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
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
