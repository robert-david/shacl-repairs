
% Graph Data


% Shape Targets

targetNode("_ben",_studentShape) .

% Constants

const("ID") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hgd7v9f9x1315_st_(X,X1,"t*"):-node1hgd7v9f9x1315_(X,_),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1315_(X,"t*"):-s0_(X,"t*") .
node1hgd7v9f9x1315_(X,"f"):-s0_(X,"f") .


% sh:minCount 0 for node1hgd7v9f9x1315
s1_(X,"t*"):-node1hgd7v9f9x1315_(X,"t*") .
choose(s1,X,node1hgd7v9f9x1315_st,0):-s1_(X,"t*") .
0 {node1hgd7v9f9x1315_st_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
choose(node1hgd7v9f9x1315_st,X,_enrolledIn,1);choose(node1hgd7v9f9x1315_st,X,_enrolledIn,0):-node1hgd7v9f9x1315_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hgd7v9f9x1315_st,X,_enrolledIn,1),"t"):-choose(node1hgd7v9f9x1315_st,X,_enrolledIn,1),node1hgd7v9f9x1315_st_(X,Y,"t") .
0 {_hasId_(X0,Y,"t"):const(Y)} 1:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1315_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1315_st_(X,Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*");s2_(Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*"),not node1hgd7v9f9x1315_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:node1hgd7v9f9x1315_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s1_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1315_st_(X,X1,"f") .
0 {s2_(Y,"t*"):node1hgd7v9f9x1315_st_(X,Y,"t**")} 1:-s1_(X,"t*") .


% sh:maxCount 1 for node1hgd7v9f9x1315
s3_(X,"t*"):-node1hgd7v9f9x1315_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
node1hgd7v9f9x1315_st_(X,@new(s4,X,node1hgd7v9f9x1315_st,1..1),"t"):-choose(s4,X,node1hgd7v9f9x1315_st,1) .
node1hgd7v9f9x1315_st_(X,@new(s4,X,node1hgd7v9f9x1315_st,1..2),"t"):-choose(s4,X,node1hgd7v9f9x1315_st,2) .
choose(s4,X,node1hgd7v9f9x1315_st,2);choose(s4,X,node1hgd7v9f9x1315_st,1);choose(s4,X,node1hgd7v9f9x1315_st,0):-s4_(X,"t*") .
0 {node1hgd7v9f9x1315_st_(X,Y,"t"):const(Y)} 1:-s4_(X,"t*") .
0 {_hasId_(X0,Y,"t")} 2:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1315_st_(X,Y,"t") .
(C-1) {node1hgd7v9f9x1315_st_(X,Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*");s5_(Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*"),not node1hgd7v9f9x1315_st_(X,Y,"f")} (C-1):-s4_(X,"f"),#count {Y:node1hgd7v9f9x1315_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s4_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1315_st_(X,X1,"f") .
2 {s5_(Y,"t*"):node1hgd7v9f9x1315_st_(X,Y,"t**")} 2:-s4_(X,"t*") .


% universal for node1hgd7v9f9x1315
s6_(X,"t*"):-node1hgd7v9f9x1315_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
node1hgd7v9f9x1315_st_(X,@new(s7,X,node1hgd7v9f9x1315_st,1..1),"t"):-choose(s7,X,node1hgd7v9f9x1315_st,1) .
choose(s7,X,node1hgd7v9f9x1315_st,1);choose(s7,X,node1hgd7v9f9x1315_st,0):-s7_(X,"t*") .
0 {node1hgd7v9f9x1315_st_(X,Y,"t"):const(Y)} 1:-s7_(X,"t*") .
0 {_hasId_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1315_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1315_st_(X,Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*");s8_(Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*"),not node1hgd7v9f9x1315_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:node1hgd7v9f9x1315_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s7_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1315_st_(X,X1,"f") .
1 {s8_(Y,"t*"):node1hgd7v9f9x1315_st_(X,Y,"t**")} 1:-s7_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .


s1_(X,"f");s3_(X,"f");s6_(X,"f"):-node1hgd7v9f9x1315_(X,"f") .
s10_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1315_(X,"t*"):-s10_(X,"t*") .
node1hgd7v9f9x1315_(X,"f"):-s10_(X,"f") .


s11_(X,"t*"):-node1hgd7v9f9x1315_(X,"t*") .
node1hgd7v9f9x1315_st_(X,@new(s11,X,node1hgd7v9f9x1315_st,1..1),"t"):-choose(s11,X,node1hgd7v9f9x1315_st,1) .
choose(s11,X,node1hgd7v9f9x1315_st,1);choose(s11,X,node1hgd7v9f9x1315_st,0):-s11_(X,"t*") .
0 {node1hgd7v9f9x1315_st_(X,Y,"t"):const(Y)} 1:-s11_(X,"t*") .
(C-0) {node1hgd7v9f9x1315_st_(X,Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*");s12_(Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*"),not node1hgd7v9f9x1315_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:node1hgd7v9f9x1315_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s11_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1315_st_(X,X1,"f") .
1 {s12_(Y,"t*"):node1hgd7v9f9x1315_st_(X,Y,"t**")} 1:-s11_(X,"t*") .


s13_(X,"t*"):-node1hgd7v9f9x1315_(X,"t*") .
choose(s13,X,node1hgd7v9f9x1315_st,0):-s13_(X,"t*") .
0 {node1hgd7v9f9x1315_st_(X,Y,"t"):const(Y)} 1:-s13_(X,"t*") .
(C-0) {node1hgd7v9f9x1315_st_(X,Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*");s14_(Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*"),not node1hgd7v9f9x1315_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:node1hgd7v9f9x1315_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s13_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1315_st_(X,X1,"f") .
0 {s14_(Y,"t*"):node1hgd7v9f9x1315_st_(X,Y,"t**")} 1:-s13_(X,"t*") .


s15_(X,"t*"):-node1hgd7v9f9x1315_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
node1hgd7v9f9x1315_st_(X,@new(s16,X,node1hgd7v9f9x1315_st,1..1),"t"):-choose(s16,X,node1hgd7v9f9x1315_st,1) .
choose(s16,X,node1hgd7v9f9x1315_st,1);choose(s16,X,node1hgd7v9f9x1315_st,0):-s16_(X,"t*") .
0 {node1hgd7v9f9x1315_st_(X,Y,"t"):const(Y)} 1:-s16_(X,"t*") .
(C-0) {node1hgd7v9f9x1315_st_(X,Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*");s17_(Y,"f"):node1hgd7v9f9x1315_st_(X,Y,"t*"),not node1hgd7v9f9x1315_st_(X,Y,"f")} (C-0):-s16_(X,"f"),#count {Y:node1hgd7v9f9x1315_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s16_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1315_st_(X,X1,"f") .
1 {s17_(Y,"t*"):node1hgd7v9f9x1315_st_(X,Y,"t**")} 1:-s16_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .


s11_(X,"f");s13_(X,"f");s15_(X,"f"):-node1hgd7v9f9x1315_(X,"f") .
s0_(X,"f");s10_(X,"f"):-_studentShape_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hgd7v9f9x1315_st_(X,X1,"t**"):-node1hgd7v9f9x1315_st_(X,X1,"t*"),not node1hgd7v9f9x1315_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasId_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hgd7v9f9x1315_st_(X,Y,"t"),node1hgd7v9f9x1315_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s5_(X,"f") .
:-s9_(X,"f") .
:-s12_(X,"t*"),X!="ID" .
:-s12_(X,"f"),X="ID" .
:-s14_(X,"f") .
:-s18_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
#minimize { 1@1,X,Y: node1hgd7v9f9x1315_st_(X,Y,"t"), const(Y) } .
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
