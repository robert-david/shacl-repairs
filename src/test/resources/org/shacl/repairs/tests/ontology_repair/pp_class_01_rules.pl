
% Graph Data

rdf_Property("_p1") .
owl_ObjectProperty("_p2") .
owl_DatatypeProperty("_p2") .

% Shape Targets

targetNode("_p1",_relation) .
targetNode("_p2",_relation) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_relation_("_p1","t*"):-actualTarget("_p1",_relation) .
_relation_("_p2","t*"):-actualTarget("_p2",_relation) .

% Annotation Rules

owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .

% Repair Rules

s0_(X,"f"):-_relation_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s1_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s1_(X,"f") .
s2_(X,"t*"):-s0_(X,"t*") .
node1gr30s3bex28_(X,"f"):-s2_(X,"t*") .
node1gr30s3bex28_(X,"t*"):-s2_(X,"f") .
owl_ObjectProperty_(X,"t"):-node1gr30s3bex28_(X,"t*") .
owl_ObjectProperty_(X,"f"):-node1gr30s3bex28_(X,"f") .
s1_(X,"f");s2_(X,"f"):-s0_(X,"f") .
s3_(X,"f"):-_relation_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s4_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s4_(X,"f") .
s5_(X,"t*"):-s3_(X,"t*") .
node1gr30s3bex21_(X,"f"):-s5_(X,"t*") .
node1gr30s3bex21_(X,"t*"):-s5_(X,"f") .
owl_DatatypeProperty_(X,"t"):-node1gr30s3bex21_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-node1gr30s3bex21_(X,"f") .
s4_(X,"f");s5_(X,"f"):-s3_(X,"f") .
s0_(X,"t*");s3_(X,"t*"):-_relation_(X,"t*") .

% Interpretation Rules

owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .

% Program Constraints

:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .

% Change Set Rules

add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
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
