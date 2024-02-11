
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
_isLectureOf_(Y,X,"t"):-_isLectureOf_inv_(X,Y,"t") .
_isLectureOf_inv_(X,Y,"t*"):-_isLectureOf_(Y,X,"t*") .
_isLectureOf_(Y,X,"f"):-_isLectureOf_inv_(X,Y,"f") .
_isLectureOf_inv_(X,Y,"f"):-_isLectureOf_(Y,X,"f") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hmciultox70_st_(X,X2,"t*"):-node1hmciultox70_(X,_),_enrolledIn_(X,X0,"t*"),_isLectureOf_inv_(X0,X1,"t*"),_hasId_(X1,X2,"t*") .

% Repair Rules

node1hmciultox70_(X,"t*"):-_studentShape_(X,"t*") .
node1hmciultox70_(X,"f"):-_studentShape_(X,"f") .



% sh:minCount 1 for node1hmciultox70
s0_(X,"t*"):-node1hmciultox70_(X,"t*") .
node1hmciultox70_st_(X,@new(s0,X,node1hmciultox70_st,1..1),"t"):-choose(s0,X,node1hmciultox70_st,1) .
choose(s0,X,node1hmciultox70_st,1);choose(s0,X,node1hmciultox70_st,0):-s0_(X,"t*") .
choose(node1hmciultox70_st,X,_enrolledIn,1);choose(node1hmciultox70_st,X,_enrolledIn,0):-node1hmciultox70_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hmciultox70_st,X,_enrolledIn,1),"t"):-choose(node1hmciultox70_st,X,_enrolledIn,1),node1hmciultox70_st_(X,Y,"t") .
choose(node1hmciultox70_st,X0,_isLectureOf_inv_,1);choose(node1hmciultox70_st,X0,_isLectureOf_inv_,0):-_enrolledIn_(X,X0,"t**"),node1hmciultox70_st_(X,Y,"t") .
_isLectureOf_inv_(X0,@new(node1hmciultox70_st,X0,_isLectureOf_inv_,1),"t"):-choose(node1hmciultox70_st,X0,_isLectureOf_inv_,1),_enrolledIn_(X,X0,"t**"),node1hmciultox70_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_isLectureOf_inv_(X0,X1,"t**"),node1hmciultox70_st_(X,Y,"t") .
(C-0) {node1hmciultox70_st_(X,Y,"f"):node1hmciultox70_st_(X,Y,"t*");s1_(Y,"f"):node1hmciultox70_st_(X,Y,"t*"),not node1hmciultox70_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hmciultox70_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_isLectureOf_inv_(X0,X1,"f");_hasId_(X1,X2,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_isLectureOf_inv_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox70_st_(X,X2,"f") .
1 {s1_(Y,"t*"):node1hmciultox70_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1hmciultox70
s2_(X,"t*"):-node1hmciultox70_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hmciultox70_st_(X,@new(s3,X,node1hmciultox70_st,1..1),"t"):-choose(s3,X,node1hmciultox70_st,1) .
choose(s3,X,node1hmciultox70_st,1);choose(s3,X,node1hmciultox70_st,0):-s3_(X,"t*") .
(C-0) {node1hmciultox70_st_(X,Y,"f"):node1hmciultox70_st_(X,Y,"t*");s4_(Y,"f"):node1hmciultox70_st_(X,Y,"t*"),not node1hmciultox70_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hmciultox70_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_isLectureOf_inv_(X0,X1,"f");_hasId_(X1,X2,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_isLectureOf_inv_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox70_st_(X,X2,"f") .
1 {s4_(Y,"t*"):node1hmciultox70_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hmciultox70_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_isLectureOf_(X,Y,"t**"):-_isLectureOf_(X,Y,"t*"),not _isLectureOf_(X,Y,"f") .
_isLectureOf_inv_(X,Y,"t**"):-_isLectureOf_inv_(X,Y,"t*"),not _isLectureOf_inv_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hmciultox70_st_(X,X2,"t**"):-node1hmciultox70_st_(X,X2,"t*"),not node1hmciultox70_st_(X,X2,"f"),_enrolledIn_(X,X0,"t**"),_isLectureOf_inv_(X0,X1,"t**"),_hasId_(X1,X2,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_isLectureOf_(X,Y,"t"),_isLectureOf_(X,Y,"f") .
:-_isLectureOf_inv_(X,Y,"t"),_isLectureOf_inv_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hmciultox70_st_(X,Y,"t"),node1hmciultox70_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_isLectureOf(X,Y)):-_isLectureOf_(X,Y,"t**"),not _isLectureOf(X,Y) .
del(_isLectureOf(X,Y)):-_isLectureOf_(X,Y,"f"),_isLectureOf(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
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
