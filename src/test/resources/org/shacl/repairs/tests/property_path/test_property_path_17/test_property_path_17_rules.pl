
% Graph Data


% Shape Targets

targetNode("_ben",_studentShape) .

% Constants

const("_study1") .

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
node1hgd7v9f9x1340_st_(X,X1,"t*"):-node1hgd7v9f9x1340_(X,_),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1340_(X,"t*"):-s0_(X,"t*") .
node1hgd7v9f9x1340_(X,"f"):-s0_(X,"f") .


s1_(X,"t*"):-node1hgd7v9f9x1340_(X,"t*") .
node1hgd7v9f9x1340_st_(X,@new(s1,X,node1hgd7v9f9x1340_st,1..1),"t"):-choose(s1,X,node1hgd7v9f9x1340_st,1) .
choose(s1,X,node1hgd7v9f9x1340_st,1);choose(s1,X,node1hgd7v9f9x1340_st,0):-s1_(X,"t*") .
0 {node1hgd7v9f9x1340_st_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
choose(node1hgd7v9f9x1340_st,X,_enrolledIn,1);choose(node1hgd7v9f9x1340_st,X,_enrolledIn,0):-node1hgd7v9f9x1340_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hgd7v9f9x1340_st,X,_enrolledIn,1),"t"):-choose(node1hgd7v9f9x1340_st,X,_enrolledIn,1),node1hgd7v9f9x1340_st_(X,Y,"t") .
0 {_hasLecture_inv_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1340_st_(X,Y,"t") .
0 {_hasLecture_inv_(X0,Y,"t"):const(Y)} 1:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1340_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1340_st_(X,Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*");s2_(Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*"),not node1hgd7v9f9x1340_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:node1hgd7v9f9x1340_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s1_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1340_st_(X,X1,"f") .
1 {s2_(Y,"t*"):node1hgd7v9f9x1340_st_(X,Y,"t**")} 1:-s1_(X,"t*") .


% sh:minCount 0 for node1hgd7v9f9x1340
s3_(X,"t*"):-node1hgd7v9f9x1340_(X,"t*") .
choose(s3,X,node1hgd7v9f9x1340_st,0):-s3_(X,"t*") .
0 {node1hgd7v9f9x1340_st_(X,Y,"t"):const(Y)} 1:-s3_(X,"t*") .
(C-0) {node1hgd7v9f9x1340_st_(X,Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*");s4_(Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*"),not node1hgd7v9f9x1340_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hgd7v9f9x1340_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1340_st_(X,X1,"f") .
0 {s4_(Y,"t*"):node1hgd7v9f9x1340_st_(X,Y,"t**")} 1:-s3_(X,"t*") .


% universal for node1hgd7v9f9x1340
s5_(X,"t*"):-node1hgd7v9f9x1340_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
node1hgd7v9f9x1340_st_(X,@new(s6,X,node1hgd7v9f9x1340_st,1..1),"t"):-choose(s6,X,node1hgd7v9f9x1340_st,1) .
choose(s6,X,node1hgd7v9f9x1340_st,1);choose(s6,X,node1hgd7v9f9x1340_st,0):-s6_(X,"t*") .
0 {node1hgd7v9f9x1340_st_(X,Y,"t"):const(Y)} 1:-s6_(X,"t*") .
(C-0) {node1hgd7v9f9x1340_st_(X,Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*");s7_(Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*"),not node1hgd7v9f9x1340_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1hgd7v9f9x1340_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s6_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1340_st_(X,X1,"f") .
1 {s7_(Y,"t*"):node1hgd7v9f9x1340_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s1_(X,"f");s3_(X,"f");s5_(X,"f"):-node1hgd7v9f9x1340_(X,"f") .
s9_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1340_(X,"t*"):-s9_(X,"t*") .
node1hgd7v9f9x1340_(X,"f"):-s9_(X,"f") .


% sh:minCount 1 for node1hgd7v9f9x1340
s10_(X,"t*"):-node1hgd7v9f9x1340_(X,"t*") .
node1hgd7v9f9x1340_st_(X,@new(s10,X,node1hgd7v9f9x1340_st,1..1),"t"):-choose(s10,X,node1hgd7v9f9x1340_st,1) .
choose(s10,X,node1hgd7v9f9x1340_st,1);choose(s10,X,node1hgd7v9f9x1340_st,0):-s10_(X,"t*") .
0 {node1hgd7v9f9x1340_st_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
(C-0) {node1hgd7v9f9x1340_st_(X,Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*");s11_(Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*"),not node1hgd7v9f9x1340_st_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:node1hgd7v9f9x1340_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s10_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1340_st_(X,X1,"f") .
1 {s11_(Y,"t*"):node1hgd7v9f9x1340_st_(X,Y,"t**")} 1:-s10_(X,"t*") .


s12_(X,"t*"):-node1hgd7v9f9x1340_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
node1hgd7v9f9x1340_st_(X,@new(s13,X,node1hgd7v9f9x1340_st,1..1),"t"):-choose(s13,X,node1hgd7v9f9x1340_st,1) .
choose(s13,X,node1hgd7v9f9x1340_st,1);choose(s13,X,node1hgd7v9f9x1340_st,0):-s13_(X,"t*") .
0 {node1hgd7v9f9x1340_st_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {node1hgd7v9f9x1340_st_(X,Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*");s14_(Y,"f"):node1hgd7v9f9x1340_st_(X,Y,"t*"),not node1hgd7v9f9x1340_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:node1hgd7v9f9x1340_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_inv_(X0,X1,"f"):-s13_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_inv_(X0,X1,"t*"),node1hgd7v9f9x1340_st_(X,X1,"f") .
1 {s14_(Y,"t*"):node1hgd7v9f9x1340_st_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s10_(X,"f");s12_(X,"f"):-node1hgd7v9f9x1340_(X,"f") .
s0_(X,"f");s9_(X,"f"):-_studentShape_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasLecture_(X,Y,"t**"):-_hasLecture_(X,Y,"t*"),not _hasLecture_(X,Y,"f") .
_hasLecture_inv_(X,Y,"t**"):-_hasLecture_inv_(X,Y,"t*"),not _hasLecture_inv_(X,Y,"f") .
node1hgd7v9f9x1340_st_(X,X1,"t**"):-node1hgd7v9f9x1340_st_(X,X1,"t*"),not node1hgd7v9f9x1340_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasLecture_inv_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasLecture_(X,Y,"t"),_hasLecture_(X,Y,"f") .
:-_hasLecture_inv_(X,Y,"t"),_hasLecture_inv_(X,Y,"f") .
:-node1hgd7v9f9x1340_st_(X,Y,"t"),node1hgd7v9f9x1340_st_(X,Y,"f") .
:-s2_(X,"t*"),X!="_study1" .
:-s2_(X,"f"),X="_study1" .
:-s4_(X,"f") .
:-s8_(X,"f") .
:-s11_(X,"f") .
:-s15_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasLecture(X,Y)):-_hasLecture_(X,Y,"t**"),not _hasLecture(X,Y) .
del(_hasLecture(X,Y)):-_hasLecture_(X,Y,"f"),_hasLecture(X,Y) .
#minimize { 1@1,X,Y: node1hgd7v9f9x1340_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,Y,X: _hasLecture_(Y,X,"t"), const(Y) } .
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
