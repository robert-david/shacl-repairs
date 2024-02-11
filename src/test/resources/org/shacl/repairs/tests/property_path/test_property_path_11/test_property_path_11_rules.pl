
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
_hasStudent_(Y,X,"t"):-_hasStudent_inv_(X,Y,"t") .
_hasStudent_inv_(X,Y,"t*"):-_hasStudent_(Y,X,"t*") .
_hasStudent_(Y,X,"f"):-_hasStudent_inv_(X,Y,"f") .
_hasStudent_inv_(X,Y,"f"):-_hasStudent_(Y,X,"f") .
node1hmcis5g7x140_st_(X,Y,"t*"):-node1hmcis5g7x140_(X,_),_hasStudent_inv_(X,Y,"t*") .

% Repair Rules

node1hmcis5g7x140_(X,"t*"):-_studentShape_(X,"t*") .
node1hmcis5g7x140_(X,"f"):-_studentShape_(X,"f") .

% sh:minCount 0 for node1hmcis5g7x140
s0_(X,"t*"):-node1hmcis5g7x140_(X,"t*") .
choose(s0,X,_hasStudent,0):-s0_(X,"t*") .
(C-0) {node1hmcis5g7x140_st_(X,Y,"f"):node1hmcis5g7x140_st_(X,Y,"t*");s1_(Y,"f"):node1hmcis5g7x140_st_(X,Y,"t*"),not node1hmcis5g7x140_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hmcis5g7x140_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-s0_(X,"f"),_hasStudent_inv_(X,Y,"t*"),node1hmcis5g7x140_st_(X,Y,"f") .
0 {s1_(Y,"t*"):node1hmcis5g7x140_st_(X,Y,"t**")} 0:-s0_(X,"t*") .


% sh:maxCount 1 for node1hmcis5g7x140
s2_(X,"t*"):-node1hmcis5g7x140_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_hasStudent_inv_(X,@new(s3,X,_hasStudent_inv_,1..1),"t"):-choose(s3,X,_hasStudent,1) .
_hasStudent_inv_(X,@new(s3,X,_hasStudent_inv_,1..2),"t"):-choose(s3,X,_hasStudent,2) .
choose(s3,X,_hasStudent,2);choose(s3,X,_hasStudent,1);choose(s3,X,_hasStudent,0):-s3_(X,"t*") .
(C-1) {node1hmcis5g7x140_st_(X,Y,"f"):node1hmcis5g7x140_st_(X,Y,"t*");s4_(Y,"f"):node1hmcis5g7x140_st_(X,Y,"t*"),not node1hmcis5g7x140_st_(X,Y,"f")} (C-1):-s3_(X,"f"),#count {Y:node1hmcis5g7x140_st_(X,Y,"t*")}=C,C>1 .
_hasStudent_(Y,X,"f"):-s3_(X,"f"),_hasStudent_inv_(X,Y,"t*"),node1hmcis5g7x140_st_(X,Y,"f") .
2 {s4_(Y,"t*"):node1hmcis5g7x140_st_(X,Y,"t**")} 2:-s3_(X,"t*") .


% universal for node1hmcis5g7x140
s5_(X,"t*"):-node1hmcis5g7x140_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_hasStudent_inv_(X,@new(s6,X,_hasStudent_inv_,1..1),"t"):-choose(s6,X,_hasStudent,1) .
choose(s6,X,_hasStudent,1);choose(s6,X,_hasStudent,0):-s6_(X,"t*") .
(C-0) {node1hmcis5g7x140_st_(X,Y,"f"):node1hmcis5g7x140_st_(X,Y,"t*");s7_(Y,"f"):node1hmcis5g7x140_st_(X,Y,"t*"),not node1hmcis5g7x140_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1hmcis5g7x140_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-s6_(X,"f"),_hasStudent_inv_(X,Y,"t*"),node1hmcis5g7x140_st_(X,Y,"f") .
1 {s7_(Y,"t*"):node1hmcis5g7x140_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s2_(X,"f");s5_(X,"f"):-node1hmcis5g7x140_(X,"f") .

% Interpretation Rules

_hasStudent_(X,Y,"t**"):-_hasStudent_(X,Y,"t*"),not _hasStudent_(X,Y,"f") .
_hasStudent_inv_(X,Y,"t**"):-_hasStudent_inv_(X,Y,"t*"),not _hasStudent_inv_(X,Y,"f") .
node1hmcis5g7x140_st_(X,Y,"t**"):-_hasStudent_inv_(X,Y,"t**"),node1hmcis5g7x140_st_(X,Y,"t*"),not node1hmcis5g7x140_st_(X,Y,"f") .

% Program Constraints

:-_hasStudent_(X,Y,"t"),_hasStudent_(X,Y,"f") .
:-_hasStudent_inv_(X,Y,"t"),_hasStudent_inv_(X,Y,"f") .
:-s1_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(_hasStudent(X,Y)):-_hasStudent_(X,Y,"t**"),not _hasStudent(X,Y) .
del(_hasStudent(X,Y)):-_hasStudent_(X,Y,"f"),_hasStudent(X,Y) .
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
