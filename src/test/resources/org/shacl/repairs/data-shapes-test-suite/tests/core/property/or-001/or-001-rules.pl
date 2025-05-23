
% Graph Data

rdfs_Class("ex_Address") .
rdfs_label("ex_Address","Address") .
xsd_string("Address") .
rdfs_subClassOf("ex_Address","rdfs_Resource") .
sh_NodeShape("ex_AddressShape") .
rdfs_label("ex_AddressShape","Address shape") .
xsd_string("Address shape") .
sh_property("ex_AddressShape","ex_AddressShape-address") .
sh_targetNode("ex_AddressShape","ex_InvalidResource1") .
sh_targetNode("ex_AddressShape","ex_ValidResource1") .
sh_targetNode("ex_AddressShape","ex_ValidResource2") .
sh_path("ex_AddressShape-address","ex_address") .
sh_or("ex_AddressShape-address","bnode_0465bff3129e4f3db89e6d0321ce7388222") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388222","bnode_0465bff3129e4f3db89e6d0321ce7388223") .
sh_datatype("bnode_0465bff3129e4f3db89e6d0321ce7388223","xsd_string") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388222","bnode_0465bff3129e4f3db89e6d0321ce7388224") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388224","bnode_0465bff3129e4f3db89e6d0321ce7388225") .
sh_class("bnode_0465bff3129e4f3db89e6d0321ce7388225","ex_Address") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388224","rdf_nil") .
rdfs_Resource("ex_InvalidResource1") .
ex_address("ex_InvalidResource1","true") .
xsd_boolean("true") .
rdfs_Resource("ex_ValidResource1") .
ex_address("ex_ValidResource1","Home") .
xsd_string("Home") .
rdfs_Resource("ex_ValidResource2") .
ex_address("ex_ValidResource2","bnode_0465bff3129e4f3db89e6d0321ce7388226") .
ex_Address("bnode_0465bff3129e4f3db89e6d0321ce7388226") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388227") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388227","http://repairs.shacl.org/or-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388227","rdf_nil") .
sht_Validate("http://repairs.shacl.org/or-001") .
rdfs_label("http://repairs.shacl.org/or-001","Test of sh:or at property shape 001") .
xsd_string("Test of sh:or at property shape 001") .
mf_action("http://repairs.shacl.org/or-001","bnode_0465bff3129e4f3db89e6d0321ce7388228") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388228","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388228","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/or-001","bnode_0465bff3129e4f3db89e6d0321ce7388229") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388229") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388229","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388229","bnode_0465bff3129e4f3db89e6d0321ce7388230") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388230") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388230","ex_InvalidResource1") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388230","ex_address") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388230","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388230","sh_OrConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388230","ex_AddressShape-address") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388230","true") .
mf_status("http://repairs.shacl.org/or-001","sht_approved") .
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
ex_AddressShape__address_st_(X,Y,"t*"):-ex_AddressShape__address_(X,_),ex_address_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .
ex_Address_(X,"t*"):-ex_Address(X) .
ex_Address_(X,"t*"):-ex_Address_(X,"t") .

% Repair Rules

ex_AddressShape__address_(X,"t*"):-ex_AddressShape_(X,"t*") .
ex_AddressShape__address_(X,"f"):-ex_AddressShape_(X,"f") .

% sh:minCount 0 for ex_AddressShape__address
s0_(X,"t*"):-ex_AddressShape__address_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s1_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
ex_address_(X,Y,"f"):-ex_address_(X,Y,"t*"),ex_address_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_address_(X,Y,"t**")} 0:-s0_(X,"t*") .

s2_(X,"f"):-s1_(X,"f") .
xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .
s3_(X,"f"):-s1_(X,"f") .
ex_Address_(X,"t"):-s3_(X,"t*") .
ex_Address_(X,"f"):-s3_(X,"f") .
s2_(X,"t*");s3_(X,"t*"):-s1_(X,"t*") .

% universal for ex_AddressShape__address
s4_(X,"t*"):-ex_AddressShape__address_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
ex_address_(X,@new(s5,X,ex_address,1..1),"t"):-choose(s5,X,ex_address,1) .
choose(s5,X,ex_address,1);choose(s5,X,ex_address,0):-s5_(X,"t*") .
(C-0) {ex_address_(X,Y,"f"):ex_address_(X,Y,"t*");s6_(Y,"f"):ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:ex_address_(X,Y,"t*")}=C,C>0 .
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

s0_(X,"f");s4_(X,"f"):-ex_AddressShape__address_(X,"f") .

% Interpretation Rules

ex_address_(X,Y,"t**"):-ex_address_(X,Y,"t*"),not ex_address_(X,Y,"f") .
ex_AddressShape__address_st_(X,Y,"t**"):-ex_address_(X,Y,"t**"),ex_AddressShape__address_st_(X,Y,"t*"),not ex_AddressShape__address_st_(X,Y,"f") .
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
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

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
return tostring('new_' .. result)
end
#end .


#script (lua)
function gt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>y then return "t" else return "f" end
end

function lt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<y then return "t" else return "f" end
end

function geq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>=y then return "t" else return "f" end
end

function leq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<=y then return "t" else return "f" end
end

function getNumbers(X,Y)
local x,_ = string.gsub(tostring(X),"\"","")
local y,_ = string.gsub(tostring(Y),"\"","")
local xn = tonumber(x)
local yn = tonumber(y)
return xn,yn
end

function isNew(X)
return string.match(tostring(X), '^"new')
end
#end .
