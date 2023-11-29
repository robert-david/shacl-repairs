
% Graph Data


% Shape Targets

targetNode("_ben",_studentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasLecture_(X,Y,"t*"):-_hasLecture(X,Y) .
_hasLecture_(X,Y,"t*"):-_hasLecture_(X,Y,"t") .
_hasLecture_(Y,X,"t"):-_hasLecture_inv_(X,Y,"t") .
_hasLecture_inv_(X,Y,"t*"):-_hasLecture_(Y,X,"t*") .
_hasLecture_(Y,X,"f"):-_hasLecture_inv_(X,Y,"f") .
_hasLecture_inv_(X,Y,"f"):-_hasLecture_(Y,X,"f") .
node1hgd7v9f9x1303_st_(X,X1,"t*"):-node1hgd7v9f9x1303_(X,_),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*") .

% Repair Rules

node1hgd7v9f9x1303_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1303_(X,"f"):-_studentShape_(X,"f") .


% sh:minCount 2 for node1hgd7v9f9x1303
s0_(X,"t*"):-node1hgd7v9f9x1303_(X,"t*") .
node1hgd7v9f9x1303_st_(X,@new(s0,X,node1hgd7v9f9x1303_st,1..1),"t"):-choose(s0,X,node1hgd7v9f9x1303_st,1) .
node1hgd7v9f9x1303_st_(X,@new(s0,X,node1hgd7v9f9x1303_st,1..2),"t"):-choose(s0,X,node1hgd7v9f9x1303_st,2) .
choose(s0,X,node1hgd7v9f9x1303_st,2);choose(s0,X,node1hgd7v9f9x1303_st,1);choose(s0,X,node1hgd7v9f9x1303_st,0):-s0_(X,"t*") .
choose(node1hgd7v9f9x1303_st,X,_enrolledIn,1);choose(node1hgd7v9f9x1303_st,X,_enrolledIn,0):-node1hgd7v9f9x1303_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hgd7v9f9x1303_st,X,_enrolledIn,1),"t"):-choose(node1hgd7v9f9x1303_st,X,_enrolledIn,1),node1hgd7v9f9x1303_st_(X,Y,"t") .
0 {_hasLecture_inv_(X0,Y,"t")} 2:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1303_st_(X,Y,"t") .
(C-1) {node1hgd7v9f9x1303_st_(X,Y,"f"):node1hgd7v9f9x1303_st_(X,Y,"t*");s1_(Y,"f"):node1hgd7v9f9x1303_st_(X,Y,"t*"),not node1hgd7v9f9x1303_st_(X,Y,"f")} (C-1):-s0_(X,"f"),#count {Y:node1hgd7v9f9x1303_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1303_st_(X,X1,"f") .
2 {s1_(Y,"t*"):node1hgd7v9f9x1303_st_(X,Y,"t**")} 2:-s0_(X,"t*") .


% universal for node1hgd7v9f9x1303
s2_(X,"t*"):-node1hgd7v9f9x1303_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hgd7v9f9x1303_st_(X,@new(s3,X,node1hgd7v9f9x1303_st,1..1),"t"):-choose(s3,X,node1hgd7v9f9x1303_st,1) .
choose(s3,X,node1hgd7v9f9x1303_st,1);choose(s3,X,node1hgd7v9f9x1303_st,0):-s3_(X,"t*") .
0 {_hasLecture_inv_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1303_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1303_st_(X,Y,"f"):node1hgd7v9f9x1303_st_(X,Y,"t*");s4_(Y,"f"):node1hgd7v9f9x1303_st_(X,Y,"t*"),not node1hgd7v9f9x1303_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hgd7v9f9x1303_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1303_st_(X,X1,"f") .
1 {s4_(Y,"t*"):node1hgd7v9f9x1303_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hgd7v9f9x1303_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasLecture_(X,Y,"t**"):-_hasLecture_(X,Y,"t*"),not _hasLecture_(X,Y,"f") .
_hasLecture_inv_(X,Y,"t**"):-_hasLecture_inv_(X,Y,"t*"),not _hasLecture_inv_(X,Y,"f") .
node1hgd7v9f9x1303_st_(X,X1,"t**"):-node1hgd7v9f9x1303_st_(X,X1,"t*"),not node1hgd7v9f9x1303_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasLecture_inv_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasLecture_(X,Y,"t"),_hasLecture_(X,Y,"f") .
:-_hasLecture_inv_(X,Y,"t"),_hasLecture_inv_(X,Y,"f") .
:-node1hgd7v9f9x1303_st_(X,Y,"t"),node1hgd7v9f9x1303_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasLecture(X,Y)):-_hasLecture_(X,Y,"t**"),not _hasLecture(X,Y) .
del(_hasLecture(X,Y)):-_hasLecture_(X,Y,"f"),_hasLecture(X,Y) .
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
