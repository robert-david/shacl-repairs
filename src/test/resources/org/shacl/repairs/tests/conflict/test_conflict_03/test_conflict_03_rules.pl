
% Graph Data


% Shape Targets

targetNode("_ann",_notPersonShape) .
targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_notPersonShape_("_ann","t*"):-actualTarget("_ann",_notPersonShape) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_person_(X,"t*"):-_person(X) .
_person_(X,"t*"):-_person_(X,"t") .

% Repair Rules

node1hgobfebhx1784_(X,"f"):-_notPersonShape_(X,"t*") .
node1hgobfebhx1784_(X,"t*"):-_notPersonShape_(X,"f") .
_person_(X,"t"):-node1hgobfebhx1784_(X,"t*") .
_person_(X,"f"):-node1hgobfebhx1784_(X,"f") .
_person_(X,"t"):-_personShape_(X,"t*") .
_person_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_person_(X,"t**"):-_person_(X,"t*"),not _person_(X,"f") .

% Program Constraints

:-_person_(X,"t"),_person_(X,"f") .

% Change Set Rules

add(_person(X)):-_person_(X,"t**"),not _person(X) .
del(_person(X)):-_person_(X,"f"),_person(X) .
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
