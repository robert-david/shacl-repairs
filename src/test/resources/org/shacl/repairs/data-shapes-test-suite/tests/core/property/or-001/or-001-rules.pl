
% Graph Data

rdfs_Class("ex_Address") .
rdfs_label("ex_Address","Address") .
xsd_string("Address") .
rdfs_Resource(X):-ex_Address(X) .
sh_NodeShape("ex_AddressShape") .
rdfs_label("ex_AddressShape","Address shape") .
xsd_string("Address shape") .
sh_property("ex_AddressShape","ex_AddressShape_address") .
sh_targetNode("ex_AddressShape","ex_InvalidResource1") .
sh_targetNode("ex_AddressShape","ex_ValidResource1") .
sh_targetNode("ex_AddressShape","ex_ValidResource2") .
sh_path("ex_AddressShape_address","ex_address") .
sh_or("ex_AddressShape_address","node1hdcdgs0ox1538") .
rdf_first("node1hdcdgs0ox1538","node1hdcdgs0ox1539") .
sh_datatype("node1hdcdgs0ox1539","xsd_string") .
rdf_rest("node1hdcdgs0ox1538","node1hdcdgs0ox1540") .
rdf_first("node1hdcdgs0ox1540","node1hdcdgs0ox1541") .
sh_class("node1hdcdgs0ox1541","ex_Address") .
rdf_rest("node1hdcdgs0ox1540","rdf_nil") .
rdfs_Resource("ex_InvalidResource1") .
ex_address("ex_InvalidResource1","true") .
xsd_boolean("true") .
rdfs_Resource("ex_ValidResource1") .
ex_address("ex_ValidResource1","Home") .
xsd_string("Home") .
rdfs_Resource("ex_ValidResource2") .
ex_address("ex_ValidResource2","node1hdcdgs0ox1542") .
ex_Address("node1hdcdgs0ox1542") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hdcdgs0ox1543") .
rdf_first("node1hdcdgs0ox1543","http://repairs.shacl.org/or_001") .
rdf_rest("node1hdcdgs0ox1543","rdf_nil") .
sht_Validate("http://repairs.shacl.org/or_001") .
rdfs_label("http://repairs.shacl.org/or_001","Test of sh:or at property shape 001") .
xsd_string("Test of sh:or at property shape 001") .
mf_action("http://repairs.shacl.org/or_001","node1hdcdgs0ox1544") .
sht_dataGraph("node1hdcdgs0ox1544","http://repairs.shacl.org") .
sht_shapesGraph("node1hdcdgs0ox1544","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/or_001","node1hdcdgs0ox1545") .
sh_ValidationReport("node1hdcdgs0ox1545") .
sh_conforms("node1hdcdgs0ox1545","false") .
xsd_boolean("false") .
sh_result("node1hdcdgs0ox1545","node1hdcdgs0ox1546") .
sh_ValidationResult("node1hdcdgs0ox1546") .
sh_focusNode("node1hdcdgs0ox1546","ex_InvalidResource1") .
sh_resultPath("node1hdcdgs0ox1546","ex_address") .
sh_resultSeverity("node1hdcdgs0ox1546","sh_Violation") .
sh_sourceConstraintComponent("node1hdcdgs0ox1546","sh_OrConstraintComponent") .
sh_sourceShape("node1hdcdgs0ox1546","ex_AddressShape_address") .
sh_value("node1hdcdgs0ox1546","true") .
mf_status("http://repairs.shacl.org/or_001","sht_approved") .

% Shape Targets

targetNode("ex_InvalidResource1",ex_AddressShape) .
targetNode("ex_ValidResource1",ex_AddressShape) .
targetNode("ex_ValidResource2",ex_AddressShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_AddressShape_("ex_InvalidResource1","t*"):-actualTarget("ex_InvalidResource1",ex_AddressShape) .
ex_AddressShape_("ex_ValidResource1","t*"):-actualTarget("ex_ValidResource1",ex_AddressShape) .
ex_AddressShape_("ex_ValidResource2","t*"):-actualTarget("ex_ValidResource2",ex_AddressShape) .

% Annotation Rules

ex_address_(X,Y,"t*"):-ex_address(X,Y) .
ex_address_(X,Y,"t*"):-ex_address_(X,Y,"t") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .
ex_Address_(X,"t*"):-ex_Address(X) .
ex_Address_(X,"t*"):-ex_Address_(X,"t") .

% Repair Rules

ex_AddressShape_address_(X,"t*"):-ex_AddressShape_(X,"t*") .
ex_AddressShape_address_(X,"f"):-ex_AddressShape_(X,"f") .

% sh:minCount 0 for ex_AddressShape_address
s0_(X,"t*"):-ex_AddressShape_address_(X,"t*") .
choose(s0,X,ex_address,0):-s0_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s1_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-s0_(X,"f"),ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_address_(X,Y,"t**")} 0:-s0_(X,"t*") .

s2_(X,"f"):-s1_(X,"f") .
xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .
s3_(X,"f"):-s1_(X,"f") .
ex_Address_(X,"t"):-s3_(X,"t*") .
ex_Address_(X,"f"):-s3_(X,"f") .
s2_(X,"t*");s3_(X,"t*"):-s1_(X,"t*") .

% universal for ex_AddressShape_address
s4_(X,"t*"):-ex_AddressShape_address_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
ex_address_(X,@new(s5,X,ex_address,1..1),"t"):-choose(s5,X,ex_address,1) .
choose(s5,X,ex_address,1);choose(s5,X,ex_address,0):-s5_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s6_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-s5_(X,"f"),ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
1 {s6_(Y,"t*"):ex_address_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .

s8_(X,"f"):-s7_(X,"f") .
xsd_string_(X,"t"):-s8_(X,"t*") .
xsd_string_(X,"f"):-s8_(X,"f") .
s9_(X,"f"):-s7_(X,"f") .
ex_Address_(X,"t"):-s9_(X,"t*") .
ex_Address_(X,"f"):-s9_(X,"f") .
s8_(X,"t*");s9_(X,"t*"):-s7_(X,"t*") .

s0_(X,"f");s4_(X,"f"):-ex_AddressShape_address_(X,"f") .

% Interpretation Rules

ex_address_(X,Y,"t**"):-ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .
ex_Address_(X,"t**"):-ex_Address_(X,"t*"),not ex_Address_(X,"f") .

% Program Constraints

:-ex_address_(X,Y,"t"),ex_address_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-ex_Address_(X,"t"),ex_Address_(X,"f") .

% Change Set Rules

add(ex_address(X,Y)):-ex_address_(X,Y,"t**"),not ex_address(X,Y) .
del(ex_address(X,Y)):-ex_address_(X,Y,"f"),ex_address(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
add(ex_Address(X)):-ex_Address_(X,"t**"),not ex_Address(X) .
del(ex_Address(X)):-ex_Address_(X,"f"),ex_Address(X) .
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
