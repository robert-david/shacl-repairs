
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
_isLectureOf_(X,Y,"t*"):-_isLectureOf(X,Y) .
_isLectureOf_(X,Y,"t*"):-_isLectureOf_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hdcdgs0ox1924_st_(X,X2,"t*"):-node1hdcdgs0ox1924_(X,_),_enrolledIn_(X,X0,"t*"),_isLectureOf_(X1,X0,"t*"),_hasId_(X1,X2,"t*") .
node1hdcdgs0ox1924_st_(X,Y,"t*"):-node1hdcdgs0ox1924_st(X,Y) .
node1hdcdgs0ox1924_st_(X,Y,"t*"):-node1hdcdgs0ox1924_st_(X,Y,"t") .

% Repair Rules

node1hdcdgs0ox1924_(X,"t*"):-_studentShape_(X,"t*") .
node1hdcdgs0ox1924_(X,"f"):-_studentShape_(X,"f") .



% sh:minCount 1 for node1hdcdgs0ox1924
s0_(X,"t*"):-node1hdcdgs0ox1924_(X,"t*") .
node1hdcdgs0ox1924_st_(X,@new(s0,X,node1hdcdgs0ox1924_st,1..1),"t"):-choose(s0,X,node1hdcdgs0ox1924_st,1) .
choose(s0,X,node1hdcdgs0ox1924_st,1);choose(s0,X,node1hdcdgs0ox1924_st,0):-s0_(X,"t*") .

choose(node1hdcdgs0ox1924_st,X,_enrolledIn,1);choose(node1hdcdgs0ox1924_st,X,_enrolledIn,0):-node1hdcdgs0ox1924_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hdcdgs0ox1924_st,X,_enrolledIn,1),"t"):-choose(node1hdcdgs0ox1924_st,X,_enrolledIn,1),node1hdcdgs0ox1924_st_(X,Y,"t") .
choose(node1hdcdgs0ox1924_st,@new(node1hdcdgs0ox1924_st,X0,_isLectureOf,1),_isLectureOf,1);choose(node1hdcdgs0ox1924_st,@new(node1hdcdgs0ox1924_st,X0,_isLectureOf,1),_isLectureOf,0):-_enrolledIn_(X,X0,"t**"),node1hdcdgs0ox1924_st_(X,Y,"t") .
_isLectureOf_(@new(node1hdcdgs0ox1924_st,X0,_isLectureOf,1),X0,"t"):-choose(node1hdcdgs0ox1924_st,@new(node1hdcdgs0ox1924_st,X0,_isLectureOf,1),_isLectureOf,1),_enrolledIn_(X,X0,"t**"),node1hdcdgs0ox1924_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_isLectureOf_(X1,X0,"t**"),node1hdcdgs0ox1924_st_(X,Y,"t") .
(C-0) {node1hdcdgs0ox1924_st_(X,Y,"f"):node1hdcdgs0ox1924_st_(X,Y,"t*");s1_(Y,"f"):node1hdcdgs0ox1924_st_(X,Y,"t*"),not node1hdcdgs0ox1924_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hdcdgs0ox1924_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_isLectureOf_(X1,X0,"f");_hasId_(X1,X2,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_isLectureOf_(X1,X0,"t*"),_hasId_(X1,X2,"t*"),node1hdcdgs0ox1924_st_(X,X2,"f") .
1 {s1_(Y,"t*"):node1hdcdgs0ox1924_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1hdcdgs0ox1924
s2_(X,"t*"):-node1hdcdgs0ox1924_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hdcdgs0ox1924_st_(X,@new(s3,X,node1hdcdgs0ox1924_st,1..1),"t"):-choose(s3,X,node1hdcdgs0ox1924_st,1) .
choose(s3,X,node1hdcdgs0ox1924_st,1);choose(s3,X,node1hdcdgs0ox1924_st,0):-s3_(X,"t*") .

(C-0) {node1hdcdgs0ox1924_st_(X,Y,"f"):node1hdcdgs0ox1924_st_(X,Y,"t*");s4_(Y,"f"):node1hdcdgs0ox1924_st_(X,Y,"t*"),not node1hdcdgs0ox1924_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hdcdgs0ox1924_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_isLectureOf_(X1,X0,"f");_hasId_(X1,X2,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_isLectureOf_(X1,X0,"t*"),_hasId_(X1,X2,"t*"),node1hdcdgs0ox1924_st_(X,X2,"f") .
1 {s4_(Y,"t*"):node1hdcdgs0ox1924_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hdcdgs0ox1924_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_isLectureOf_(X,Y,"t**"):-_isLectureOf_(X,Y,"t*"),not _isLectureOf_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hdcdgs0ox1924_st_(X,X2,"t**"):-node1hdcdgs0ox1924_st_(X,Y,"t*"),not node1hdcdgs0ox1924_st_(X,Y,"f"),_enrolledIn_(X,X0,"t**"),_isLectureOf_(X1,X0,"t**"),_hasId_(X1,X2,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_isLectureOf_(X,Y,"t"),_isLectureOf_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hdcdgs0ox1924_st_(X,Y,"t"),node1hdcdgs0ox1924_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_isLectureOf(X,Y)):-_isLectureOf_(X,Y,"t**"),not _isLectureOf(X,Y) .
del(_isLectureOf(X,Y)):-_isLectureOf_(X,Y,"f"),_isLectureOf(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
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
