
% Graph Data

sh_NodeShape("ex_TestShape") .
sh_property("ex_TestShape","node1hgd7v9f9x1971") .
sh_path("node1hgd7v9f9x1971","ex_property") .
sh_minCount("node1hgd7v9f9x1971","0") .
xsd_integer("0") .
sh_name("node1hgd7v9f9x1971","property") .
xsd_string("property") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
rdfs_Resource("ex_ValidResource1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hgd7v9f9x1972") .
rdf_first("node1hgd7v9f9x1972","http://repairs.shacl.org/minCount_002") .
rdf_rest("node1hgd7v9f9x1972","rdf_nil") .
sht_Validate("http://repairs.shacl.org/minCount_002") .
rdfs_label("http://repairs.shacl.org/minCount_002","Test of sh:minCount at property shape 001") .
xsd_string("Test of sh:minCount at property shape 001") .
mf_action("http://repairs.shacl.org/minCount_002","node1hgd7v9f9x1973") .
sht_dataGraph("node1hgd7v9f9x1973","http://repairs.shacl.org") .
sht_shapesGraph("node1hgd7v9f9x1973","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/minCount_002","node1hgd7v9f9x1974") .
sh_ValidationReport("node1hgd7v9f9x1974") .
sh_conforms("node1hgd7v9f9x1974","true") .
xsd_boolean("true") .
mf_status("http://repairs.shacl.org/minCount_002","sht_approved") .

% Shape Targets

targetNode("ex_ValidResource1",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_TestShape) .

% Annotation Rules

ex_property_(X,Y,"t*"):-ex_property(X,Y) .
ex_property_(X,Y,"t*"):-ex_property_(X,Y,"t") .

% Repair Rules

node1hgd7v9f9x1975_(X,"t*"):-ex_TestShape_(X,"t*") .
node1hgd7v9f9x1975_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for node1hgd7v9f9x1975
s0_(X,"t*"):-node1hgd7v9f9x1975_(X,"t*") .
choose(s0,X,ex_property,0):-s0_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s1_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s0_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s0_(X,"t*") .


% universal for node1hgd7v9f9x1975
s2_(X,"t*"):-node1hgd7v9f9x1975_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s4_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-s3_(X,"f"),ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s4_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hgd7v9f9x1975_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

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
