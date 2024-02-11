
% Graph Data

_enrolledIn("_ben","_bn1") .
_hasId("_bn1","Math 1") .
xsd_string("Math 1") .
_hasId("_bn1","Math 2") .
xsd_string("Math 2") .

% Shape Targets

targetNode("_ben",_studentShape) .
targetNode("_ben",_cutShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_studentShape_("_ben","t*"):-actualTarget("_ben",_studentShape) .
_cutShape_("_ben","t*"):-actualTarget("_ben",_cutShape) .

% Annotation Rules

_enrolledIn_(X,Y,"t*"):-_enrolledIn(X,Y) .
_enrolledIn_(X,Y,"t*"):-_enrolledIn_(X,Y,"t") .
_hasId_(X,Y,"t*"):-_hasId(X,Y) .
_hasId_(X,Y,"t*"):-_hasId_(X,Y,"t") .
node1hmcis5g7x85_st_(X,X1,"t*"):-node1hmcis5g7x85_(X,_),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*") .
node1hmcis5g7x88_st_(X,Y,"t*"):-node1hmcis5g7x88_(X,_),_enrolledIn_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-_studentShape_(X,"t*") .
node1hmcis5g7x85_(X,"t*"):-s0_(X,"t*") .
node1hmcis5g7x85_(X,"f"):-s0_(X,"f") .


% sh:minCount 1 for node1hmcis5g7x85
s1_(X,"t*"):-node1hmcis5g7x85_(X,"t*") .
node1hmcis5g7x85_st_(X,@new(s1,X,node1hmcis5g7x85_st,1..1),"t"):-choose(s1,X,node1hmcis5g7x85_st,1) .
choose(s1,X,node1hmcis5g7x85_st,1);choose(s1,X,node1hmcis5g7x85_st,0):-s1_(X,"t*") .
choose(node1hmcis5g7x85_st,X,_enrolledIn,1);choose(node1hmcis5g7x85_st,X,_enrolledIn,0):-node1hmcis5g7x85_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hmcis5g7x85_st,X,_enrolledIn,1),"t"):-choose(node1hmcis5g7x85_st,X,_enrolledIn,1),node1hmcis5g7x85_st_(X,Y,"t") .
0 {_hasId_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hmcis5g7x85_st_(X,Y,"t") .
(C-0) {node1hmcis5g7x85_st_(X,Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*");s2_(Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*"),not node1hmcis5g7x85_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:node1hmcis5g7x85_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s1_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x85_st_(X,X1,"f") .
1 {s2_(Y,"t*"):node1hmcis5g7x85_st_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1hmcis5g7x85
s3_(X,"t*"):-node1hmcis5g7x85_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
node1hmcis5g7x85_st_(X,@new(s4,X,node1hmcis5g7x85_st,1..1),"t"):-choose(s4,X,node1hmcis5g7x85_st,1) .
choose(s4,X,node1hmcis5g7x85_st,1);choose(s4,X,node1hmcis5g7x85_st,0):-s4_(X,"t*") .
(C-0) {node1hmcis5g7x85_st_(X,Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*");s5_(Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*"),not node1hmcis5g7x85_st_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:node1hmcis5g7x85_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s4_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x85_st_(X,X1,"f") .
1 {s5_(Y,"t*"):node1hmcis5g7x85_st_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hmcis5g7x85_(X,"f") .
s7_(X,"t*"):-_studentShape_(X,"t*") .
node1hmcis5g7x85_(X,"t*"):-s7_(X,"t*") .
node1hmcis5g7x85_(X,"f"):-s7_(X,"f") .


% sh:maxCount 1 for node1hmcis5g7x85
s8_(X,"t*"):-node1hmcis5g7x85_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
node1hmcis5g7x85_st_(X,@new(s9,X,node1hmcis5g7x85_st,1..1),"t"):-choose(s9,X,node1hmcis5g7x85_st,1) .
node1hmcis5g7x85_st_(X,@new(s9,X,node1hmcis5g7x85_st,1..2),"t"):-choose(s9,X,node1hmcis5g7x85_st,2) .
choose(s9,X,node1hmcis5g7x85_st,2);choose(s9,X,node1hmcis5g7x85_st,1);choose(s9,X,node1hmcis5g7x85_st,0):-s9_(X,"t*") .
0 {_hasId_(X0,Y,"t")} 2:-_enrolledIn_(X,X0,"t**"),node1hmcis5g7x85_st_(X,Y,"t") .
(C-1) {node1hmcis5g7x85_st_(X,Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*");s10_(Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*"),not node1hmcis5g7x85_st_(X,Y,"f")} (C-1):-s9_(X,"f"),#count {Y:node1hmcis5g7x85_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s9_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x85_st_(X,X1,"f") .
2 {s10_(Y,"t*"):node1hmcis5g7x85_st_(X,Y,"t**")} 2:-s9_(X,"t*") .


% sh:minCount 0 for node1hmcis5g7x85
s11_(X,"t*"):-node1hmcis5g7x85_(X,"t*") .
choose(s11,X,node1hmcis5g7x85_st,0):-s11_(X,"t*") .
(C-0) {node1hmcis5g7x85_st_(X,Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*");s12_(Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*"),not node1hmcis5g7x85_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:node1hmcis5g7x85_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s11_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x85_st_(X,X1,"f") .
0 {s12_(Y,"t*"):node1hmcis5g7x85_st_(X,Y,"t**")} 0:-s11_(X,"t*") .


s13_(X,"t*"):-node1hmcis5g7x85_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
node1hmcis5g7x85_st_(X,@new(s14,X,node1hmcis5g7x85_st,1..1),"t"):-choose(s14,X,node1hmcis5g7x85_st,1) .
choose(s14,X,node1hmcis5g7x85_st,1);choose(s14,X,node1hmcis5g7x85_st,0):-s14_(X,"t*") .
(C-0) {node1hmcis5g7x85_st_(X,Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*");s15_(Y,"f"):node1hmcis5g7x85_st_(X,Y,"t*"),not node1hmcis5g7x85_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:node1hmcis5g7x85_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s14_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hmcis5g7x85_st_(X,X1,"f") .
1 {s15_(Y,"t*"):node1hmcis5g7x85_st_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s11_(X,"f");s13_(X,"f"):-node1hmcis5g7x85_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_studentShape_(X,"f") .
node1hmcis5g7x88_(X,"t*"):-_cutShape_(X,"t*") .
node1hmcis5g7x88_(X,"f"):-_cutShape_(X,"f") .

% sh:maxCount 0 for node1hmcis5g7x88
s17_(X,"t*"):-node1hmcis5g7x88_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
_enrolledIn_(X,@new(s18,X,_enrolledIn,1..1),"t"):-choose(s18,X,_enrolledIn,1) .
choose(s18,X,_enrolledIn,1);choose(s18,X,_enrolledIn,0):-s18_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s19_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s18_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s19_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s18_(X,"t*") .


% sh:minCount 0 for node1hmcis5g7x88
s20_(X,"t*"):-node1hmcis5g7x88_(X,"t*") .
choose(s20,X,_enrolledIn,0):-s20_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s21_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s20_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
0 {s21_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 0:-s20_(X,"t*") .


% universal for node1hmcis5g7x88
s22_(X,"t*"):-node1hmcis5g7x88_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
_enrolledIn_(X,@new(s23,X,_enrolledIn,1..1),"t"):-choose(s23,X,_enrolledIn,1) .
choose(s23,X,_enrolledIn,1);choose(s23,X,_enrolledIn,0):-s23_(X,"t*") .
(C-0) {_enrolledIn_(X,Y,"f"):_enrolledIn_(X,Y,"t*");s24_(Y,"f"):_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f")} (C-0):-s23_(X,"f"),#count {Y:_enrolledIn_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,Y,"f"):-s23_(X,"f"),_enrolledIn_(X,Y,"t*"),_enrolledIn_(X,Y,"f") .
1 {s24_(Y,"t*"):_enrolledIn_(X,Y,"t**")} 1:-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .


s17_(X,"f");s20_(X,"f");s22_(X,"f"):-node1hmcis5g7x88_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hmcis5g7x85_st_(X,X1,"t**"):-node1hmcis5g7x85_st_(X,X1,"t*"),not node1hmcis5g7x85_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasId_(X0,X1,"t**") .
node1hmcis5g7x88_st_(X,Y,"t**"):-_enrolledIn_(X,Y,"t**"),node1hmcis5g7x88_st_(X,Y,"t*"),not node1hmcis5g7x88_st_(X,Y,"f") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hmcis5g7x85_st_(X,Y,"t"),node1hmcis5g7x85_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s10_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s19_(X,"f") .
:-s21_(X,"f") .
:-s25_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
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
