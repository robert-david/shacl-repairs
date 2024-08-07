
% Graph Data

ex_Person("ex_InvalidPerson") .
ex_firstName("ex_InvalidPerson","George") .
xsd_string("George") .
ex_firstName("ex_InvalidPerson","John") .
xsd_string("John") .
rdfs_label("ex_InvalidPerson","Invalid person") .
xsd_string("Invalid person") .
rdfs_Class("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
rdfs_subClassOf("ex_Person","rdfs_Resource") .
sh_NodeShape("ex_PersonShape") .
sh_property("ex_PersonShape","ex_PersonShape_firstName") .
sh_targetClass("ex_PersonShape","ex_Person") .
sh_targetNode("ex_PersonShape","ex_ValidResource") .
sh_path("ex_PersonShape_firstName","ex_firstName") .
sh_datatype("ex_PersonShape_firstName","xsd_string") .
sh_maxCount("ex_PersonShape_firstName","1") .
xsd_integer("1") .
ex_Person("ex_ValidResource") .
ex_firstName("ex_ValidResource","John") .
rdfs_label("ex_ValidResource","Valid resource") .
xsd_string("Valid resource") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_6e957a6331f648adaec55884eab70e68254") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e68254","http://repairs.shacl.org/maxCount_001") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e68254","rdf_nil") .
sht_Validate("http://repairs.shacl.org/maxCount_001") .
rdfs_label("http://repairs.shacl.org/maxCount_001","Test of sh:maxCount at property shape 001") .
xsd_string("Test of sh:maxCount at property shape 001") .
mf_action("http://repairs.shacl.org/maxCount_001","bnode_6e957a6331f648adaec55884eab70e68255") .
sht_dataGraph("bnode_6e957a6331f648adaec55884eab70e68255","http://repairs.shacl.org") .
sht_shapesGraph("bnode_6e957a6331f648adaec55884eab70e68255","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/maxCount_001","bnode_6e957a6331f648adaec55884eab70e68256") .
sh_ValidationReport("bnode_6e957a6331f648adaec55884eab70e68256") .
sh_conforms("bnode_6e957a6331f648adaec55884eab70e68256","false") .
xsd_boolean("false") .
sh_result("bnode_6e957a6331f648adaec55884eab70e68256","bnode_6e957a6331f648adaec55884eab70e68257") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e68257") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e68257","ex_InvalidPerson") .
sh_resultPath("bnode_6e957a6331f648adaec55884eab70e68257","ex_firstName") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e68257","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e68257","sh_MaxCountConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e68257","ex_PersonShape_firstName") .
mf_status("http://repairs.shacl.org/maxCount_001","sht_approved") .
rdfs_Datatype("xsd_byte") .
rdfs_Datatype("xsd_date") .
rdfs_Datatype("xsd_decimal") .
rdfs_Datatype("xsd_double") .
rdfs_Datatype("xsd_float") .
rdfs_Datatype("xsd_int") .
rdfs_Datatype("xsd_integer") .
rdfs_Datatype("xsd_language") .
rdfs_Datatype("xsd_long") .
rdfs_Datatype("xsd_negativeInteger") .
rdfs_Datatype("xsd_nonNegativeInteger") .
rdfs_Datatype("xsd_nonPositiveInteger") .
rdfs_Datatype("xsd_positiveInteger") .
rdfs_Datatype("xsd_short") .
rdfs_Datatype("xsd_string") .
rdfs_Datatype("xsd_unsignedByte") .
rdfs_Datatype("xsd_unsignedInt") .
rdfs_Datatype("xsd_unsignedLong") .
rdfs_Datatype("xsd_unsignedShort") .
rdfs_Datatype("owl_rational") .
rdfs_Datatype("owl_real") .

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
ex_PersonShape_firstName_st_(X,Y,"t*"):-ex_PersonShape_firstName_(X,_),ex_firstName_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for ex_PersonShape_firstName
s1_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s1_(X,"t*") .

xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .

% universal for ex_PersonShape_firstName
s3_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

xsd_string_(X,"t"):-s6_(X,"t*") .
xsd_string_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s7_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s7_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s7_(X,"f") .

% sh:maxCount 1 for ex_PersonShape_firstName
s8_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
ex_firstName_(X,@new(s9,X,ex_firstName,1..1),"t"):-choose(s9,X,ex_firstName,1) .
ex_firstName_(X,@new(s9,X,ex_firstName,1..2),"t"):-choose(s9,X,ex_firstName,2) .
choose(s9,X,ex_firstName,2);choose(s9,X,ex_firstName,1);choose(s9,X,ex_firstName,0):-s9_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s10_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s9_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s10_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s9_(X,"t*") .


s11_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s12_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s12_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s11_(X,"t*") .


s13_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
ex_firstName_(X,@new(s14,X,ex_firstName,1..1),"t"):-choose(s14,X,ex_firstName,1) .
choose(s14,X,ex_firstName,1);choose(s14,X,ex_firstName,0):-s14_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s15_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s11_(X,"f");s13_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s17_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s17_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s19_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s19_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s18_(X,"t*") .


s20_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
ex_firstName_(X,@new(s21,X,ex_firstName,1..1),"t"):-choose(s21,X,ex_firstName,1) .
ex_firstName_(X,@new(s21,X,ex_firstName,1..2),"t"):-choose(s21,X,ex_firstName,2) .
choose(s21,X,ex_firstName,2);choose(s21,X,ex_firstName,1);choose(s21,X,ex_firstName,0):-s21_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s22_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s21_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s22_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s21_(X,"t*") .


s23_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .
ex_firstName_(X,@new(s24,X,ex_firstName,1..1),"t"):-choose(s24,X,ex_firstName,1) .
choose(s24,X,ex_firstName,1);choose(s24,X,ex_firstName,0):-s24_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s25_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s24_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s25_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s24_(X,"t*") .
s26_(X,"f"):-s25_(X,"t*") .
s26_(X,"t*"):-s25_(X,"f") .


s18_(X,"f");s20_(X,"f");s23_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s27_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_firstName_(X,"t*"):-s27_(X,"t*") .
ex_PersonShape_firstName_(X,"f"):-s27_(X,"f") .

s28_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s29_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s29_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s28_(X,"t*") .

xsd_string_(X,"t"):-s29_(X,"t*") .
xsd_string_(X,"f"):-s29_(X,"f") .

s30_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
ex_firstName_(X,@new(s31,X,ex_firstName,1..1),"t"):-choose(s31,X,ex_firstName,1) .
choose(s31,X,ex_firstName,1);choose(s31,X,ex_firstName,0):-s31_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s32_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s32_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .

xsd_string_(X,"t"):-s33_(X,"t*") .
xsd_string_(X,"f"):-s33_(X,"f") .

s28_(X,"f");s30_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
s0_(X,"f");s7_(X,"f");s17_(X,"f");s27_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
ex_PersonShape_firstName_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),ex_PersonShape_firstName_st_(X,Y,"t*"),not ex_PersonShape_firstName_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s10_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s19_(X,"f") .
:-s22_(X,"f") .
:-s26_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@5,X,S: skipTarget(X,S) } .

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
