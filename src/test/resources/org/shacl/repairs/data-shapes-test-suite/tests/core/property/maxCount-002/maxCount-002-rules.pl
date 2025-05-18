
% Graph Data

rdfs_Resource("ex_InvalidResource") .
rdfs_label("ex_InvalidResource","Invalid resource") .
xsd_string("Invalid resource") .
owl_versionInfo("ex_InvalidResource","1.0") .
xsd_string("1.0") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
sh_property("ex_TestShape","ex_TestShape-versionInfo") .
sh_targetNode("ex_TestShape","ex_InvalidResource") .
sh_targetNode("ex_TestShape","ex_ValidResource") .
sh_path("ex_TestShape-versionInfo","owl_versionInfo") .
sh_maxCount("ex_TestShape-versionInfo","0") .
xsd_integer("0") .
rdfs_Resource("ex_ValidResource") .
rdfs_label("ex_ValidResource","Valid resource") .
xsd_string("Valid resource") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388270") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388270","http://repairs.shacl.org/maxCount-002") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388270","rdf_nil") .
sht_Validate("http://repairs.shacl.org/maxCount-002") .
rdfs_label("http://repairs.shacl.org/maxCount-002","Test of sh:maxCount at property shape 002") .
xsd_string("Test of sh:maxCount at property shape 002") .
mf_action("http://repairs.shacl.org/maxCount-002","bnode_0465bff3129e4f3db89e6d0321ce7388271") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388271","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388271","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/maxCount-002","bnode_0465bff3129e4f3db89e6d0321ce7388272") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388272") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388272","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388272","bnode_0465bff3129e4f3db89e6d0321ce7388273") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388273") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388273","ex_InvalidResource") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388273","owl_versionInfo") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388273","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388273","sh_MaxCountConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388273","ex_TestShape-versionInfo") .
mf_status("http://repairs.shacl.org/maxCount-002","sht_approved") .
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

targetNode("ex_ValidResource",ex_TestShape) .
targetNode("ex_InvalidResource",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_ValidResource","t*"):-actualTarget("ex_ValidResource",ex_TestShape) .
ex_TestShape_("ex_InvalidResource","t*"):-actualTarget("ex_InvalidResource",ex_TestShape) .

% Annotation Rules

owl_versionInfo_(X,Y,"t*"):-owl_versionInfo(X,Y) .
owl_versionInfo_(X,Y,"t*"):-owl_versionInfo_(X,Y,"t") .
ex_TestShape__versionInfo_st_(X,Y,"t*"):-ex_TestShape__versionInfo_(X,_),owl_versionInfo_(X,Y,"t*") .

% Repair Rules

ex_TestShape__versionInfo_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestShape__versionInfo_(X,"f"):-ex_TestShape_(X,"f") .

% sh:minCount 0 for ex_TestShape__versionInfo
s0_(X,"t*"):-ex_TestShape__versionInfo_(X,"t*") .
(C-0) {owl_versionInfo_(X,Y,"f"):owl_versionInfo_(X,Y,"t*");s1_(Y,"f"):owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:owl_versionInfo_(X,Y,"t*")}=C,C>0 .
owl_versionInfo_(X,Y,"f"):-owl_versionInfo_(X,Y,"t*"),owl_versionInfo_(X,Y,"f") .
0 {s1_(Y,"t*"):owl_versionInfo_(X,Y,"t**")} 0:-s0_(X,"t*") .


% sh:maxCount 0 for ex_TestShape__versionInfo
s2_(X,"t*"):-ex_TestShape__versionInfo_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
owl_versionInfo_(X,@new(s3,X,owl_versionInfo,1..1),"t"):-choose(s3,X,owl_versionInfo,1) .
choose(s3,X,owl_versionInfo,1);choose(s3,X,owl_versionInfo,0):-s3_(X,"t*") .
(C-0) {owl_versionInfo_(X,Y,"f"):owl_versionInfo_(X,Y,"t*");s4_(Y,"f"):owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:owl_versionInfo_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):owl_versionInfo_(X,Y,"t**")} 1:-s3_(X,"t*") .


% universal for ex_TestShape__versionInfo
s5_(X,"t*"):-ex_TestShape__versionInfo_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
owl_versionInfo_(X,@new(s6,X,owl_versionInfo,1..1),"t"):-choose(s6,X,owl_versionInfo,1) .
choose(s6,X,owl_versionInfo,1);choose(s6,X,owl_versionInfo,0):-s6_(X,"t*") .
(C-0) {owl_versionInfo_(X,Y,"f"):owl_versionInfo_(X,Y,"t*");s7_(Y,"f"):owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:owl_versionInfo_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):owl_versionInfo_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s2_(X,"f");s5_(X,"f"):-ex_TestShape__versionInfo_(X,"f") .

% Interpretation Rules

owl_versionInfo_(X,Y,"t**"):-owl_versionInfo_(X,Y,"t*"),not owl_versionInfo_(X,Y,"f") .
ex_TestShape__versionInfo_st_(X,Y,"t**"):-owl_versionInfo_(X,Y,"t**"),ex_TestShape__versionInfo_st_(X,Y,"t*"),not ex_TestShape__versionInfo_st_(X,Y,"f") .

% Program Constraints

:-owl_versionInfo_(X,Y,"t"),owl_versionInfo_(X,Y,"f") .
:-s1_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(owl_versionInfo(X,Y)):-owl_versionInfo_(X,Y,"t**"),not owl_versionInfo(X,Y) .
del(owl_versionInfo(X,Y)):-owl_versionInfo_(X,Y,"f"),owl_versionInfo(X,Y) .
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
