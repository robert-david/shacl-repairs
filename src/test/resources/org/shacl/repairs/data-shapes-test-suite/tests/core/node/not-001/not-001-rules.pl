
% Graph Data

rdfs_Resource("ex_InvalidResource1") .
ex_property("ex_InvalidResource1","some value") .
xsd_string("some value") .
rdfs_Class("ex_TestShape") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
rdfs_subClassOf("ex_TestShape","rdfs_Resource") .
sh_not("ex_TestShape","bnode_0465bff3129e4f3db89e6d0321ce738867") .
sh_NodeShape("bnode_0465bff3129e4f3db89e6d0321ce738867") .
sh_property("bnode_0465bff3129e4f3db89e6d0321ce738867","bnode_0465bff3129e4f3db89e6d0321ce738868") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce738868","ex_property") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce738868","1") .
xsd_integer("1") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
rdfs_Resource("ex_ValidResource1") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce738869") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce738869","http://repairs.shacl.org/not-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce738869","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not-001") .
rdfs_label("http://repairs.shacl.org/not-001","Test of sh:not at node shape 001") .
xsd_string("Test of sh:not at node shape 001") .
mf_action("http://repairs.shacl.org/not-001","bnode_0465bff3129e4f3db89e6d0321ce738870") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce738870","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce738870","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not-001","bnode_0465bff3129e4f3db89e6d0321ce738871") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce738871") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce738871","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce738871","bnode_0465bff3129e4f3db89e6d0321ce738872") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce738872") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce738872","ex_InvalidResource1") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce738872","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce738872","sh_NotConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce738872","ex_TestShape") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce738872","ex_InvalidResource1") .
mf_status("http://repairs.shacl.org/not-001","sht_approved") .
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
bnode_0465bff3129e4f3db89e6d0321ce738874_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,_),ex_property_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_TestShape_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce738873_(X,"f"):-s0_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce738873_(X,"t*"):-s0_(X,"f") .
bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce738873_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce738873_(X,"f") .

% sh:minCount 1 for bnode_0465bff3129e4f3db89e6d0321ce738874
s1_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"t*") .
ex_property_(X,@new(s1,X,ex_property,1..1),"t"):-choose(s1,X,ex_property,1) .
choose(s1,X,ex_property,1);choose(s1,X,ex_property,0):-s1_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s2_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for bnode_0465bff3129e4f3db89e6d0321ce738874
s3_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_property_(X,@new(s4,X,ex_property,1..1),"t"):-choose(s4,X,ex_property,1) .
choose(s4,X,ex_property,1);choose(s4,X,ex_property,0):-s4_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s5_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"f") .
s7_(X,"t*"):-ex_TestShape_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce738873_(X,"f"):-s7_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce738873_(X,"t*"):-s7_(X,"f") .

s8_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"t*") .
ex_property_(X,@new(s8,X,ex_property,1..1),"t"):-choose(s8,X,ex_property,1) .
choose(s8,X,ex_property,1);choose(s8,X,ex_property,0):-s8_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s9_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s8_(X,"t*") .


s10_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_property_(X,@new(s11,X,ex_property,1..1),"t"):-choose(s11,X,ex_property,1) .
choose(s11,X,ex_property,1);choose(s11,X,ex_property,0):-s11_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s12_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce738874_(X,"f") .
s0_(X,"f");s7_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce738874_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce738874_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce738874_st_(X,Y,"f") .

% Program Constraints

:-ex_property_(X,Y,"t"),ex_property_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(ex_property(X,Y)):-ex_property_(X,Y,"t**"),not ex_property(X,Y) .
del(ex_property(X,Y)):-ex_property_(X,Y,"f"),ex_property(X,Y) .
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
