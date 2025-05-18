
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
sh_property("ex_TestShape","ex_TestShape-property") .
sh_targetNode("ex_TestShape","ex_InvalidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource1") .
sh_targetNode("ex_TestShape","ex_ValidResource2") .
sh_path("ex_TestShape-property","ex_property") .
sh_not("ex_TestShape-property","bnode_0465bff3129e4f3db89e6d0321ce7388332") .
sh_datatype("bnode_0465bff3129e4f3db89e6d0321ce7388332","xsd_integer") .
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
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388333") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388333","http://repairs.shacl.org/not-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388333","rdf_nil") .
sht_Validate("http://repairs.shacl.org/not-001") .
rdfs_label("http://repairs.shacl.org/not-001","Test of sh:not at property shape 001") .
xsd_string("Test of sh:not at property shape 001") .
mf_action("http://repairs.shacl.org/not-001","bnode_0465bff3129e4f3db89e6d0321ce7388334") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388334","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388334","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/not-001","bnode_0465bff3129e4f3db89e6d0321ce7388335") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388335") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388335","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388335","bnode_0465bff3129e4f3db89e6d0321ce7388336") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388336") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388336","ex_InvalidResource1") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388336","ex_property") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388336","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388336","sh_NotConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388336","ex_TestShape-property") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388336","42") .
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
ex_TestShape__property_st_(X,Y,"t*"):-ex_TestShape__property_(X,_),ex_property_(X,Y,"t*") .
xsd_integer_(X,"t*"):-xsd_integer(X) .
xsd_integer_(X,"t*"):-xsd_integer_(X,"t") .

% Repair Rules

ex_TestShape__property_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape__property_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for ex_TestShape__property
s0_(X,"t*"):-ex_TestShape__property_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s1_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
ex_property_(X,Y,"f"):-ex_property_(X,Y,"t*"),ex_property_(X,Y,"f") .
0 {s1_(Y,"t*"):ex_property_(X,Y,"t**")} 0:-s0_(X,"t*") .

bnode_0465bff3129e4f3db89e6d0321ce7388337_(X,"f"):-s1_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388337_(X,"t*"):-s1_(X,"f") .
xsd_integer_(X,"t"):-bnode_0465bff3129e4f3db89e6d0321ce7388337_(X,"t*") .
xsd_integer_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388337_(X,"f") .

% universal for ex_TestShape__property
s2_(X,"t*"):-ex_TestShape__property_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_property_(X,@new(s3,X,ex_property,1..1),"t"):-choose(s3,X,ex_property,1) .
choose(s3,X,ex_property,1);choose(s3,X,ex_property,0):-s3_(X,"t*") .
(C-0) {ex_property_(X,Y,"f"):ex_property_(X,Y,"t*");s4_(Y,"f"):ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_property_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_property_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

bnode_0465bff3129e4f3db89e6d0321ce7388337_(X,"f"):-s5_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388337_(X,"t*"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-ex_TestShape__property_(X,"f") .

% Interpretation Rules

ex_property_(X,Y,"t**"):-ex_property_(X,Y,"t*"),not ex_property_(X,Y,"f") .
ex_TestShape__property_st_(X,Y,"t**"):-ex_property_(X,Y,"t**"),ex_TestShape__property_st_(X,Y,"t*"),not ex_TestShape__property_st_(X,Y,"f") .
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
