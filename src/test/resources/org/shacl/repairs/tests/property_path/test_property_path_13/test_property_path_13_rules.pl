
% Graph Data

_enrolledIn("_ben","_c1") .
_enrolledIn("_ben","_c2") .
_hasLecture("_study1","_c1") .
_hasLecture("_study2","_c1") .
_hasLecture("_study3","_c1") .
_hasLecture("_study3","_c2") .

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
node1hdcdgs0ox989_st_(X,X1,"t*"):-node1hdcdgs0ox989_(X,_),_enrolledIn_(X,X0,"t*"),_hasLecture_(X1,X0,"t*") .
node1hdcdgs0ox989_st_(X,Y,"t*"):-node1hdcdgs0ox989_st(X,Y) .
node1hdcdgs0ox989_st_(X,Y,"t*"):-node1hdcdgs0ox989_st_(X,Y,"t") .

% Repair Rules

node1hdcdgs0ox989_(X,"t*"):-_studentShape_(X,"t*") .
node1hdcdgs0ox989_(X,"f"):-_studentShape_(X,"f") .


% sh:minCount 0 for node1hdcdgs0ox989
s0_(X,"t*"):-node1hdcdgs0ox989_(X,"t*") .
choose(s0,X,node1hdcdgs0ox989_st,0):-s0_(X,"t*") .

choose(node1hdcdgs0ox989_st,X,_enrolledIn,1);choose(node1hdcdgs0ox989_st,X,_enrolledIn,0):-node1hdcdgs0ox989_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hdcdgs0ox989_st,X,_enrolledIn,1),"t"):-choose(node1hdcdgs0ox989_st,X,_enrolledIn,1),node1hdcdgs0ox989_st_(X,Y,"t") .
(C-0) {node1hdcdgs0ox989_st_(X,Y,"f"):node1hdcdgs0ox989_st_(X,Y,"t*");s1_(Y,"f"):node1hdcdgs0ox989_st_(X,Y,"t*"),not node1hdcdgs0ox989_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hdcdgs0ox989_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X1,X0,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X1,X0,"t*"),node1hdcdgs0ox989_st_(X,X1,"f") .
0 {s1_(Y,"t*"):node1hdcdgs0ox989_st_(X,Y,"t**")} 0:-s0_(X,"t*") .


% sh:maxCount 1 for node1hdcdgs0ox989
s2_(X,"t*"):-node1hdcdgs0ox989_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hdcdgs0ox989_st_(X,@new(s3,X,node1hdcdgs0ox989_st,1..1),"t"):-choose(s3,X,node1hdcdgs0ox989_st,1) .
node1hdcdgs0ox989_st_(X,@new(s3,X,node1hdcdgs0ox989_st,1..2),"t"):-choose(s3,X,node1hdcdgs0ox989_st,2) .
choose(s3,X,node1hdcdgs0ox989_st,2);choose(s3,X,node1hdcdgs0ox989_st,1);choose(s3,X,node1hdcdgs0ox989_st,0):-s3_(X,"t*") .

0 {_hasLecture_(Y,X0,"t")} 2:-_enrolledIn_(X,X0,"t**"),node1hdcdgs0ox989_st_(X,Y,"t") .
(C-1) {node1hdcdgs0ox989_st_(X,Y,"f"):node1hdcdgs0ox989_st_(X,Y,"t*");s4_(Y,"f"):node1hdcdgs0ox989_st_(X,Y,"t*"),not node1hdcdgs0ox989_st_(X,Y,"f")} (C-1):-s3_(X,"f"),#count {Y:node1hdcdgs0ox989_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasLecture_(X1,X0,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X1,X0,"t*"),node1hdcdgs0ox989_st_(X,X1,"f") .
2 {s4_(Y,"t*"):node1hdcdgs0ox989_st_(X,Y,"t**")} 2:-s3_(X,"t*") .


% universal for node1hdcdgs0ox989
s5_(X,"t*"):-node1hdcdgs0ox989_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
node1hdcdgs0ox989_st_(X,@new(s6,X,node1hdcdgs0ox989_st,1..1),"t"):-choose(s6,X,node1hdcdgs0ox989_st,1) .
choose(s6,X,node1hdcdgs0ox989_st,1);choose(s6,X,node1hdcdgs0ox989_st,0):-s6_(X,"t*") .

0 {_hasLecture_(Y,X0,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hdcdgs0ox989_st_(X,Y,"t") .
(C-0) {node1hdcdgs0ox989_st_(X,Y,"f"):node1hdcdgs0ox989_st_(X,Y,"t*");s7_(Y,"f"):node1hdcdgs0ox989_st_(X,Y,"t*"),not node1hdcdgs0ox989_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1hdcdgs0ox989_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X1,X0,"f"):-s6_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X1,X0,"t*"),node1hdcdgs0ox989_st_(X,X1,"f") .
1 {s7_(Y,"t*"):node1hdcdgs0ox989_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s2_(X,"f");s5_(X,"f"):-node1hdcdgs0ox989_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasLecture_(X,Y,"t**"):-_hasLecture_(X,Y,"t*"),not _hasLecture_(X,Y,"f") .
node1hdcdgs0ox989_st_(X,X1,"t**"):-node1hdcdgs0ox989_st_(X,Y,"t*"),not node1hdcdgs0ox989_st_(X,Y,"f"),_enrolledIn_(X,X0,"t**"),_hasLecture_(X1,X0,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasLecture_(X,Y,"t"),_hasLecture_(X,Y,"f") .
:-node1hdcdgs0ox989_st_(X,Y,"t"),node1hdcdgs0ox989_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

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
