
% Graph Data

ex_MalePerson("ex_InvalidMalePerson") .
ex_gender("ex_InvalidMalePerson","female") .
xsd_string("female") .
rdfs_label("ex_InvalidMalePerson","Invalid male person") .
xsd_string("Invalid male person") .
rdfs_Class("ex_MalePerson") .
rdfs_label("ex_MalePerson","Male person") .
xsd_string("Male person") .
rdfs_Resource(X):-ex_MalePerson(X) .
sh_NodeShape("ex_PersonShape") .
rdfs_label("ex_PersonShape","Person shape") .
xsd_string("Person shape") .
sh_property("ex_PersonShape","ex_PersonShape_gender") .
sh_targetClass("ex_PersonShape","ex_MalePerson") .
sh_path("ex_PersonShape_gender","ex_gender") .
rdfs_label("ex_PersonShape_gender","gender") .
xsd_string("gender") .
sh_datatype("ex_PersonShape_gender","xsd_string") .
sh_hasValue("ex_PersonShape_gender","male") .
xsd_string("male") .
ex_MalePerson("ex_ValidMalePerson1") .
ex_gender("ex_ValidMalePerson1","male") .
ex_MalePerson("ex_ValidMalePerson2") .
ex_gender("ex_ValidMalePerson2","female") .
ex_gender("ex_ValidMalePerson2","male") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1h0oc2cvkx796") .
rdf_first("node1h0oc2cvkx796","http://repairs.shacl.org/hasValue_001") .
rdf_rest("node1h0oc2cvkx796","rdf_nil") .
sht_Validate("http://repairs.shacl.org/hasValue_001") .
rdfs_label("http://repairs.shacl.org/hasValue_001","Test of sh:hasValue at property shape 001") .
xsd_string("Test of sh:hasValue at property shape 001") .
mf_action("http://repairs.shacl.org/hasValue_001","node1h0oc2cvkx797") .
sht_dataGraph("node1h0oc2cvkx797","http://repairs.shacl.org") .
sht_shapesGraph("node1h0oc2cvkx797","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/hasValue_001","node1h0oc2cvkx798") .
sh_ValidationReport("node1h0oc2cvkx798") .
sh_conforms("node1h0oc2cvkx798","false") .
xsd_boolean("false") .
sh_result("node1h0oc2cvkx798","node1h0oc2cvkx799") .
sh_ValidationResult("node1h0oc2cvkx799") .
sh_focusNode("node1h0oc2cvkx799","ex_InvalidMalePerson") .
sh_resultPath("node1h0oc2cvkx799","ex_gender") .
sh_resultSeverity("node1h0oc2cvkx799","sh_Violation") .
sh_sourceConstraintComponent("node1h0oc2cvkx799","sh_HasValueConstraintComponent") .
sh_sourceShape("node1h0oc2cvkx799","ex_PersonShape_gender") .
mf_status("http://repairs.shacl.org/hasValue_001","sht_approved") .

% Shape Targets

targetNode("ex_InvalidMalePerson",ex_PersonShape) .
targetNode("ex_ValidMalePerson1",ex_PersonShape) .
targetNode("ex_ValidMalePerson2",ex_PersonShape) .

% Constants

const("male") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_PersonShape_("ex_InvalidMalePerson","t*"):-actualTarget("ex_InvalidMalePerson",ex_PersonShape) .
ex_PersonShape_("ex_ValidMalePerson1","t*"):-actualTarget("ex_ValidMalePerson1",ex_PersonShape) .
ex_PersonShape_("ex_ValidMalePerson2","t*"):-actualTarget("ex_ValidMalePerson2",ex_PersonShape) .

% Annotation Rules

ex_gender_(X,Y,"t*"):-ex_gender(X,Y) .
ex_gender_(X,Y,"t*"):-ex_gender_(X,Y,"t") .
ex_PersonShape_gender_st_(X,Y,"t*"):-ex_PersonShape_gender_(X,_),ex_gender_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_gender_(X,"t*"):-s0_(X,"t*") .
ex_PersonShape_gender_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for ex_PersonShape_gender
s1_(X,"t*"):-ex_PersonShape_gender_(X,"t*") .
choose(s1,X,ex_gender,0):-s1_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
(C-0) {ex_PersonShape_gender_st_(X,Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*");s2_(Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*"),not ex_PersonShape_gender_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_PersonShape_gender_st_(X,Y,"t*")}=C,C>0 .
ex_gender_(X,Y,"f"):-s1_(X,"f"),ex_gender_(X,Y,"t*"),ex_PersonShape_gender_st_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_PersonShape_gender_st_(X,Y,"t**")} 1:-s1_(X,"t*") .

xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .

% universal for ex_PersonShape_gender
s3_(X,"t*"):-ex_PersonShape_gender_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_gender_(X,@new(s4,X,ex_gender,1..1),"t"):-choose(s4,X,ex_gender,1) .
choose(s4,X,ex_gender,1);choose(s4,X,ex_gender,0):-s4_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
(C-0) {ex_PersonShape_gender_st_(X,Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*");s5_(Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*"),not ex_PersonShape_gender_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_PersonShape_gender_st_(X,Y,"t*")}=C,C>0 .
ex_gender_(X,Y,"f"):-s4_(X,"f"),ex_gender_(X,Y,"t*"),ex_PersonShape_gender_st_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_PersonShape_gender_st_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

xsd_string_(X,"t"):-s6_(X,"t*") .
xsd_string_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-ex_PersonShape_gender_(X,"f") .
s7_(X,"t*"):-ex_PersonShape_(X,"t*") .
ex_PersonShape_gender_(X,"t*"):-s7_(X,"t*") .
ex_PersonShape_gender_(X,"f"):-s7_(X,"f") .

s8_(X,"t*"):-ex_PersonShape_gender_(X,"t*") .
ex_gender_(X,@new(s8,X,ex_gender,1..1),"t"):-choose(s8,X,ex_gender,1) .
choose(s8,X,ex_gender,1);choose(s8,X,ex_gender,0):-s8_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s8_(X,"t*") .
(C-0) {ex_PersonShape_gender_st_(X,Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*");s9_(Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*"),not ex_PersonShape_gender_st_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_PersonShape_gender_st_(X,Y,"t*")}=C,C>0 .
ex_gender_(X,Y,"f"):-s8_(X,"f"),ex_gender_(X,Y,"t*"),ex_PersonShape_gender_st_(X,Y,"f") .
1 {s9_(Y,"t*"):ex_PersonShape_gender_st_(X,Y,"t**")} 1:-s8_(X,"t*") .


s10_(X,"t*"):-ex_PersonShape_gender_(X,"t*") .
choose(s10,X,ex_gender,0):-s10_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
(C-0) {ex_PersonShape_gender_st_(X,Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*");s11_(Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*"),not ex_PersonShape_gender_st_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:ex_PersonShape_gender_st_(X,Y,"t*")}=C,C>0 .
ex_gender_(X,Y,"f"):-s10_(X,"f"),ex_gender_(X,Y,"t*"),ex_PersonShape_gender_st_(X,Y,"f") .
0 {s11_(Y,"t*"):ex_PersonShape_gender_st_(X,Y,"t**")} 1:-s10_(X,"t*") .


s12_(X,"t*"):-ex_PersonShape_gender_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
ex_gender_(X,@new(s13,X,ex_gender,1..1),"t"):-choose(s13,X,ex_gender,1) .
choose(s13,X,ex_gender,1);choose(s13,X,ex_gender,0):-s13_(X,"t*") .
0 {ex_gender_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {ex_PersonShape_gender_st_(X,Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*");s14_(Y,"f"):ex_PersonShape_gender_st_(X,Y,"t*"),not ex_PersonShape_gender_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:ex_PersonShape_gender_st_(X,Y,"t*")}=C,C>0 .
ex_gender_(X,Y,"f"):-s13_(X,"f"),ex_gender_(X,Y,"t*"),ex_PersonShape_gender_st_(X,Y,"f") .
1 {s14_(Y,"t*"):ex_PersonShape_gender_st_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s8_(X,"f");s10_(X,"f");s12_(X,"f"):-ex_PersonShape_gender_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_PersonShape_(X,"f") .

% Interpretation Rules

ex_gender_(X,Y,"t**"):-ex_gender_(X,Y,"t*"),not ex_gender_(X,Y,"f") .
ex_PersonShape_gender_st_(X,Y,"t**"):-ex_gender_(X,Y,"t**"),ex_PersonShape_gender_st_(X,Y,"t*"),not ex_PersonShape_gender_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .

% Program Constraints

:-ex_gender_(X,Y,"t"),ex_gender_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s9_(X,"t*"),X!="male" .
:-s9_(X,"f"),X="male" .
:-s11_(X,"f") .
:-s15_(X,"f") .

% Change Set Rules

add(ex_gender(X,Y)):-ex_gender_(X,Y,"t**"),not ex_gender(X,Y) .
del(ex_gender(X,Y)):-ex_gender_(X,Y,"f"),ex_gender(X,Y) .
#minimize { 1@1,X,Y: ex_gender_(X,Y,"t"), const(Y) } .
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
