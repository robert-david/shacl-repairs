
% Graph Data

ex_MalePerson("ex_John") .
rdfs_Class("ex_MalePerson") .
rdfs_subClassOf("ex_MalePerson","ex_Person") .
rdfs_Class("ex_Person") .
rdfs_subClassOf("ex_Person","rdfs_Resource") .
ex_Animal("ex_Quokki") .
ex_Person("ex_Someone") .
sh_NodeShape("ex_TestShape") .
sh_class("ex_TestShape","ex_Person") .
sh_targetNode("ex_TestShape","ex_John") .
sh_targetNode("ex_TestShape","ex_Quokki") .
sh_targetNode("ex_TestShape","ex_Someone") .
sh_targetNode("ex_TestShape","ex_Typeless") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388114") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388114","http://repairs.shacl.org/class-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388114","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class-001") .
rdfs_label("http://repairs.shacl.org/class-001","Test of sh:class at node shape 001") .
xsd_string("Test of sh:class at node shape 001") .
mf_action("http://repairs.shacl.org/class-001","bnode_0465bff3129e4f3db89e6d0321ce7388115") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388115","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388115","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class-001","bnode_0465bff3129e4f3db89e6d0321ce7388116") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388116") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388116","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388116","bnode_0465bff3129e4f3db89e6d0321ce7388117") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388117") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388117","ex_Quokki") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388117","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388117","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388117","ex_TestShape") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388117","ex_Quokki") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388116","bnode_0465bff3129e4f3db89e6d0321ce7388118") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388118") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388118","ex_Typeless") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388118","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388118","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388118","ex_TestShape") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388118","ex_Typeless") .
mf_status("http://repairs.shacl.org/class-001","sht_approved") .
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

targetNode("ex_Quokki",ex_TestShape) .
targetNode("ex_John",ex_TestShape) .
targetNode("ex_Typeless",ex_TestShape) .
targetNode("ex_Someone",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_Quokki","t*"):-actualTarget("ex_Quokki",ex_TestShape) .
ex_TestShape_("ex_John","t*"):-actualTarget("ex_John",ex_TestShape) .
ex_TestShape_("ex_Typeless","t*"):-actualTarget("ex_Typeless",ex_TestShape) .
ex_TestShape_("ex_Someone","t*"):-actualTarget("ex_Someone",ex_TestShape) .

% Annotation Rules

ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .

% Repair Rules

ex_Person_(X,"t"):-ex_TestShape_(X,"t*") .
ex_Person_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .

% Program Constraints

:-ex_Person_(X,"t"),ex_Person_(X,"f") .

% Change Set Rules

add(ex_Person(X)):-ex_Person_(X,"t**"),not ex_Person(X) .
del(ex_Person(X)):-ex_Person_(X,"f"),ex_Person(X) .
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
