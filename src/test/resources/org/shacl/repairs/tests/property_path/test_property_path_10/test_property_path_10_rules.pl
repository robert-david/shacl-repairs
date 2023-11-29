
% Graph Data


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
node1hgd7v9f9x1259_st_(X,Y,"t*"):-node1hgd7v9f9x1259_(X,_),_hasStudent_inv_(X,Y,"t*") .

% Repair Rules

node1hgd7v9f9x1259_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1259_(X,"f"):-_studentShape_(X,"f") .

% sh:minCount 1 for node1hgd7v9f9x1259
s0_(X,"t*"):-node1hgd7v9f9x1259_(X,"t*") .
_hasStudent_inv_(X,@new(s0,X,_hasStudent_inv_,1..1),"t"):-choose(s0,X,_hasStudent,1) .
choose(s0,X,_hasStudent,1);choose(s0,X,_hasStudent,0):-s0_(X,"t*") .
(C-0) {node1hgd7v9f9x1259_st_(X,Y,"f"):node1hgd7v9f9x1259_st_(X,Y,"t*");s1_(Y,"f"):node1hgd7v9f9x1259_st_(X,Y,"t*"),not node1hgd7v9f9x1259_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hgd7v9f9x1259_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-s0_(X,"f"),_hasStudent_inv_(X,Y,"t*"),node1hgd7v9f9x1259_st_(X,Y,"f") .
1 {s1_(Y,"t*"):node1hgd7v9f9x1259_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1hgd7v9f9x1259
s2_(X,"t*"):-node1hgd7v9f9x1259_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_hasStudent_inv_(X,@new(s3,X,_hasStudent_inv_,1..1),"t"):-choose(s3,X,_hasStudent,1) .
choose(s3,X,_hasStudent,1);choose(s3,X,_hasStudent,0):-s3_(X,"t*") .
(C-0) {node1hgd7v9f9x1259_st_(X,Y,"f"):node1hgd7v9f9x1259_st_(X,Y,"t*");s4_(Y,"f"):node1hgd7v9f9x1259_st_(X,Y,"t*"),not node1hgd7v9f9x1259_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hgd7v9f9x1259_st_(X,Y,"t*")}=C,C>0 .
_hasStudent_(Y,X,"f"):-s3_(X,"f"),_hasStudent_inv_(X,Y,"t*"),node1hgd7v9f9x1259_st_(X,Y,"f") .
1 {s4_(Y,"t*"):node1hgd7v9f9x1259_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hgd7v9f9x1259_(X,"f") .

% Interpretation Rules

_hasStudent_(X,Y,"t**"):-_hasStudent_(X,Y,"t*"),not _hasStudent_(X,Y,"f") .
_hasStudent_inv_(X,Y,"t**"):-_hasStudent_inv_(X,Y,"t*"),not _hasStudent_inv_(X,Y,"f") .
node1hgd7v9f9x1259_st_(X,Y,"t**"):-_hasStudent_inv_(X,Y,"t**"),node1hgd7v9f9x1259_st_(X,Y,"t*"),not node1hgd7v9f9x1259_st_(X,Y,"f") .

% Program Constraints

:-_hasStudent_(X,Y,"t"),_hasStudent_(X,Y,"f") .
:-_hasStudent_inv_(X,Y,"t"),_hasStudent_inv_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

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
