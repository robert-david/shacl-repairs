
% Graph Data

rdf_Property("_p1") .
owl_ObjectProperty("_p2") .
owl_DatatypeProperty("_p2") .

% Shape Targets

targetNode("_p1",_property) .
targetNode("_p2",_property) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_property_("_p1","t*"):-actualTarget("_p1",_property) .
_property_("_p2","t*"):-actualTarget("_p2",_property) .

% Annotation Rules

owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .

% Repair Rules

s0_(X,"f"):-_property_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
bnode_c4ff9c2033234bcc881ddd9c20e1b7cd504_(X,"f"):-s1_(X,"t*") .
bnode_c4ff9c2033234bcc881ddd9c20e1b7cd504_(X,"t*"):-s1_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_c4ff9c2033234bcc881ddd9c20e1b7cd504_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_c4ff9c2033234bcc881ddd9c20e1b7cd504_(X,"f") .
s2_(X,"t*"):-s0_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s2_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s2_(X,"f") .
s1_(X,"f");s2_(X,"f"):-s0_(X,"f") .
s3_(X,"f"):-_property_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
bnode_c4ff9c2033234bcc881ddd9c20e1b7cd511_(X,"f"):-s4_(X,"t*") .
bnode_c4ff9c2033234bcc881ddd9c20e1b7cd511_(X,"t*"):-s4_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_c4ff9c2033234bcc881ddd9c20e1b7cd511_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_c4ff9c2033234bcc881ddd9c20e1b7cd511_(X,"f") .
s5_(X,"t*"):-s3_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s5_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s5_(X,"f") .
s4_(X,"f");s5_(X,"f"):-s3_(X,"f") .
s0_(X,"t*");s3_(X,"t*"):-_property_(X,"t*") .

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
% Get all optimal models: --opt-mode=optN -n 100 --quiet=1
% Change the scores of add and del to prioritize additions or deletions
change(D):-add(D) .
change(D):-del(D) .
#minimize { D@2: change(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .
:-del(rdfs_subPropertyOf(X,Y)) .

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
