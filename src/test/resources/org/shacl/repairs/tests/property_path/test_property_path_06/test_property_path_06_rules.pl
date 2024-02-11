
% Graph Data

_enrolledIn("_ben","_bn1") .
_enrolledIn("_ben","_bn2") .
_hasId("_bn1","_math1") .
_hasId("_bn2","_math2") .
_course("_math1") .
_course("_math2") .

% Shape Targets

targetNode("_ben",_studentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hmcis5g7x72_st_(X,X1,"t*"):-node1hmcis5g7x72_(X,_),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*") .
_course_(X,"t*"):-_course(X) .
_course_(X,"t*"):-_course_(X,"t") .

% Repair Rules

node1hmcis5g7x72_(X,"t*"):-_studentShape_(X,"t*") .
node1hmcis5g7x72_(X,"f"):-_studentShape_(X,"f") .


% sh:qualifiedMaxCount 1 for node1hmcis5g7x72
s0_(X,"t*"):-node1hmcis5g7x72_(X,"t*") .
s1_(X,"f"):-s0_(X,"t*") .
s1_(X,"t*"):-s0_(X,"f") .
node1hmcis5g7x72_st_(X,@new(s1,X,node1hmcis5g7x72_st,1..1),"t"):-choose(s1,X,node1hmcis5g7x72_st,1) .
node1hmcis5g7x72_st_(X,@new(s1,X,node1hmcis5g7x72_st,1..2),"t"):-choose(s1,X,node1hmcis5g7x72_st,2) .
choose(s1,X,node1hmcis5g7x72_st,2);choose(s1,X,node1hmcis5g7x72_st,1);choose(s1,X,node1hmcis5g7x72_st,0):-s1_(X,"t*") .
choose(node1hmcis5g7x72_st,X,_enrolledIn,1);choose(node1hmcis5g7x72_st,X,_enrolledIn,0):-node1hmcis5g7x72_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hmcis5g7x72_st,X,_enrolledIn,1),"t"):-choose(node1hmcis5g7x72_st,X,_enrolledIn,1),node1hmcis5g7x72_st_(X,Y,"t") .
0 {_hasId_(X0,Y,"t")} 2:-_enrolledIn_(X,X0,"t**"),node1hmcis5g7x72_st_(X,Y,"t") .
(C-1) {node1hmcis5g7x72_st_(X,Y,"f"):node1hmcis5g7x72_st_(X,Y,"t*");s2_(Y,"f"):node1hmcis5g7x72_st_(X,Y,"t*"),not node1hmcis5g7x72_st_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:node1hmcis5g7x72_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s1_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x72_st_(X,X1,"f") .
2 {s2_(Y,"t*"):node1hmcis5g7x72_st_(X,Y,"t**")} 2:-s1_(X,"t*") .

_course_(X,"t"):-s2_(X,"t*") .
_course_(X,"f"):-s2_(X,"f") .

% sh:minCount 0 for node1hmcis5g7x72
s3_(X,"t*"):-node1hmcis5g7x72_(X,"t*") .
choose(s3,X,node1hmcis5g7x72_st,0):-s3_(X,"t*") .
(C-0) {node1hmcis5g7x72_st_(X,Y,"f"):node1hmcis5g7x72_st_(X,Y,"t*");s4_(Y,"f"):node1hmcis5g7x72_st_(X,Y,"t*"),not node1hmcis5g7x72_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hmcis5g7x72_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x72_st_(X,X1,"f") .
0 {s4_(Y,"t*"):node1hmcis5g7x72_st_(X,Y,"t**")} 0:-s3_(X,"t*") .


% universal for node1hmcis5g7x72
s5_(X,"t*"):-node1hmcis5g7x72_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
node1hmcis5g7x72_st_(X,@new(s6,X,node1hmcis5g7x72_st,1..1),"t"):-choose(s6,X,node1hmcis5g7x72_st,1) .
choose(s6,X,node1hmcis5g7x72_st,1);choose(s6,X,node1hmcis5g7x72_st,0):-s6_(X,"t*") .
0 {_hasId_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hmcis5g7x72_st_(X,Y,"t") .
(C-0) {node1hmcis5g7x72_st_(X,Y,"f"):node1hmcis5g7x72_st_(X,Y,"t*");s7_(Y,"f"):node1hmcis5g7x72_st_(X,Y,"t*"),not node1hmcis5g7x72_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1hmcis5g7x72_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s6_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x72_st_(X,X1,"f") .
1 {s7_(Y,"t*"):node1hmcis5g7x72_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s3_(X,"f");s5_(X,"f"):-node1hmcis5g7x72_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hmcis5g7x72_st_(X,X1,"t**"):-node1hmcis5g7x72_st_(X,X1,"t*"),not node1hmcis5g7x72_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasId_(X0,X1,"t**") .
_course_(X,"t**"):-_course_(X,"t*"),not _course_(X,"f") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hmcis5g7x72_st_(X,Y,"t"),node1hmcis5g7x72_st_(X,Y,"f") .
:-_course_(X,"t"),_course_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
add(_course(X)):-_course_(X,"t**"),not _course(X) .
del(_course(X)):-_course_(X,"f"),_course(X) .
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
