
% Graph Data

_student("_ann") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_teacher_(X,"t*"):-_teacher(X) .
_teacher_(X,"t*"):-_teacher_(X,"t") .
_student_(X,"t*"):-_student(X) .
_student_(X,"t*"):-_student_(X,"t") .

% Repair Rules

node1hdcdgs0ox763_(X,"f"):-_personShape_(X,"t*") .
node1hdcdgs0ox763_(X,"t*"):-_personShape_(X,"f") .
s0_(X,"f"):-node1hdcdgs0ox763_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
_teacher_(X,"t"):-s1_(X,"t*") .
_teacher_(X,"f"):-s1_(X,"f") .
s2_(X,"t*"):-s0_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
s4_(X,"f"):-s3_(X,"f") .
_student_(X,"t"):-s4_(X,"t*") .
_student_(X,"f"):-s4_(X,"f") .
s4_(X,"t*"):-s3_(X,"t*") .
s1_(X,"f");s2_(X,"f"):-s0_(X,"f") .
s5_(X,"f"):-node1hdcdgs0ox763_(X,"f") .
s6_(X,"t*"):-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
s8_(X,"f"):-s7_(X,"f") .
_teacher_(X,"t"):-s8_(X,"t*") .
_teacher_(X,"f"):-s8_(X,"f") .
s8_(X,"t*"):-s7_(X,"t*") .
s9_(X,"t*"):-s5_(X,"t*") .
_student_(X,"t"):-s9_(X,"t*") .
_student_(X,"f"):-s9_(X,"f") .
s6_(X,"f");s9_(X,"f"):-s5_(X,"f") .
s0_(X,"t*");s5_(X,"t*"):-node1hdcdgs0ox763_(X,"t*") .

% Interpretation Rules

_teacher_(X,"t**"):-_teacher_(X,"t*"),not _teacher_(X,"f") .
_student_(X,"t**"):-_student_(X,"t*"),not _student_(X,"f") .

% Program Constraints

:-_teacher_(X,"t"),_teacher_(X,"f") .
:-_student_(X,"t"),_student_(X,"f") .

% Change Set Rules

add(_teacher(X)):-_teacher_(X,"t**"),not _teacher(X) .
del(_teacher(X)):-_teacher_(X,"f"),_teacher(X) .
add(_student(X)):-_student_(X,"t**"),not _student(X) .
del(_student(X)):-_student_(X,"f"),_student(X) .
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
