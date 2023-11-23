
% Graph Data

_hasStudent("_bn1","_ben") .
_hasStudent("_bn2","_ben") .

% Shape Targets

targetNode("_ben",_studentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_hasStudent_(X,Y,"t*"):-_hasStudent(X,Y) .
_hasStudent_(X,Y,"t*"):-_hasStudent_(X,Y,"t") .
node1hdcdgs0ox966_st_(X,Y,"t*"):-node1hdcdgs0ox966_(X,_),_hasStudent_(Y,X,"t*") .

% Repair Rules

node1hdcdgs0ox966_(X,"t*"):-_studentShape_(X,"t*") .
node1hdcdgs0ox966_(X,"f"):-_studentShape_(X,"f") .

% sh:maxCount 1 for node1hdcdgs0ox966
s0_(X,"t*"):-node1hdcdgs0ox966_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
_hasStudent_(@new(s1,X,_hasStudent,1..1),X,"t"):-choose(s1,X,_hasStudent,1) .
_hasStudent_(@new(s1,X,_hasStudent,1..2),X,"t"):-choose(s1,X,_hasStudent,2) .
choose(s1,X,_hasStudent,2);choose(s1,X,_hasStudent,1);choose(s1,X,_hasStudent,0):-s1_(X,"t*") .
(C-1) {node1hdcdgs0ox966_st_(X,Y,"f"):node1hdcdgs0ox966_st_(X,Y,"t*");s2_(Y,"f"):node1hdcdgs0ox966_st_(X,Y,"t*"),not node1hdcdgs0ox966_st_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:node1hdcdgs0ox966_st_(X,Y,"t*")}=C,C>1 .
_hasStudent_(Y,X,"f"):-s1_(X,"f"),_hasStudent_(Y,X,"t*"),node1hdcdgs0ox966_st_(X,Y,"f") .
2 {s2_(Y,"t*"):node1hdcdgs0ox966_st_(X,Y,"t**")} 2:-s1_(X,"t*") .


% sh:minCount 0 for node1hdcdgs0ox966
s3_(X,"t*"):-node1hdcdgs0ox966_(X,"t*") .
choose(s3,X,_hasStudent,0):-s3_(X,"t*") .
(C-0) {node1hdcdgs0ox966_st_(X,Y,"f"):node1hdcdgs0ox966_st_(X,Y,"t*");s4_(Y,"f"):node1hdcdgs0ox966_st_(X,Y,"t*"),not node1hdcdgs0ox966_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hdcdgs0ox966_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-s3_(X,"f"),_hasStudent_(Y,X,"t*"),node1hdcdgs0ox966_st_(X,Y,"f") .
0 {s4_(Y,"t*"):node1hdcdgs0ox966_st_(X,Y,"t**")} 0:-s3_(X,"t*") .


% universal for node1hdcdgs0ox966
s5_(X,"t*"):-node1hdcdgs0ox966_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_hasStudent_(@new(s6,X,_hasStudent,1..1),X,"t"):-choose(s6,X,_hasStudent,1) .
choose(s6,X,_hasStudent,1);choose(s6,X,_hasStudent,0):-s6_(X,"t*") .
(C-0) {node1hdcdgs0ox966_st_(X,Y,"f"):node1hdcdgs0ox966_st_(X,Y,"t*");s7_(Y,"f"):node1hdcdgs0ox966_st_(X,Y,"t*"),not node1hdcdgs0ox966_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1hdcdgs0ox966_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-s6_(X,"f"),_hasStudent_(Y,X,"t*"),node1hdcdgs0ox966_st_(X,Y,"f") .
1 {s7_(Y,"t*"):node1hdcdgs0ox966_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s3_(X,"f");s5_(X,"f"):-node1hdcdgs0ox966_(X,"f") .

% Interpretation Rules

_hasStudent_(X,Y,"t**"):-_hasStudent_(X,Y,"t*"),not _hasStudent_(X,Y,"f") .
node1hdcdgs0ox966_st_(X,Y,"t**"):-_hasStudent_(Y,X,"t**"),node1hdcdgs0ox966_st_(X,Y,"t*"),not node1hdcdgs0ox966_st_(X,Y,"f") .

% Program Constraints

:-_hasStudent_(X,Y,"t"),_hasStudent_(X,Y,"f") .
:-s2_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(_hasStudent(X,Y)):-_hasStudent_(X,Y,"t**"),not _hasStudent(X,Y) .
del(_hasStudent(X,Y)):-_hasStudent_(X,Y,"f"),_hasStudent(X,Y) .
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