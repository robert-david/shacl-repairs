
% Graph Data

sh_NodeShape("ex_AddressShape") .
sh_property("ex_AddressShape","ex_AddressShape_postalCode") .
sh_path("ex_AddressShape_postalCode","ex_postalCode") .
sh_datatype("ex_AddressShape_postalCode","xsd_string") .
sh_maxCount("ex_AddressShape_postalCode","1") .
xsd_integer("1") .
ex_Person("ex_Bob") .
ex_address("ex_Bob","ex_BobsAddress") .
ex_postalCode("ex_BobsAddress","1234") .
xsd_string("1234") .
rdfs_Class("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
sh_NodeShape("ex_PersonShape") .
sh_property("ex_PersonShape","ex_PersonShape_address") .
sh_targetClass("ex_PersonShape","ex_Person") .
sh_path("ex_PersonShape_address","ex_address") .
sh_minCount("ex_PersonShape_address","1") .
sh_node("ex_PersonShape_address","ex_AddressShape") .
ex_Person("ex_Reto") .
ex_address("ex_Reto","ex_RetosAddress") .
ex_postalCode("ex_RetosAddress","5678") .
xsd_integer("5678") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgobhchgx604") .
rdf_first("node1hgobhchgx604","http://repairs.shacl.org/node_002") .
rdf_rest("node1hgobhchgx604","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node_002") .
rdfs_label("http://repairs.shacl.org/node_002","Test of sh:node at property shape 002") .
xsd_string("Test of sh:node at property shape 002") .
mf_action("http://repairs.shacl.org/node_002","node1hgobhchgx605") .
sht_dataGraph("node1hgobhchgx605","http://repairs.shacl.org") .
sht_shapesGraph("node1hgobhchgx605","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node_002","node1hgobhchgx606") .
sh_ValidationReport("node1hgobhchgx606") .
sh_conforms("node1hgobhchgx606","false") .
xsd_boolean("false") .
sh_result("node1hgobhchgx606","node1hgobhchgx607") .
sh_ValidationResult("node1hgobhchgx607") .
sh_focusNode("node1hgobhchgx607","ex_Reto") .
sh_resultPath("node1hgobhchgx607","ex_address") .
sh_resultSeverity("node1hgobhchgx607","sh_Violation") .
sh_sourceConstraintComponent("node1hgobhchgx607","sh_NodeConstraintComponent") .
sh_sourceShape("node1hgobhchgx607","ex_PersonShape_address") .
sh_value("node1hgobhchgx607","ex_RetosAddress") .
mf_status("http://repairs.shacl.org/node_002","sht_approved") .

% Shape Targets

targetNode("ex_Bob",ex_PersonShape) .
targetNode("ex_Reto",ex_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_PersonShape_("ex_Bob","t*"):-actualTarget("ex_Bob",ex_PersonShape) .
ex_PersonShape_("ex_Reto","t*"):-actualTarget("ex_Reto",ex_PersonShape) .

% Annotation Rules

ex_address_(X,Y,"t*"):-ex_address(X,Y) .
ex_address_(X,Y,"t*"):-ex_address_(X,Y,"t") .
ex_postalCode_(X,Y,"t*"):-ex_postalCode(X,Y) .
ex_postalCode_(X,Y,"t*"):-ex_postalCode_(X,Y,"t") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_address_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape_address_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for ex_PersonShape_address
s1_(X,"t*"):-ex_PersonShape_address_(X,"t*") .
choose(s1,X,ex_address,0):-s1_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s2_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-s1_(X,"f"),ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_address_(X,Y,"t**")} 0:-s1_(X,"t*") .

ex_AddressShape_postalCode_(X,"t*"):-s2_(X,"t*") .
ex_AddressShape_postalCode_(X,"f"):-s2_(X,"f") .

% sh:maxCount 1 for ex_AddressShape_postalCode
s3_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_postalCode_(X,@new(s4,X,ex_postalCode,1..1),"t"):-choose(s4,X,ex_postalCode,1) .
ex_postalCode_(X,@new(s4,X,ex_postalCode,1..2),"t"):-choose(s4,X,ex_postalCode,2) .
choose(s4,X,ex_postalCode,2);choose(s4,X,ex_postalCode,1);choose(s4,X,ex_postalCode,0):-s4_(X,"t*") .
(C-1) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s5_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-1):-s4_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>1 .
ex_postalCode_(X,Y,"f"):-s4_(X,"f"),ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
2 {s5_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 2:-s4_(X,"t*") .

xsd_string_(X,"t"):-s5_(X,"t*") .
xsd_string_(X,"f"):-s5_(X,"f") .

% sh:minCount 0 for ex_AddressShape_postalCode
s6_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
choose(s6,X,ex_postalCode,0):-s6_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s7_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
ex_postalCode_(X,Y,"f"):-s6_(X,"f"),ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
0 {s7_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 0:-s6_(X,"t*") .

xsd_string_(X,"t"):-s7_(X,"t*") .
xsd_string_(X,"f"):-s7_(X,"f") .

% universal for ex_AddressShape_postalCode
s8_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
ex_postalCode_(X,@new(s9,X,ex_postalCode,1..1),"t"):-choose(s9,X,ex_postalCode,1) .
choose(s9,X,ex_postalCode,1);choose(s9,X,ex_postalCode,0):-s9_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s10_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
ex_postalCode_(X,Y,"f"):-s9_(X,"f"),ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
1 {s10_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s9_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .

xsd_string_(X,"t"):-s11_(X,"t*") .
xsd_string_(X,"f"):-s11_(X,"f") .

s3_(X,"f");s6_(X,"f");s8_(X,"f"):-ex_AddressShape_postalCode_(X,"f") .

% universal for ex_PersonShape_address
s12_(X,"t*"):-ex_PersonShape_address_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
ex_address_(X,@new(s13,X,ex_address,1..1),"t"):-choose(s13,X,ex_address,1) .
choose(s13,X,ex_address,1);choose(s13,X,ex_address,0):-s13_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s14_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-s13_(X,"f"),ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
1 {s14_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .

ex_AddressShape_postalCode_(X,"t*"):-s15_(X,"t*") .
ex_AddressShape_postalCode_(X,"f"):-s15_(X,"f") .

s16_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
ex_postalCode_(X,@new(s17,X,ex_postalCode,1..1),"t"):-choose(s17,X,ex_postalCode,1) .
ex_postalCode_(X,@new(s17,X,ex_postalCode,1..2),"t"):-choose(s17,X,ex_postalCode,2) .
choose(s17,X,ex_postalCode,2);choose(s17,X,ex_postalCode,1);choose(s17,X,ex_postalCode,0):-s17_(X,"t*") .
(C-1) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s18_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-1):-s17_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>1 .
ex_postalCode_(X,Y,"f"):-s17_(X,"f"),ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
2 {s18_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 2:-s17_(X,"t*") .

xsd_string_(X,"t"):-s18_(X,"t*") .
xsd_string_(X,"f"):-s18_(X,"f") .

s19_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
choose(s19,X,ex_postalCode,0):-s19_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s20_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s19_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
ex_postalCode_(X,Y,"f"):-s19_(X,"f"),ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
0 {s20_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 0:-s19_(X,"t*") .

xsd_string_(X,"t"):-s20_(X,"t*") .
xsd_string_(X,"f"):-s20_(X,"f") .

s21_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .
ex_postalCode_(X,@new(s22,X,ex_postalCode,1..1),"t"):-choose(s22,X,ex_postalCode,1) .
choose(s22,X,ex_postalCode,1);choose(s22,X,ex_postalCode,0):-s22_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode_(X,Y,"t*");s23_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
ex_postalCode_(X,Y,"f"):-s22_(X,"f"),ex_postalCode_(X,Y,"t*"),ex_postalCode_(X,Y,"f") .
1 {s23_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s22_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .

xsd_string_(X,"t"):-s24_(X,"t*") .
xsd_string_(X,"f"):-s24_(X,"f") .

s16_(X,"f");s19_(X,"f");s21_(X,"f"):-ex_AddressShape_postalCode_(X,"f") .

s1_(X,"f");s12_(X,"f"):-ex_PersonShape_address_(X,"f") .
s25_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_address_(X,"t*"):-s25_(X,"t*") .
ex_PersonShape_address_(X,"f"):-s25_(X,"f") .

% sh:minCount 1 for ex_PersonShape_address
s26_(X,"t*"):-ex_PersonShape_address_(X,"t*") .
ex_address_(X,@new(s26,X,ex_address,1..1),"t"):-choose(s26,X,ex_address,1) .
choose(s26,X,ex_address,1);choose(s26,X,ex_address,0):-s26_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s27_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s26_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-s26_(X,"f"),ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
1 {s27_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s26_(X,"t*") .


s28_(X,"t*"):-ex_PersonShape_address_(X,"t*") .
s29_(X,"f"):-s28_(X,"t*") .
s29_(X,"t*"):-s28_(X,"f") .
ex_address_(X,@new(s29,X,ex_address,1..1),"t"):-choose(s29,X,ex_address,1) .
choose(s29,X,ex_address,1);choose(s29,X,ex_address,0):-s29_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s30_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s29_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-s29_(X,"f"),ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
1 {s30_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s29_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .


s26_(X,"f");s28_(X,"f"):-ex_PersonShape_address_(X,"f") .
s0_(X,"f");s25_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_address_(X,Y,"t**"):-ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f") .
ex_postalCode_(X,Y,"t**"):-ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_address_(X,Y,"t"),ex_address_(X,Y,"f") .
:-ex_postalCode_(X,Y,"t"),ex_postalCode_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s27_(X,"f") .
:-s31_(X,"f") .

% Change Set Rules

add(ex_address(X,Y)):-ex_address_(X,Y,"t**"),not ex_address(X,Y) .
del(ex_address(X,Y)):-ex_address_(X,Y,"f"),ex_address(X,Y) .
add(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"t**"),not ex_postalCode(X,Y) .
del(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"f"),ex_postalCode(X,Y) .
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
