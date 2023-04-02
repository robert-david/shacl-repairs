
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
mf_entries("http://repairs.shacl.org","node1g835dclmx476") .
rdf_first("node1g835dclmx476","http://repairs.shacl.org/node_002") .
rdf_rest("node1g835dclmx476","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node_002") .
rdfs_label("http://repairs.shacl.org/node_002","Test of sh:node at property shape 002") .
xsd_string("Test of sh:node at property shape 002") .
mf_action("http://repairs.shacl.org/node_002","node1g835dclmx477") .
sht_dataGraph("node1g835dclmx477","http://repairs.shacl.org") .
sht_shapesGraph("node1g835dclmx477","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node_002","node1g835dclmx478") .
sh_ValidationReport("node1g835dclmx478") .
sh_conforms("node1g835dclmx478","false") .
xsd_boolean("false") .
sh_result("node1g835dclmx478","node1g835dclmx479") .
sh_ValidationResult("node1g835dclmx479") .
sh_focusNode("node1g835dclmx479","ex_Reto") .
sh_resultPath("node1g835dclmx479","ex_address") .
sh_resultSeverity("node1g835dclmx479","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx479","sh_NodeConstraintComponent") .
sh_sourceShape("node1g835dclmx479","ex_PersonShape_address") .
sh_value("node1g835dclmx479","ex_RetosAddress") .
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

ex_PersonShape_address_(X,"t*"):-ex_PersonShape_(X,"t*") .

% sh:minCount 1 for ex_PersonShape_address
s0_(X,"t*"):-ex_PersonShape_address_(X,"t*") .
ex_address_(X,@new(s0,X,ex_address,1..1),"t"):-choose(s0,X,ex_address,1) .
choose(s0,X,ex_address,1);choose(s0,X,ex_address,0):-s0_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address(X,Y);s1_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
1 {s1_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s0_(X,"t*") .

ex_AddressShape_postalCode_(X,"t*"):-s1_(X,"t*") .
ex_AddressShape_postalCode_(X,"f"):-s1_(X,"f") .

% sh:minCount 0 for ex_AddressShape_postalCode
s2_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
choose(s2,X,ex_postalCode,0):-s2_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode(X,Y);s3_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
0 {s3_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 0:-s2_(X,"t*") .

xsd_string_(X,"t"):-s3_(X,"t*") .
xsd_string_(X,"f"):-s3_(X,"f") .

% sh:maxCount 1 for ex_AddressShape_postalCode
s4_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
ex_postalCode_(X,@new(s5,X,ex_postalCode,1..1),"t"):-choose(s5,X,ex_postalCode,1) .
ex_postalCode_(X,@new(s5,X,ex_postalCode,1..2),"t"):-choose(s5,X,ex_postalCode,2) .
choose(s5,X,ex_postalCode,2);choose(s5,X,ex_postalCode,1);choose(s5,X,ex_postalCode,0):-s5_(X,"t*") .
(C-1) {ex_postalCode_(X,Y,"f"):ex_postalCode(X,Y);s6_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-1):-s5_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>1 .
2 {s6_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 2:-s5_(X,"t*") .

xsd_string_(X,"t"):-s6_(X,"t*") .
xsd_string_(X,"f"):-s6_(X,"f") .

% universal for ex_AddressShape_postalCode
s7_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .
ex_postalCode_(X,@new(s8,X,ex_postalCode,1..1),"t"):-choose(s8,X,ex_postalCode,1) .
choose(s8,X,ex_postalCode,1);choose(s8,X,ex_postalCode,0):-s8_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode(X,Y);s9_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s8_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .

xsd_string_(X,"t"):-s10_(X,"t*") .
xsd_string_(X,"f"):-s10_(X,"f") .

s2_(X,"f");s4_(X,"f");s7_(X,"f"):-ex_AddressShape_postalCode_(X,"f") .

% universal for ex_PersonShape_address
s11_(X,"t*"):-ex_PersonShape_address_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
ex_address_(X,@new(s12,X,ex_address,1..1),"t"):-choose(s12,X,ex_address,1) .
choose(s12,X,ex_address,1);choose(s12,X,ex_address,0):-s12_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address(X,Y);s13_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
1 {s13_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .

ex_AddressShape_postalCode_(X,"t*"):-s14_(X,"t*") .
ex_AddressShape_postalCode_(X,"f"):-s14_(X,"f") .

s15_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
ex_postalCode_(X,@new(s16,X,ex_postalCode,1..1),"t"):-choose(s16,X,ex_postalCode,1) .
ex_postalCode_(X,@new(s16,X,ex_postalCode,1..2),"t"):-choose(s16,X,ex_postalCode,2) .
choose(s16,X,ex_postalCode,2);choose(s16,X,ex_postalCode,1);choose(s16,X,ex_postalCode,0):-s16_(X,"t*") .
(C-1) {ex_postalCode_(X,Y,"f"):ex_postalCode(X,Y);s17_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-1):-s16_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>1 .
2 {s17_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 2:-s16_(X,"t*") .

xsd_string_(X,"t"):-s17_(X,"t*") .
xsd_string_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
choose(s18,X,ex_postalCode,0):-s18_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode(X,Y);s19_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
0 {s19_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 0:-s18_(X,"t*") .

xsd_string_(X,"t"):-s19_(X,"t*") .
xsd_string_(X,"f"):-s19_(X,"f") .

s20_(X,"t*"):-ex_AddressShape_postalCode_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
ex_postalCode_(X,@new(s21,X,ex_postalCode,1..1),"t"):-choose(s21,X,ex_postalCode,1) .
choose(s21,X,ex_postalCode,1);choose(s21,X,ex_postalCode,0):-s21_(X,"t*") .
(C-0) {ex_postalCode_(X,Y,"f"):ex_postalCode(X,Y);s22_(Y,"f"):ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:ex_postalCode_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):ex_postalCode_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .

xsd_string_(X,"t"):-s23_(X,"t*") .
xsd_string_(X,"f"):-s23_(X,"f") .

s15_(X,"f");s18_(X,"f");s20_(X,"f"):-ex_AddressShape_postalCode_(X,"f") .

s0_(X,"f");s11_(X,"f"):-ex_PersonShape_address_(X,"f") .
ex_PersonShape_address_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_address_(X,Y,"t**"):-ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f") .
ex_postalCode_(X,Y,"t**"):-ex_postalCode_(X,Y,"t*"),not ex_postalCode_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_address_(X,Y,"t"),ex_address_(X,Y,"f") .
:-ex_postalCode_(X,Y,"t"),ex_postalCode_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .

% Change Set Rules

add(ex_address(X,Y)):-ex_address_(X,Y,"t**"),not ex_address(X,Y) .
del(ex_address(X,Y)):-ex_address_(X,Y,"f"),ex_address(X,Y) .
add(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"t**"),not ex_postalCode(X,Y) .
del(ex_postalCode(X,Y)):-ex_postalCode_(X,Y,"f"),ex_postalCode(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
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
