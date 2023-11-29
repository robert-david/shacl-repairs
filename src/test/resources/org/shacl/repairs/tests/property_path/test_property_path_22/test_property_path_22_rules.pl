
% Graph Data

_enrolledIn("_ben","_bn1") .
_enrolledIn("_ben","_bn2") .
_enrolledIn("_ben","_bn3") .
_hasId("_bn1","Math 1") .
xsd_string("Math 1") .
_hasId("_bn2","Math 2") .
xsd_string("Math 2") .
_hasId("_bn3","Math 3") .
xsd_string("Math 3") .

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
node1hgd7v9f9x1408_st_(X,X1,"t*"):-node1hgd7v9f9x1408_(X,_),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*") .

% Repair Rules

node1hgd7v9f9x1408_(X,"t*"):-_studentShape_(X,"t*") .
node1hgd7v9f9x1408_(X,"f"):-_studentShape_(X,"f") .


% sh:minCount 0 for node1hgd7v9f9x1408
s0_(X,"t*"):-node1hgd7v9f9x1408_(X,"t*") .
choose(s0,X,node1hgd7v9f9x1408_st,0):-s0_(X,"t*") .
choose(node1hgd7v9f9x1408_st,X,_enrolledIn,1);choose(node1hgd7v9f9x1408_st,X,_enrolledIn,0):-node1hgd7v9f9x1408_st_(X,Y,"t") .
_enrolledIn_(X,@new(node1hgd7v9f9x1408_st,X,_enrolledIn,1),"t"):-choose(node1hgd7v9f9x1408_st,X,_enrolledIn,1),node1hgd7v9f9x1408_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1408_st_(X,Y,"f"):node1hgd7v9f9x1408_st_(X,Y,"t*");s1_(Y,"f"):node1hgd7v9f9x1408_st_(X,Y,"t*"),not node1hgd7v9f9x1408_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:node1hgd7v9f9x1408_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s0_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1408_st_(X,X1,"f") .
0 {s1_(Y,"t*"):node1hgd7v9f9x1408_st_(X,Y,"t**")} 0:-s0_(X,"t*") .


% sh:maxCount 1 for node1hgd7v9f9x1408
s2_(X,"t*"):-node1hgd7v9f9x1408_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
node1hgd7v9f9x1408_st_(X,@new(s3,X,node1hgd7v9f9x1408_st,1..1),"t"):-choose(s3,X,node1hgd7v9f9x1408_st,1) .
node1hgd7v9f9x1408_st_(X,@new(s3,X,node1hgd7v9f9x1408_st,1..2),"t"):-choose(s3,X,node1hgd7v9f9x1408_st,2) .
choose(s3,X,node1hgd7v9f9x1408_st,2);choose(s3,X,node1hgd7v9f9x1408_st,1);choose(s3,X,node1hgd7v9f9x1408_st,0):-s3_(X,"t*") .
0 {_hasId_(X0,Y,"t")} 2:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1408_st_(X,Y,"t") .
(C-1) {node1hgd7v9f9x1408_st_(X,Y,"f"):node1hgd7v9f9x1408_st_(X,Y,"t*");s4_(Y,"f"):node1hgd7v9f9x1408_st_(X,Y,"t*"),not node1hgd7v9f9x1408_st_(X,Y,"f")} (C-1):-s3_(X,"f"),#count {Y:node1hgd7v9f9x1408_st_(X,Y,"t*")}=C,C>1 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s3_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1408_st_(X,X1,"f") .
2 {s4_(Y,"t*"):node1hgd7v9f9x1408_st_(X,Y,"t**")} 2:-s3_(X,"t*") .


% universal for node1hgd7v9f9x1408
s5_(X,"t*"):-node1hgd7v9f9x1408_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
node1hgd7v9f9x1408_st_(X,@new(s6,X,node1hgd7v9f9x1408_st,1..1),"t"):-choose(s6,X,node1hgd7v9f9x1408_st,1) .
choose(s6,X,node1hgd7v9f9x1408_st,1);choose(s6,X,node1hgd7v9f9x1408_st,0):-s6_(X,"t*") .
0 {_hasId_(X0,Y,"t")} 1:-_enrolledIn_(X,X0,"t**"),node1hgd7v9f9x1408_st_(X,Y,"t") .
(C-0) {node1hgd7v9f9x1408_st_(X,Y,"f"):node1hgd7v9f9x1408_st_(X,Y,"t*");s7_(Y,"f"):node1hgd7v9f9x1408_st_(X,Y,"t*"),not node1hgd7v9f9x1408_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1hgd7v9f9x1408_st_(X,Y,"t*")}=C,C>0 .
_enrolledIn_(X,X0,"f");_hasId_(X0,X1,"f"):-s6_(X,"f"),_enrolledIn_(X,X0,"t*"),_hasId_(X0,X1,"t*"),node1hgd7v9f9x1408_st_(X,X1,"f") .
1 {s7_(Y,"t*"):node1hgd7v9f9x1408_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s0_(X,"f");s2_(X,"f");s5_(X,"f"):-node1hgd7v9f9x1408_(X,"f") .

% Interpretation Rules

_enrolledIn_(X,Y,"t**"):-_enrolledIn_(X,Y,"t*"),not _enrolledIn_(X,Y,"f") .
_hasId_(X,Y,"t**"):-_hasId_(X,Y,"t*"),not _hasId_(X,Y,"f") .
node1hgd7v9f9x1408_st_(X,X1,"t**"):-node1hgd7v9f9x1408_st_(X,X1,"t*"),not node1hgd7v9f9x1408_st_(X,X1,"f"),_enrolledIn_(X,X0,"t**"),_hasId_(X0,X1,"t**") .

% Program Constraints

:-_enrolledIn_(X,Y,"t"),_enrolledIn_(X,Y,"f") .
:-_hasId_(X,Y,"t"),_hasId_(X,Y,"f") .
:-node1hgd7v9f9x1408_st_(X,Y,"t"),node1hgd7v9f9x1408_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .

% Change Set Rules

add(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"t**"),not _enrolledIn(X,Y) .
del(_enrolledIn(X,Y)):-_enrolledIn_(X,Y,"f"),_enrolledIn(X,Y) .
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
