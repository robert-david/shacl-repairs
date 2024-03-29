
% Graph Data


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
node1hmciultox133_st_(X,X2,"t*"):-node1hmciultox133_(X,_),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*") .

% Repair Rules

s0_(X,"t*"):-_studentShape_(X,"t*") .
node1hmciultox133_(X,"t*"):-s0_(X,"t*") .
node1hmciultox133_(X,"f"):-s0_(X,"f") .



% sh:minCount 2 for node1hmciultox133
s1_(X,"t*"):-node1hmciultox133_(X,"t*") .
node1hmciultox133_st_(X,@new(s1,X,node1hmciultox133_st,1..1),"t"):-choose(s1,X,node1hmciultox133_st,1) .
node1hmciultox133_st_(X,@new(s1,X,node1hmciultox133_st,1..2),"t"):-choose(s1,X,node1hmciultox133_st,2) .
choose(s1,X,node1hmciultox133_st,2);choose(s1,X,node1hmciultox133_st,1);choose(s1,X,node1hmciultox133_st,0):-s1_(X,"t*") .
0 {node1hmciultox133_st_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
choose(node1hmciultox133_st,X,_enrolledIn,1);choose(node1hmciultox133_st,X,_enrolledIn,0):-node1hmciultox133_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hmciultox133_st,X,_enrolledIn,1),"t"):-choose(node1hmciultox133_st,X,_enrolledIn,1),node1hmciultox133_st_(X,Y,"t") .
choose(node1hmciultox133_st,X0,_hasLecture,1);choose(node1hmciultox133_st,X0,_hasLecture,0):-_enrolledIn_(X,X0,"t**"),node1hmciultox133_st_(X,Y,"t") .
_hasLecture_(X0,@new(node1hmciultox133_st,X0,_hasLecture,1),"t"):-choose(node1hmciultox133_st,X0,_hasLecture,1),_enrolledIn_(X,X0,"t**"),node1hmciultox133_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 2:-_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),node1hmciultox133_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t"):const(Y)} 1:-_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),node1hmciultox133_st_(X,Y,"t") .
(C-1) {node1hmciultox133_st_(X,Y,"f"):node1hmciultox133_st_(X,Y,"t*");s2_(Y,"f"):node1hmciultox133_st_(X,Y,"t*"),not node1hmciultox133_st_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:node1hmciultox133_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s1_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox133_st_(X,X2,"f") .
2 {s2_(Y,"t*"):node1hmciultox133_st_(X,Y,"t**")} 2:-s1_(X,"t*") .


% universal for node1hmciultox133
s3_(X,"t*"):-node1hmciultox133_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
node1hmciultox133_st_(X,@new(s4,X,node1hmciultox133_st,1..1),"t"):-choose(s4,X,node1hmciultox133_st,1) .
choose(s4,X,node1hmciultox133_st,1);choose(s4,X,node1hmciultox133_st,0):-s4_(X,"t*") .
0 {node1hmciultox133_st_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),node1hmciultox133_st_(X,Y,"t") .
(C-0) {node1hmciultox133_st_(X,Y,"f"):node1hmciultox133_st_(X,Y,"t*");s5_(Y,"f"):node1hmciultox133_st_(X,Y,"t*"),not node1hmciultox133_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:node1hmciultox133_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s4_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox133_st_(X,X2,"f") .
1 {s5_(Y,"t*"):node1hmciultox133_st_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hmciultox133_(X,"f") .
s7_(X,"t*"):-_studentShape_(X,"t*") .
node1hmciultox133_(X,"t*"):-s7_(X,"t*") .
node1hmciultox133_(X,"f"):-s7_(X,"f") .



s8_(X,"t*"):-node1hmciultox133_(X,"t*") .
node1hmciultox133_st_(X,@new(s8,X,node1hmciultox133_st,1..1),"t"):-choose(s8,X,node1hmciultox133_st,1) .
choose(s8,X,node1hmciultox133_st,1);choose(s8,X,node1hmciultox133_st,0):-s8_(X,"t*") .
0 {node1hmciultox133_st_(X,Y,"t"):const(Y)} 1:-s8_(X,"t*") .
(C-0) {node1hmciultox133_st_(X,Y,"f"):node1hmciultox133_st_(X,Y,"t*");s9_(Y,"f"):node1hmciultox133_st_(X,Y,"t*"),not node1hmciultox133_st_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:node1hmciultox133_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s8_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox133_st_(X,X2,"f") .
1 {s9_(Y,"t*"):node1hmciultox133_st_(X,Y,"t**")} 1:-s8_(X,"t*") .


% sh:minCount 0 for node1hmciultox133
s10_(X,"t*"):-node1hmciultox133_(X,"t*") .
choose(s10,X,node1hmciultox133_st,0):-s10_(X,"t*") .
0 {node1hmciultox133_st_(X,Y,"t"):const(Y)} 1:-s10_(X,"t*") .
(C-0) {node1hmciultox133_st_(X,Y,"f"):node1hmciultox133_st_(X,Y,"t*");s11_(Y,"f"):node1hmciultox133_st_(X,Y,"t*"),not node1hmciultox133_st_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:node1hmciultox133_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s10_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox133_st_(X,X2,"f") .
0 {s11_(Y,"t*"):node1hmciultox133_st_(X,Y,"t**")} 1:-s10_(X,"t*") .


s12_(X,"t*"):-node1hmciultox133_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
node1hmciultox133_st_(X,@new(s13,X,node1hmciultox133_st,1..1),"t"):-choose(s13,X,node1hmciultox133_st,1) .
choose(s13,X,node1hmciultox133_st,1);choose(s13,X,node1hmciultox133_st,0):-s13_(X,"t*") .
0 {node1hmciultox133_st_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {node1hmciultox133_st_(X,Y,"f"):node1hmciultox133_st_(X,Y,"t*");s14_(Y,"f"):node1hmciultox133_st_(X,Y,"t*"),not node1hmciultox133_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:node1hmciultox133_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasLecture_(X0,X1,"f");_hasId_(X1,X2,"f"):-s13_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasLecture_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hmciultox133_st_(X,X2,"f") .
1 {s14_(Y,"t*"):node1hmciultox133_st_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s8_(X,"f");s10_(X,"f");s12_(X,"f"):-node1hmciultox133_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_studentShape_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasLecture_(X,Y,"t**"):-_hasLecture_(X,Y,"t*"),not _hasLecture_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hmciultox133_st_(X,X2,"t**"):-node1hmciultox133_st_(X,X2,"t*"),not node1hmciultox133_st_(X,X2,"f"),_enrolledIn_(X,X0,"t**"),_hasLecture_(X0,X1,"t**"),_hasId_(X1,X2,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasLecture_(X,Y,"t"),_hasLecture_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hmciultox133_st_(X,Y,"t"),node1hmciultox133_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"t*"),X!="Math 1" .
:-s9_(X,"f"),X="Math 1" .
:-s11_(X,"f") .
:-s15_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasLecture(X,Y)):-_hasLecture_(X,Y,"t**"),not _hasLecture(X,Y) .
del(_hasLecture(X,Y)):-_hasLecture_(X,Y,"f"),_hasLecture(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
#minimize { 1@1,X,Y: node1hmciultox133_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: _hasId_(X,Y,"t"), const(Y) } .
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
