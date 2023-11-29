
% Graph Data

_enrolledIn("_ben","_bn1") .
_hasLecture("_bn1","_bn2") .
_hasId("_bn2","Math 1") .
xsd_string("Math 1") .

% Shape Targets

targetNode("_ben",_studentShape) .

% Constants

const("Math 1") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasLecture_(X,Y,"t*"):-_hasLecture(X,Y) .
_hasLecture_(X,Y,"t*"):-_hasLecture_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hgd7v9f9x2304_st_(X,X2,"t*"):-node1hgd7v9f9x2304_(X,_),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*") .

% Repair Rules

node1hgd7v9f9x2304_(X,"f"):-_studentShape_(X,"t*") .
node1hgd7v9f9x2304_(X,"t*"):-_studentShape_(X,"f") .
node1hgd7v9f9x2304_(X,"t*"):-node1hgd7v9f9x2304_(X,"t*") .
node1hgd7v9f9x2304_(X,"f"):-node1hgd7v9f9x2304_(X,"f") .



s0_(X,"t*"):-node1hgd7v9f9x2304_(X,"t*") .
node1hgd7v9f9x2304_st_(X,@new(s0,X,node1hgd7v9f9x2304_st,1..1),"t"):-choose(s0,X,node1hgd7v9f9x2304_st,1) .
choose(s0,X,node1hgd7v9f9x2304_st,1);choose(s0,X,node1hgd7v9f9x2304_st,0):-s0_(X,"t*") .
0 {node1hgd7v9f9x2304_st_(X,Y,"t"):const(Y)} 1:-s0_(X,"t*") .
choose(node1hgd7v9f9x2304_st,X,_enrolledIn,1);choose(node1hgd7v9f9x2304_st,X,_enrolledIn,0):-node1hgd7v9f9x2304_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hgd7v9f9x2304_st,X,_enrolledIn,1),"t"):-choose(node1hgd7v9f9x2304_st,X,_enrolledIn,1),node1hgd7v9f9x2304_st_(X,Y,"t") .
choose(node1hgd7v9f9x2304_st,X0,_hasLecture,1);choose(node1hgd7v9f9x2304_st,X0,_hasLecture,0):-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x2304_st_(X,Y,"t") .
_hasLecture_(X0,@new(node1hgd7v9f9x2304_st,X0,_hasLecture,1),"t"):-choose(node1hgd7v9f9x2304_st,X0,_hasLecture,1),_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x2304_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),node1hgd7v9f9x2304_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t"):const(Y)} 1:-_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),node1hgd7v9f9x2304_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x2304_st_(X,Y,"f"):node1hgd7v9f9x2304_st_(X,Y,"t*");s1_(Y,"f"):node1hgd7v9f9x2304_st_(X,Y,"t*"),not node1hgd7v9f9x2304_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hgd7v9f9x2304_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hgd7v9f9x2304_st_(X,X2,"f") .
1 {s1_(Y,"t*"):node1hgd7v9f9x2304_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% sh:minCount 0 for node1hgd7v9f9x2304
s2_(X,"t*"):-node1hgd7v9f9x2304_(X,"t*") .
choose(s2,X,node1hgd7v9f9x2304_st,0):-s2_(X,"t*") .
0 {node1hgd7v9f9x2304_st_(X,Y,"t"):const(Y)} 1:-s2_(X,"t*") .
(C-0) {node1hgd7v9f9x2304_st_(X,Y,"f"):node1hgd7v9f9x2304_st_(X,Y,"t*");s3_(Y,"f"):node1hgd7v9f9x2304_st_(X,Y,"t*"),not node1hgd7v9f9x2304_st_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:node1hgd7v9f9x2304_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s2_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hgd7v9f9x2304_st_(X,X2,"f") .
0 {s3_(Y,"t*"):node1hgd7v9f9x2304_st_(X,Y,"t**")} 1:-s2_(X,"t*") .


% universal for node1hgd7v9f9x2304
s4_(X,"t*"):-node1hgd7v9f9x2304_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
node1hgd7v9f9x2304_st_(X,@new(s5,X,node1hgd7v9f9x2304_st,1..1),"t"):-choose(s5,X,node1hgd7v9f9x2304_st,1) .
choose(s5,X,node1hgd7v9f9x2304_st,1);choose(s5,X,node1hgd7v9f9x2304_st,0):-s5_(X,"t*") .
0 {node1hgd7v9f9x2304_st_(X,Y,"t"):const(Y)} 1:-s5_(X,"t*") .
(C-0) {node1hgd7v9f9x2304_st_(X,Y,"f"):node1hgd7v9f9x2304_st_(X,Y,"t*");s6_(Y,"f"):node1hgd7v9f9x2304_st_(X,Y,"t*"),not node1hgd7v9f9x2304_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:node1hgd7v9f9x2304_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s5_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hgd7v9f9x2304_st_(X,X2,"f") .
1 {s6_(Y,"t*"):node1hgd7v9f9x2304_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s0_(X,"f");s2_(X,"f");s4_(X,"f"):-node1hgd7v9f9x2304_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasLecture_(X,Y,"t**"):-_hasLecture_(X,Y,"t*"),not _hasLecture_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hgd7v9f9x2304_st_(X,X2,"t**"):-node1hgd7v9f9x2304_st_(X,X2,"t*"),not node1hgd7v9f9x2304_st_(X,X2,"f"),_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),_hasId_(X1,X2,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasLecture_(X,Y,"t"),_hasLecture_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hgd7v9f9x2304_st_(X,Y,"t"),node1hgd7v9f9x2304_st_(X,Y,"f") .
:-s1_(X,"t*"),X!="Math 1" .
:-s1_(X,"f"),X="Math 1" .
:-s3_(X,"f") .
:-s7_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasLecture(X,Y)):-_hasLecture_(X,Y,"t**"),not _hasLecture(X,Y) .
del(_hasLecture(X,Y)):-_hasLecture_(X,Y,"f"),_hasLecture(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
#minimize { 1@1,X,Y: node1hgd7v9f9x2304_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: _hasId_(X,Y,"t"), const(Y) } .
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
