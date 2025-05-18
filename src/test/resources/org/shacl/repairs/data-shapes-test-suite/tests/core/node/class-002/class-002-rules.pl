
% Graph Data

ex_TestClass("ex_NamedInstance") .
sh_NodeShape("ex_TestShape") .
sh_class("ex_TestShape","ex_TestClass") .
sh_targetClass("ex_TestShape","ex_BNodeClass") .
sh_targetNode("ex_TestShape","ex_NamedInstance") .
sh_targetNode("ex_TestShape","String") .
xsd_string("String") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388135") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388135","http://repairs.shacl.org/class-002") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388135","rdf_nil") .
sht_Validate("http://repairs.shacl.org/class-002") .
rdfs_label("http://repairs.shacl.org/class-002","Test of sh:class at node shape 002") .
xsd_string("Test of sh:class at node shape 002") .
mf_action("http://repairs.shacl.org/class-002","bnode_0465bff3129e4f3db89e6d0321ce7388136") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388136","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388136","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/class-002","bnode_0465bff3129e4f3db89e6d0321ce7388137") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388137") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388137","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388137","bnode_0465bff3129e4f3db89e6d0321ce7388138") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388138") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388138","String") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388138","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388138","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388138","ex_TestShape") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388138","String") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388137","bnode_0465bff3129e4f3db89e6d0321ce7388139") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388139") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388139","bnode_b9751") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388139","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388139","sh_ClassConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388139","ex_TestShape") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388139","bnode_b9751") .
mf_status("http://repairs.shacl.org/class-002","sht_approved") .
ex_BNodeClass("bnode_b9751") .
ex_BNodeClass("bnode_0465bff3129e4f3db89e6d0321ce7388140") .
ex_TestClass("bnode_0465bff3129e4f3db89e6d0321ce7388140") .
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

targetNode("ex_NamedInstance",ex_TestShape) .
targetNode("bnode_b9751",ex_TestShape) .
targetNode("bnode_0465bff3129e4f3db89e6d0321ce7388140",ex_TestShape) .
targetNode("String",ex_TestShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_TestShape_("ex_NamedInstance","t*"):-actualTarget("ex_NamedInstance",ex_TestShape) .
ex_TestShape_("bnode_b9751","t*"):-actualTarget("bnode_b9751",ex_TestShape) .
ex_TestShape_("bnode_0465bff3129e4f3db89e6d0321ce7388140","t*"):-actualTarget("bnode_0465bff3129e4f3db89e6d0321ce7388140",ex_TestShape) .
ex_TestShape_("String","t*"):-actualTarget("String",ex_TestShape) .

% Annotation Rules

ex_TestClass_(X,"t*"):-ex_TestClass(X) .
ex_TestClass_(X,"t*"):-ex_TestClass_(X,"t") .

% Repair Rules

s0_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestClass_(X,"t"):-s0_(X,"t*") .
ex_TestClass_(X,"f"):-s0_(X,"f") .
s1_(X,"t*"):-ex_TestShape_(X,"t*") .
ex_TestClass_(X,"t"):-s1_(X,"t*") .
ex_TestClass_(X,"f"):-s1_(X,"f") .
s0_(X,"f");s1_(X,"f"):-ex_TestShape_(X,"f") .

% Interpretation Rules

ex_TestClass_(X,"t**"):-ex_TestClass_(X,"t*"),not ex_TestClass_(X,"f") .

% Program Constraints

:-ex_TestClass_(X,"t"),ex_TestClass_(X,"f") .

% Change Set Rules

add(ex_TestClass(X)):-ex_TestClass_(X,"t**"),not ex_TestClass(X) .
del(ex_TestClass(X)):-ex_TestClass_(X,"f"),ex_TestClass(X) .
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
