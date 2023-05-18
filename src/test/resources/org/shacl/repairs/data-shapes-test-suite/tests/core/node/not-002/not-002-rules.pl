
% Graph Data

ex_property("ex_InvalidInstance1","Some value") .
xsd_string("Some value") .
sh_NodeShape("ex_NotExampleShape") .
sh_not("ex_NotExampleShape","node1h0oc2cvkx866") .
sh_NodeShape("node1h0oc2cvkx866") .
sh_property("node1h0oc2cvkx866","node1h0oc2cvkx867") .
sh_path("node1h0oc2cvkx867","ex_property") .
sh_minCount("node1h0oc2cvkx867","1") .
xsd_integer("1") .
sh_targetNode("ex_NotExampleShape","ex_InvalidInstance1") .
sh_targetNode("ex_NotExampleShape","ex_ValidInstance1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1h0oc2cvkx868") .
rdf_first("node1h0oc2cvkx868","http://repairs.shacl.org/not_002") .
rdf_rest("node1h0oc2cvkx868","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not_002") .
rdfs_label("http://repairs.shacl.org/not_002","Test of sh:not at node shape 002") .
xsd_string("Test of sh:not at node shape 002") .
mf_action("http://repairs.shacl.org/not_002","node1h0oc2cvkx869") .
sht_dataGraph("node1h0oc2cvkx869","http://repairs.shacl.org") .
sht_shapesGraph("node1h0oc2cvkx869","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not_002","node1h0oc2cvkx870") .
sh_ValidationReport("node1h0oc2cvkx870") .
sh_conforms("node1h0oc2cvkx870","false") .
xsd_boolean("false") .
sh_result("node1h0oc2cvkx870","node1h0oc2cvkx871") .
sh_ValidationResult("node1h0oc2cvkx871") .
sh_focusNode("node1h0oc2cvkx871","ex_InvalidInstance1") .
sh_resultSeverity("node1h0oc2cvkx871","sh_Violation") .
sh_sourceConstraintComponent("node1h0oc2cvkx871","sh_NotConstraintComponent") .
sh_sourceShape("node1h0oc2cvkx871","ex_NotExampleShape") .
sh_value("node1h0oc2cvkx871","ex_InvalidInstance1") .
mf_status("http://repairs.shacl.org/not_002","sht_approved") .

% Shape Targets

targetNode("ex_InvalidInstance1",ex_NotExampleShape) .
targetNode("ex_ValidInstance1",ex_NotExampleShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_NotExampleShape_("ex_InvalidInstance1","t*"):-actualTarget("ex_InvalidInstance1",ex_NotExampleShape) .
ex_NotExampleShape_("ex_ValidInstance1","t*"):-actualTarget("ex_ValidInstance1",ex_NotExampleShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
node1h0oc2cvkx873_st_(X,Y,"t*"):-node1h0oc2cvkx873_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

node1h0oc2cvkx872_(X,"f"):-ex_NotExampleShape_(X,"t*") .
node1h0oc2cvkx872_(X,"t*"):-ex_NotExampleShape_(X,"f") .
node1h0oc2cvkx873_(X,"t*"):-node1h0oc2cvkx872_(X,"t*") .
node1h0oc2cvkx873_(X,"f"):-node1h0oc2cvkx872_(X,"f") .

% sh:minCount 1 for node1h0oc2cvkx873
s0_(X,"t*"):-node1h0oc2cvkx873_(X,"t*") .
ex_property_(X,@new(s0,X,ex_property,1..1),"t"):-choose(s0,X,ex_property,1) .
choose(s0,X,ex_property,1);choose(s0,X,ex_property,0):-s0_(X,"t*") .
(C-0) {node1h0oc2cvkx873_st_(X,Y,"f"):node1h0oc2cvkx873_st_(X,Y,"t*");s1_(Y,"f"):node1h0oc2cvkx873_st_(X,Y,"t*"),not node1h0oc2cvkx873_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1h0oc2cvkx873_st_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s0_(X,"f"),ex_property_(X,Y,"t*"),node1h0oc2cvkx873_st_(X,Y,"f") .
1 {s1_(Y,"t*"):node1h0oc2cvkx873_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1h0oc2cvkx873
s2_(X,"t*"):-node1h0oc2cvkx873_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {node1h0oc2cvkx873_st_(X,Y,"f"):node1h0oc2cvkx873_st_(X,Y,"t*");s4_(Y,"f"):node1h0oc2cvkx873_st_(X,Y,"t*"),not node1h0oc2cvkx873_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1h0oc2cvkx873_st_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s3_(X,"f"),ex_property_(X,Y,"t*"),node1h0oc2cvkx873_st_(X,Y,"f") .
1 {s4_(Y,"t*"):node1h0oc2cvkx873_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1h0oc2cvkx873_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
node1h0oc2cvkx873_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),node1h0oc2cvkx873_st_(X,Y,"t*"),not node1h0oc2cvkx873_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

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
