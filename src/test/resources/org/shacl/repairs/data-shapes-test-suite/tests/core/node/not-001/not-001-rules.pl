
% Graph Data

rdfs_Resource("ex_InvalidResource1") .
ex_property("ex_InvalidResource1","some value") .
xsd_string("some value") .
rdfs_Class("ex_TestShape") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
rdfs_Resource(X):-ex_TestShape(X) .
sh_not("ex_TestShape","node1h0oc2cvkx838") .
sh_NodeShape("node1h0oc2cvkx838") .
sh_property("node1h0oc2cvkx838","node1h0oc2cvkx839") .
sh_path("node1h0oc2cvkx839","ex_property") .
sh_minCount("node1h0oc2cvkx839","1") .
xsd_integer("1") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
rdfs_Resource("ex_ValidResource1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1h0oc2cvkx840") .
rdf_first("node1h0oc2cvkx840","http://repairs.shacl.org/not_001") .
rdf_rest("node1h0oc2cvkx840","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not_001") .
rdfs_label("http://repairs.shacl.org/not_001","Test of sh:not at node shape 001") .
xsd_string("Test of sh:not at node shape 001") .
mf_action("http://repairs.shacl.org/not_001","node1h0oc2cvkx841") .
sht_dataGraph("node1h0oc2cvkx841","http://repairs.shacl.org") .
sht_shapesGraph("node1h0oc2cvkx841","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not_001","node1h0oc2cvkx842") .
sh_ValidationReport("node1h0oc2cvkx842") .
sh_conforms("node1h0oc2cvkx842","false") .
xsd_boolean("false") .
sh_result("node1h0oc2cvkx842","node1h0oc2cvkx843") .
sh_ValidationResult("node1h0oc2cvkx843") .
sh_focusNode("node1h0oc2cvkx843","ex_InvalidResource1") .
sh_resultSeverity("node1h0oc2cvkx843","sh_Violation") .
sh_sourceConstraintComponent("node1h0oc2cvkx843","sh_NotConstraintComponent") .
sh_sourceShape("node1h0oc2cvkx843","ex_TestShape") .
sh_value("node1h0oc2cvkx843","ex_InvalidResource1") .
mf_status("http://repairs.shacl.org/not_001","sht_approved") .

% Shape Targets

targetNode("ex_ValidResource1",ex_TestShape) .
targetNode("ex_InvalidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
node1h0oc2cvkx845_st_(X,Y,"t*"):-node1h0oc2cvkx845_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_TestShape_(X,"t*") .
node1h0oc2cvkx844_(X,"f"):-s0_(X,"t*") .
node1h0oc2cvkx844_(X,"t*"):-s0_(X,"f") .
node1h0oc2cvkx845_(X,"t*"):-node1h0oc2cvkx844_(X,"t*") .
node1h0oc2cvkx845_(X,"f"):-node1h0oc2cvkx844_(X,"f") .

% sh:minCount 1 for node1h0oc2cvkx845
s1_(X,"t*"):-node1h0oc2cvkx845_(X,"t*") .
ex_property_(X,@new(s1,X,ex_property,1..1),"t"):-choose(s1,X,ex_property,1) .
choose(s1,X,ex_property,1);choose(s1,X,ex_property,0):-s1_(X,"t*") .
(C-0) {node1h0oc2cvkx845_st_(X,Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*");s2_(Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*"),not node1h0oc2cvkx845_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:node1h0oc2cvkx845_st_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s1_(X,"f"),ex_property_(X,Y,"t*"),node1h0oc2cvkx845_st_(X,Y,"f") .
1 {s2_(Y,"t*"):node1h0oc2cvkx845_st_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1h0oc2cvkx845
s3_(X,"t*"):-node1h0oc2cvkx845_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_property_(X,@new(s4,X,ex_property,1..1),"t"):-choose(s4,X,ex_property,1) .
choose(s4,X,ex_property,1);choose(s4,X,ex_property,0):-s4_(X,"t*") .
(C-0) {node1h0oc2cvkx845_st_(X,Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*");s5_(Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*"),not node1h0oc2cvkx845_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:node1h0oc2cvkx845_st_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s4_(X,"f"),ex_property_(X,Y,"t*"),node1h0oc2cvkx845_st_(X,Y,"f") .
1 {s5_(Y,"t*"):node1h0oc2cvkx845_st_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1h0oc2cvkx845_(X,"f") .
s7_(X,"t*"):-ex_TestShape_(X,"t*") .
node1h0oc2cvkx844_(X,"f"):-s7_(X,"t*") .
node1h0oc2cvkx844_(X,"t*"):-s7_(X,"f") .

s8_(X,"t*"):-node1h0oc2cvkx845_(X,"t*") .
ex_property_(X,@new(s8,X,ex_property,1..1),"t"):-choose(s8,X,ex_property,1) .
choose(s8,X,ex_property,1);choose(s8,X,ex_property,0):-s8_(X,"t*") .
(C-0) {node1h0oc2cvkx845_st_(X,Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*");s9_(Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*"),not node1h0oc2cvkx845_st_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:node1h0oc2cvkx845_st_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s8_(X,"f"),ex_property_(X,Y,"t*"),node1h0oc2cvkx845_st_(X,Y,"f") .
1 {s9_(Y,"t*"):node1h0oc2cvkx845_st_(X,Y,"t**")} 1:-s8_(X,"t*") .


s10_(X,"t*"):-node1h0oc2cvkx845_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_property_(X,@new(s11,X,ex_property,1..1),"t"):-choose(s11,X,ex_property,1) .
choose(s11,X,ex_property,1);choose(s11,X,ex_property,0):-s11_(X,"t*") .
(C-0) {node1h0oc2cvkx845_st_(X,Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*");s12_(Y,"f"):node1h0oc2cvkx845_st_(X,Y,"t*"),not node1h0oc2cvkx845_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:node1h0oc2cvkx845_st_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s11_(X,"f"),ex_property_(X,Y,"t*"),node1h0oc2cvkx845_st_(X,Y,"f") .
1 {s12_(Y,"t*"):node1h0oc2cvkx845_st_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-node1h0oc2cvkx845_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
node1h0oc2cvkx845_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),node1h0oc2cvkx845_st_(X,Y,"t*"),not node1h0oc2cvkx845_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
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
