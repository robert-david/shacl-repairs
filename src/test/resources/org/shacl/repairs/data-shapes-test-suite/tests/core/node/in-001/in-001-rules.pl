
% Graph Data

ex_TestShape("ex_Green") .
rdfs_label("ex_Green","Green") .
xsd_string("Green") .
ex_TestShape("ex_InvalidInstance") .
rdfs_label("ex_InvalidInstance","Invalid instance") .
xsd_string("Invalid instance") .
ex_TestShape("ex_Red") .
rdfs_label("ex_Red","Red") .
xsd_string("Red") .
rdfs_Class("ex_TestShape") .
sh_NodeShape("ex_TestShape") .
rdfs_label("ex_TestShape","Test shape") .
xsd_string("Test shape") .
sh_in("ex_TestShape","bnode_31e6d6f256764fe1980ffabd79a50e72307") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72307","ex_Green") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72307","bnode_31e6d6f256764fe1980ffabd79a50e72308") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72308","ex_Red") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72308","bnode_31e6d6f256764fe1980ffabd79a50e72309") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72309","ex_Yellow") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72309","rdf_nil") .
ex_TestShape("ex_Yellow") .
rdfs_label("ex_Yellow","Yellow") .
xsd_string("Yellow") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_31e6d6f256764fe1980ffabd79a50e72310") .
rdf_first("bnode_31e6d6f256764fe1980ffabd79a50e72310","http://repairs.shacl.org/in-001") .
rdf_rest("bnode_31e6d6f256764fe1980ffabd79a50e72310","rdf_nil") .
sht_Validate("http://repairs.shacl.org/in-001") .
rdfs_label("http://repairs.shacl.org/in-001","Test of sh:in at node shape 001") .
xsd_string("Test of sh:in at node shape 001") .
mf_action("http://repairs.shacl.org/in-001","bnode_31e6d6f256764fe1980ffabd79a50e72311") .
sht_dataGraph("bnode_31e6d6f256764fe1980ffabd79a50e72311","http://repairs.shacl.org") .
sht_shapesGraph("bnode_31e6d6f256764fe1980ffabd79a50e72311","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/in-001","bnode_31e6d6f256764fe1980ffabd79a50e72312") .
sh_ValidationReport("bnode_31e6d6f256764fe1980ffabd79a50e72312") .
sh_conforms("bnode_31e6d6f256764fe1980ffabd79a50e72312","false") .
xsd_boolean("false") .
sh_result("bnode_31e6d6f256764fe1980ffabd79a50e72312","bnode_31e6d6f256764fe1980ffabd79a50e72313") .
sh_ValidationResult("bnode_31e6d6f256764fe1980ffabd79a50e72313") .
sh_focusNode("bnode_31e6d6f256764fe1980ffabd79a50e72313","ex_InvalidInstance") .
sh_resultSeverity("bnode_31e6d6f256764fe1980ffabd79a50e72313","sh_Violation") .
sh_sourceConstraintComponent("bnode_31e6d6f256764fe1980ffabd79a50e72313","sh_InConstraintComponent") .
sh_sourceShape("bnode_31e6d6f256764fe1980ffabd79a50e72313","ex_TestShape") .
sh_value("bnode_31e6d6f256764fe1980ffabd79a50e72313","ex_InvalidInstance") .
mf_status("http://repairs.shacl.org/in-001","sht_approved") .
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

targetNode("ex_InvalidInstance",ex_TestShape) .
targetNode("ex_Green",ex_TestShape) .
targetNode("ex_Red",ex_TestShape) .
targetNode("ex_Yellow",ex_TestShape) .

% Constants

const("ex_Yellow") .
const("ex_Red") .
const("ex_Green") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_InvalidInstance","t*"):-actualTarget("ex_InvalidInstance",ex_TestShape) .
ex_TestShape_("ex_Green","t*"):-actualTarget("ex_Green",ex_TestShape) .
ex_TestShape_("ex_Red","t*"):-actualTarget("ex_Red",ex_TestShape) .
ex_TestShape_("ex_Yellow","t*"):-actualTarget("ex_Yellow",ex_TestShape) .

% Annotation Rules


% Repair Rules

s0_(X,"f"):-ex_TestShape_(X,"t*") .
s0_(X,"t*"):-ex_TestShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
s2_(X,"f"):-s1_(X,"t*") .
s2_(X,"t*"):-s1_(X,"f") .
s3_(X,"t*"):-s0_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
s5_(X,"t*"):-s0_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
s1_(X,"f");s3_(X,"f");s5_(X,"f"):-s0_(X,"f") .

% Interpretation Rules


% Program Constraints

:-s2_(X,"t*"),X!="ex_Green" .
:-s2_(X,"f"),X="ex_Green" .
:-s4_(X,"t*"),X!="ex_Red" .
:-s4_(X,"f"),X="ex_Red" .
:-s6_(X,"t*"),X!="ex_Yellow" .
:-s6_(X,"f"),X="ex_Yellow" .

% Change Set Rules

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
