
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
rdfs_Resource(X):-ex_Person(X) .
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
mf_entries("http://repairs.shacl.org","node1g835dclmx234") .
rdf_first("node1g835dclmx234","http://repairs.shacl.org/maxCount_001") .
rdf_rest("node1g835dclmx234","rdf_nil") .
sht_Validate("http://repairs.shacl.org/maxCount_001") .
rdfs_label("http://repairs.shacl.org/maxCount_001","Test of sh:maxCount at property shape 001") .
xsd_string("Test of sh:maxCount at property shape 001") .
mf_action("http://repairs.shacl.org/maxCount_001","node1g835dclmx235") .
sht_dataGraph("node1g835dclmx235","http://repairs.shacl.org") .
sht_shapesGraph("node1g835dclmx235","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/maxCount_001","node1g835dclmx236") .
sh_ValidationReport("node1g835dclmx236") .
sh_conforms("node1g835dclmx236","false") .
xsd_boolean("false") .
sh_result("node1g835dclmx236","node1g835dclmx237") .
sh_ValidationResult("node1g835dclmx237") .
sh_focusNode("node1g835dclmx237","ex_InvalidPerson") .
sh_resultPath("node1g835dclmx237","ex_firstName") .
sh_resultSeverity("node1g835dclmx237","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx237","sh_MaxCountConstraintComponent") .
sh_sourceShape("node1g835dclmx237","ex_PersonShape_firstName") .
mf_status("http://repairs.shacl.org/maxCount_001","sht_approved") .

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

ex_PersonShape_firstName_(X,"t*"):-ex_PersonShape_(X,"t*") .

% sh:maxCount 1 for ex_PersonShape_firstName
s0_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
ex_firstName_(X,@new(s1,X,ex_firstName,1..1),"t"):-choose(s1,X,ex_firstName,1) .
ex_firstName_(X,@new(s1,X,ex_firstName,1..2),"t"):-choose(s1,X,ex_firstName,2) .
choose(s1,X,ex_firstName,2);choose(s1,X,ex_firstName,1);choose(s1,X,ex_firstName,0):-s1_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s1_(X,"t*") .

s3_(X,"t*"):-s2_(X,"t*") .
xsd_string_(X,"t"):-s3_(X,"t*") .
xsd_string_(X,"f"):-s3_(X,"f") .
s4_(X,"t*"):-s2_(X,"t*") .
xsd_string_(X,"t"):-s4_(X,"t*") .
xsd_string_(X,"f"):-s4_(X,"f") .
s3_(X,"f");s4_(X,"f"):-s2_(X,"f") .

% sh:minCount 0 for ex_PersonShape_firstName
s5_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
choose(s5,X,ex_firstName,0):-s5_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s6_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s6_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s5_(X,"t*") .

s7_(X,"t*"):-s6_(X,"t*") .
xsd_string_(X,"t"):-s7_(X,"t*") .
xsd_string_(X,"f"):-s7_(X,"f") .
s8_(X,"t*"):-s6_(X,"t*") .
xsd_string_(X,"t"):-s8_(X,"t*") .
xsd_string_(X,"f"):-s8_(X,"f") .
s7_(X,"f");s8_(X,"f"):-s6_(X,"f") .

s9_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
ex_firstName_(X,@new(s10,X,ex_firstName,1..1),"t"):-choose(s10,X,ex_firstName,1) .
ex_firstName_(X,@new(s10,X,ex_firstName,1..2),"t"):-choose(s10,X,ex_firstName,2) .
choose(s10,X,ex_firstName,2);choose(s10,X,ex_firstName,1);choose(s10,X,ex_firstName,0):-s10_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s11_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s10_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s11_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s10_(X,"t*") .

s12_(X,"t*"):-s11_(X,"t*") .
xsd_string_(X,"t"):-s12_(X,"t*") .
xsd_string_(X,"f"):-s12_(X,"f") .
s13_(X,"t*"):-s11_(X,"t*") .
xsd_string_(X,"t"):-s13_(X,"t*") .
xsd_string_(X,"f"):-s13_(X,"f") .
s12_(X,"f");s13_(X,"f"):-s11_(X,"f") .

% universal for ex_PersonShape_firstName
s14_(X,"t*"):-ex_PersonShape_firstName_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
ex_firstName_(X,@new(s15,X,ex_firstName,1..1),"t"):-choose(s15,X,ex_firstName,1) .
choose(s15,X,ex_firstName,1);choose(s15,X,ex_firstName,0):-s15_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s16_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s16_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .

s18_(X,"t*"):-s17_(X,"t*") .
xsd_string_(X,"t"):-s18_(X,"t*") .
xsd_string_(X,"f"):-s18_(X,"f") .
s19_(X,"t*"):-s17_(X,"t*") .
xsd_string_(X,"t"):-s19_(X,"t*") .
xsd_string_(X,"f"):-s19_(X,"f") .
s18_(X,"f");s19_(X,"f"):-s17_(X,"f") .

s0_(X,"f");s5_(X,"f");s9_(X,"f");s14_(X,"f"):-ex_PersonShape_firstName_(X,"f") .
ex_PersonShape_firstName_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
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
