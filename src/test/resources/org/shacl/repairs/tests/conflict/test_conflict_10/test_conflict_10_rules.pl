
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

_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .
_person_(X,"t*"):-_person(X) .
_person_(X,"t*"):-_person_(X,"t") .

% Repair Rules

node1hmci94m4x86_(X,"f"):-_notPersonShape_(X,"t*") .
node1hmci94m4x86_(X,"t*"):-_notPersonShape_(X,"f") .
s0_(X,"t*"):-node1hmci94m4x86_(X,"t*") .
node1hmci94m4x85_(X,"f"):-s0_(X,"t*") .
node1hmci94m4x85_(X,"t*"):-s0_(X,"f") .
_organization_(X,"t"):-node1hmci94m4x85_(X,"t*") .
_organization_(X,"f"):-node1hmci94m4x85_(X,"f") .
s1_(X,"t*"):-node1hmci94m4x86_(X,"t*") .
_person_(X,"t"):-s1_(X,"t*") .
_person_(X,"f"):-s1_(X,"f") .
s0_(X,"f");s1_(X,"f"):-node1hmci94m4x86_(X,"f") .
s2_(X,"t*"):-_personShape_(X,"t*") .
node1hmci94m4x85_(X,"f"):-s2_(X,"t*") .
node1hmci94m4x85_(X,"t*"):-s2_(X,"f") .
s3_(X,"t*"):-_personShape_(X,"t*") .
_person_(X,"t"):-s3_(X,"t*") .
_person_(X,"f"):-s3_(X,"f") .
s2_(X,"f");s3_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .
_person_(X,"t**"):-_person_(X,"t*"),not _person_(X,"f") .

% Program Constraints

:-_organization_(X,"t"),_organization_(X,"f") .
:-_person_(X,"t"),_person_(X,"f") .

% Change Set Rules

add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
add(_person(X)):-_person_(X,"t**"),not _person(X) .
del(_person(X)):-_person_(X,"f"),_person(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
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
