
% Graph Data

_enrolledIn("_ben","_bn1") .
_p1("_bn1","_bn2") .
_hasId("_bn2","Math 1") .
xsd_string("Math 1") .
_p0("_x","_bn1") .

% Shape Targets

targetNode("_x",_cutShape) .
targetNode("_ben",_studentShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_cutShape_("_x","t*"):-actualTarget("_x",_cutShape) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_p1_(X,Y,"t*"):-_p1(X,Y) .
_p1_(X,Y,"t*"):-_p1_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hgd7v9f9x1243_st_(X,X2,"t*"):-node1hgd7v9f9x1243_(X,_),_enrolledIn_(X,X0,"t*"),_p1_(X0,X1,"t*"),_hasId_(X1,X2,"t*") .
_p0_(X,Y,"t*"):-_p0(X,Y) .
_p0_(X,Y,"t*"):-_p0_(X,Y,"t") .
node1hgd7v9f9x1247_st_(X,X1,"t*"):-node1hgd7v9f9x1247_(X,_),_p0_(X,X0,"t*"),_p1_(X0,X1,"t*") .

% Repair Rules

node1hgd7v9f9x1243_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1243_(X,"f"):-_studentShape_(X,"f") .



% sh:minCount 1 for node1hgd7v9f9x1243
s0_(X,"t*"):-node1hgd7v9f9x1243_(X,"t*") .
node1hgd7v9f9x1243_st_(X,@new(s0,X,node1hgd7v9f9x1243_st,1..1),"t"):-choose(s0,X,node1hgd7v9f9x1243_st,1) .
choose(s0,X,node1hgd7v9f9x1243_st,1);choose(s0,X,node1hgd7v9f9x1243_st,0):-s0_(X,"t*") .
choose(node1hgd7v9f9x1243_st,X,_enrolledIn,1);choose(node1hgd7v9f9x1243_st,X,_enrolledIn,0):-node1hgd7v9f9x1243_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hgd7v9f9x1243_st,X,_enrolledIn,1),"t"):-choose(node1hgd7v9f9x1243_st,X,_enrolledIn,1),node1hgd7v9f9x1243_st_(X,Y,"t") .
choose(node1hgd7v9f9x1243_st,X0,_p1,1);choose(node1hgd7v9f9x1243_st,X0,_p1,0):-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1243_st_(X,Y,"t") .
_p1_(X0,@new(node1hgd7v9f9x1243_st,X0,_p1,1),"t"):-choose(node1hgd7v9f9x1243_st,X0,_p1,1),_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1243_st_(X,Y,"t") .
0 {_hasId_(X1,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),_p1_(X0,X1,"t**"),node1hgd7v9f9x1243_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1243_st_(X,Y,"f"):node1hgd7v9f9x1243_st_(X,Y,"t*");s1_(Y,"f"):node1hgd7v9f9x1243_st_(X,Y,"t*"),not node1hgd7v9f9x1243_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hgd7v9f9x1243_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_p1_(X0,X1,"f");_hasId_(X1,X2,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_p1_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hgd7v9f9x1243_st_(X,X2,"f") .
1 {s1_(Y,"t*"):node1hgd7v9f9x1243_st_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1hgd7v9f9x1243
s2_(X,"t*"):-node1hgd7v9f9x1243_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hgd7v9f9x1243_st_(X,@new(s3,X,node1hgd7v9f9x1243_st,1..1),"t"):-choose(s3,X,node1hgd7v9f9x1243_st,1) .
choose(s3,X,node1hgd7v9f9x1243_st,1);choose(s3,X,node1hgd7v9f9x1243_st,0):-s3_(X,"t*") .
(C-0) {node1hgd7v9f9x1243_st_(X,Y,"f"):node1hgd7v9f9x1243_st_(X,Y,"t*");s4_(Y,"f"):node1hgd7v9f9x1243_st_(X,Y,"t*"),not node1hgd7v9f9x1243_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:node1hgd7v9f9x1243_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_p1_(X0,X1,"f");_hasId_(X1,X2,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_p1_(X0,X1,"t*"),_hasId_(X1,X2,"t*"),node1hgd7v9f9x1243_st_(X,X2,"f") .
1 {s4_(Y,"t*"):node1hgd7v9f9x1243_st_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1hgd7v9f9x1243_(X,"f") .
node1hgd7v9f9x1247_(X,"t*"):-_cutShape_(X,"t*") .
node1hgd7v9f9x1247_(X,"f"):-_cutShape_(X,"f") .


% sh:maxCount 0 for node1hgd7v9f9x1247
s6_(X,"t*"):-node1hgd7v9f9x1247_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
node1hgd7v9f9x1247_st_(X,@new(s7,X,node1hgd7v9f9x1247_st,1..1),"t"):-choose(s7,X,node1hgd7v9f9x1247_st,1) .
choose(s7,X,node1hgd7v9f9x1247_st,1);choose(s7,X,node1hgd7v9f9x1247_st,0):-s7_(X,"t*") .
choose(node1hgd7v9f9x1247_st,X,_p0,1);choose(node1hgd7v9f9x1247_st,X,_p0,0):-node1hgd7v9f9x1247_st_(X,Y,"t") .
_p0_(X,@new(node1hgd7v9f9x1247_st,X,_p0,1),"t"):-choose(node1hgd7v9f9x1247_st,X,_p0,1),node1hgd7v9f9x1247_st_(X,Y,"t") .
0 {_p1_(X0,Y,"t")} 1:-_p0_(X,X0,"t**"),node1hgd7v9f9x1247_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1247_st_(X,Y,"f"):node1hgd7v9f9x1247_st_(X,Y,"t*");s8_(Y,"f"):node1hgd7v9f9x1247_st_(X,Y,"t*"),not node1hgd7v9f9x1247_st_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:node1hgd7v9f9x1247_st_(X,Y,"t*")}=C,C>0 .
_p0_(X,X0,"f");_p1_(X0,X1,"f"):-s7_(X,"f"),_p0_(X,X0,"t*"),_p1_(X0,X1,"t*"),node1hgd7v9f9x1247_st_(X,X1,"f") .
1 {s8_(Y,"t*"):node1hgd7v9f9x1247_st_(X,Y,"t**")} 1:-s7_(X,"t*") .


% sh:minCount 0 for node1hgd7v9f9x1247
s9_(X,"t*"):-node1hgd7v9f9x1247_(X,"t*") .
choose(s9,X,node1hgd7v9f9x1247_st,0):-s9_(X,"t*") .
(C-0) {node1hgd7v9f9x1247_st_(X,Y,"f"):node1hgd7v9f9x1247_st_(X,Y,"t*");s10_(Y,"f"):node1hgd7v9f9x1247_st_(X,Y,"t*"),not node1hgd7v9f9x1247_st_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:node1hgd7v9f9x1247_st_(X,Y,"t*")}=C,C>0 .
_p0_(X,X0,"f");_p1_(X0,X1,"f"):-s9_(X,"f"),_p0_(X,X0,"t*"),_p1_(X0,X1,"t*"),node1hgd7v9f9x1247_st_(X,X1,"f") .
0 {s10_(Y,"t*"):node1hgd7v9f9x1247_st_(X,Y,"t**")} 0:-s9_(X,"t*") .


% universal for node1hgd7v9f9x1247
s11_(X,"t*"):-node1hgd7v9f9x1247_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
node1hgd7v9f9x1247_st_(X,@new(s12,X,node1hgd7v9f9x1247_st,1..1),"t"):-choose(s12,X,node1hgd7v9f9x1247_st,1) .
choose(s12,X,node1hgd7v9f9x1247_st,1);choose(s12,X,node1hgd7v9f9x1247_st,0):-s12_(X,"t*") .
(C-0) {node1hgd7v9f9x1247_st_(X,Y,"f"):node1hgd7v9f9x1247_st_(X,Y,"t*");s13_(Y,"f"):node1hgd7v9f9x1247_st_(X,Y,"t*"),not node1hgd7v9f9x1247_st_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:node1hgd7v9f9x1247_st_(X,Y,"t*")}=C,C>0 .
_p0_(X,X0,"f");_p1_(X0,X1,"f"):-s12_(X,"f"),_p0_(X,X0,"t*"),_p1_(X0,X1,"t*"),node1hgd7v9f9x1247_st_(X,X1,"f") .
1 {s13_(Y,"t*"):node1hgd7v9f9x1247_st_(X,Y,"t**")} 1:-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .


s6_(X,"f");s9_(X,"f");s11_(X,"f"):-node1hgd7v9f9x1247_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_p1_(X,Y,"t**"):-_p1_(X,Y,"t*"),not _p1_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hgd7v9f9x1243_st_(X,X2,"t**"):-node1hgd7v9f9x1243_st_(X,X2,"t*"),not node1hgd7v9f9x1243_st_(X,X2,"f"),_enrolledIn_(X,X0,"t**"),_p1_(X0,X1,"t**"),_hasId_(X1,X2,"t**") .
_p0_(X,Y,"t**"):-_p0_(X,Y,"t*"),not _p0_(X,Y,"f") .
node1hgd7v9f9x1247_st_(X,X1,"t**"):-node1hgd7v9f9x1247_st_(X,X1,"t*"),not node1hgd7v9f9x1247_st_(X,X1,"f"),_p0_(X,X0,"t**"),_p1_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_p1_(X,Y,"t"),_p1_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hgd7v9f9x1243_st_(X,Y,"t"),node1hgd7v9f9x1243_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-_p0_(X,Y,"t"),_p0_(X,Y,"f") .
:-node1hgd7v9f9x1247_st_(X,Y,"t"),node1hgd7v9f9x1247_st_(X,Y,"f") .
:-s8_(X,"f") .
:-s10_(X,"f") .
:-s14_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
add(_p1(X,Y)):-_p1_(X,Y,"t**"),not _p1(X,Y) .
del(_p1(X,Y)):-_p1_(X,Y,"f"),_p1(X,Y) .
add(_hasId(X,Y)):-_hasId_(X,Y,"t**"),not _hasId(X,Y) .
del(_hasId(X,Y)):-_hasId_(X,Y,"f"),_hasId(X,Y) .
add(_p0(X,Y)):-_p0_(X,Y,"t**"),not _p0(X,Y) .
del(_p0(X,Y)):-_p0_(X,Y,"f"),_p0(X,Y) .
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
