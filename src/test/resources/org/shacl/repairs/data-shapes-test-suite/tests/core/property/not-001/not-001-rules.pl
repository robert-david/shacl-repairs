
% Graph Data

rdfs_Resource("ex_InvalidResource1") .
ex_property("ex_InvalidResource1","42") .
xsd_integer("42") .
ex_property("ex_InvalidResource1","Test Valid") .
xsd_string("Test Valid") .
rdfs_label("ex_InvalidResource1","Invalid resource1") .
xsd_string("Invalid resource1") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
sh_property("ex_TestShape","ex_TestShape_property") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
sh_path("ex_TestShape_property","ex_property") .
sh_not("ex_TestShape_property","node1hmcimj6lx305") .
sh_datatype("node1hmcimj6lx305","xsd_integer") .
rdfs_Resource("ex_ValidResource1") .
rdfs_label("ex_ValidResource1","Valid resource1") .
xsd_string("Valid resource1") .
rdfs_Resource("ex_ValidResource2") .
ex_property("ex_ValidResource2","1.5") .
xsd_decimal("1.5") .
ex_property("ex_ValidResource2","String") .
xsd_string("String") .
rdfs_label("ex_ValidResource2","Valid resource2") .
xsd_string("Valid resource2") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmcimj6lx306") .
rdf_first("node1hmcimj6lx306","http://repairs.shacl.org/not_001") .
rdf_rest("node1hmcimj6lx306","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not_001") .
rdfs_label("http://repairs.shacl.org/not_001","Test of sh:not at property shape 001") .
xsd_string("Test of sh:not at property shape 001") .
mf_action("http://repairs.shacl.org/not_001","node1hmcimj6lx307") .
sht_dataGraph("node1hmcimj6lx307","http://repairs.shacl.org") .
sht_shapesGraph("node1hmcimj6lx307","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not_001","node1hmcimj6lx308") .
sh_ValidationReport("node1hmcimj6lx308") .
sh_conforms("node1hmcimj6lx308","false") .
xsd_boolean("false") .
sh_result("node1hmcimj6lx308","node1hmcimj6lx309") .
sh_ValidationResult("node1hmcimj6lx309") .
sh_focusNode("node1hmcimj6lx309","ex_InvalidResource1") .
sh_resultPath("node1hmcimj6lx309","ex_property") .
sh_resultSeverity("node1hmcimj6lx309","sh_Violation") .
sh_sourceConstraintComponent("node1hmcimj6lx309","sh_NotConstraintComponent") .
sh_sourceShape("node1hmcimj6lx309","ex_TestShape_property") .
sh_value("node1hmcimj6lx309","42") .
mf_status("http://repairs.shacl.org/not_001","sht_approved") .

% Shape Targets

targetNode("ex_InvalidResource1",ex_TestShape) .
targetNode("ex_ValidResource2",ex_TestShape) .
targetNode("ex_ValidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_TestShape) .
ex_TestShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_TestShape) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .
ex_TestShape_property_st_(X,Y,"t*"):-ex_TestShape_property_(X,_),ex_property_(X,Y,"t*") .
xsd_integer_(X,"t*"):-xsd_integer(X) .
xsd_integer_(X,"t*"):-xsd_integer_(X,"t") .

% Repair Rules

ex_TestShape_property_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape_property_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for ex_TestShape_property
s0_(X,"t*"):-ex_TestShape_property_(X,"t*") .
choose(s0,X,ex_property,0):-s0_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s1_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s0_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s0_(X,"t*") .

node1hmcimj6lx310_(X,"f"):-s1_(X,"t*") .
node1hmcimj6lx310_(X,"t*"):-s1_(X,"f") .
xsd_integer_(X,"t"):-node1hmcimj6lx310_(X,"t*") .
xsd_integer_(X,"f"):-node1hmcimj6lx310_(X,"f") .

% universal for ex_TestShape_property
s2_(X,"t*"):-ex_TestShape_property_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s4_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s3_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s4_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

node1hmcimj6lx310_(X,"f"):-s5_(X,"t*") .
node1hmcimj6lx310_(X,"t*"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-ex_TestShape_property_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
ex_TestShape_property_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),ex_TestShape_property_st_(X,Y,"t*"),not ex_TestShape_property_st_(X,Y,"f") .
xsd_integer_(X,"t**"):-xsd_integer_(X,"t*"),not xsd_integer_(X,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-xsd_integer_(X,"t"),xsd_integer_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
add(xsd_integer(X)):-xsd_integer_(X,"t**"),not xsd_integer(X) .
del(xsd_integer(X)):-xsd_integer_(X,"f"),xsd_integer(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
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
