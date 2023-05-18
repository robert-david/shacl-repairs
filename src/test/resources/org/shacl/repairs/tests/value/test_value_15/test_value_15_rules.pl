
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants

const("ANN") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .
node1h0oc2cvkx681_st_(X,Y,"t*"):-node1h0oc2cvkx681_(X,_),_name_(X,Y,"t*") .
_person_(X,"t*"):-_person(X) .
_person_(X,"t*"):-_person_(X,"t") .

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
node1h0oc2cvkx681_(X,"t*"):-s0_(X,"t*") .
node1h0oc2cvkx681_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for node1h0oc2cvkx681
s1_(X,"t*"):-node1h0oc2cvkx681_(X,"t*") .
choose(s1,X,_name,0):-s1_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 1:-s1_(X,"t*") .
(C-0) {node1h0oc2cvkx681_st_(X,Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*");s2_(Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*"),not node1h0oc2cvkx681_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:node1h0oc2cvkx681_st_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s1_(X,"f"),_name_(X,Y,"t*"),node1h0oc2cvkx681_st_(X,Y,"f") .
0 {s2_(Y,"t*"):node1h0oc2cvkx681_st_(X,Y,"t**")} 1:-s1_(X,"t*") .

s3_(X,"f"):-s2_(X,"f") .
node1h0oc2cvkx687_(X,"f"):-s3_(X,"t*") .
node1h0oc2cvkx687_(X,"t*"):-s3_(X,"f") .
_person_(X,"t"):-node1h0oc2cvkx687_(X,"t*") .
_person_(X,"f"):-node1h0oc2cvkx687_(X,"f") .
s4_(X,"f"):-s2_(X,"f") .
node1h0oc2cvkx684_(X,"f"):-s4_(X,"t*") .
node1h0oc2cvkx684_(X,"t*"):-s4_(X,"f") .
s3_(X,"t*");s4_(X,"t*"):-s2_(X,"t*") .

% universal for node1h0oc2cvkx681
s5_(X,"t*"):-node1h0oc2cvkx681_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_name_(X,@new(s6,X,_name,1..1),"t"):-choose(s6,X,_name,1) .
choose(s6,X,_name,1);choose(s6,X,_name,0):-s6_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 1:-s6_(X,"t*") .
(C-0) {node1h0oc2cvkx681_st_(X,Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*");s7_(Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*"),not node1h0oc2cvkx681_st_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:node1h0oc2cvkx681_st_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s6_(X,"f"),_name_(X,Y,"t*"),node1h0oc2cvkx681_st_(X,Y,"f") .
1 {s7_(Y,"t*"):node1h0oc2cvkx681_st_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .

s9_(X,"f"):-s8_(X,"f") .
node1h0oc2cvkx687_(X,"f"):-s9_(X,"t*") .
node1h0oc2cvkx687_(X,"t*"):-s9_(X,"f") .
s10_(X,"f"):-s8_(X,"f") .
node1h0oc2cvkx684_(X,"f"):-s10_(X,"t*") .
node1h0oc2cvkx684_(X,"t*"):-s10_(X,"f") .
s9_(X,"t*");s10_(X,"t*"):-s8_(X,"t*") .

s1_(X,"f");s5_(X,"f"):-node1h0oc2cvkx681_(X,"f") .
s11_(X,"t*"):-_personShape_(X,"t*") .
node1h0oc2cvkx681_(X,"t*"):-s11_(X,"t*") .
node1h0oc2cvkx681_(X,"f"):-s11_(X,"f") .

% sh:minCount 2 for node1h0oc2cvkx681
s12_(X,"t*"):-node1h0oc2cvkx681_(X,"t*") .
_name_(X,@new(s12,X,_name,1..1),"t"):-choose(s12,X,_name,1) .
_name_(X,@new(s12,X,_name,1..2),"t"):-choose(s12,X,_name,2) .
choose(s12,X,_name,2);choose(s12,X,_name,1);choose(s12,X,_name,0):-s12_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 1:-s12_(X,"t*") .
(C-1) {node1h0oc2cvkx681_st_(X,Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*");s13_(Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*"),not node1h0oc2cvkx681_st_(X,Y,"f")} (C-1):-s12_(X,"f"),#count {Y:node1h0oc2cvkx681_st_(X,Y,"t*")}=C,C>1 .
_name_(X,Y,"f"):-s12_(X,"f"),_name_(X,Y,"t*"),node1h0oc2cvkx681_st_(X,Y,"f") .
2 {s13_(Y,"t*"):node1h0oc2cvkx681_st_(X,Y,"t**")} 2:-s12_(X,"t*") .


s14_(X,"t*"):-node1h0oc2cvkx681_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
_name_(X,@new(s15,X,_name,1..1),"t"):-choose(s15,X,_name,1) .
choose(s15,X,_name,1);choose(s15,X,_name,0):-s15_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 1:-s15_(X,"t*") .
(C-0) {node1h0oc2cvkx681_st_(X,Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*");s16_(Y,"f"):node1h0oc2cvkx681_st_(X,Y,"t*"),not node1h0oc2cvkx681_st_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:node1h0oc2cvkx681_st_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s15_(X,"f"),_name_(X,Y,"t*"),node1h0oc2cvkx681_st_(X,Y,"f") .
1 {s16_(Y,"t*"):node1h0oc2cvkx681_st_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .


s12_(X,"f");s14_(X,"f"):-node1h0oc2cvkx681_(X,"f") .
s0_(X,"f");s11_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .
node1h0oc2cvkx681_st_(X,Y,"t**"):-_name_(X,Y,"t**"),node1h0oc2cvkx681_st_(X,Y,"t*"),not node1h0oc2cvkx681_st_(X,Y,"f") .
_person_(X,"t**"):-_person_(X,"t*"),not _person_(X,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-_person_(X,"t"),_person_(X,"f") .
:-node1h0oc2cvkx684_(X,"t*"),X!="ANN" .
:-node1h0oc2cvkx684_(X,"f"),X="ANN" .
:-s13_(X,"f") .
:-s17_(X,"f") .

% Change Set Rules

add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
add(_person(X)):-_person_(X,"t**"),not _person(X) .
del(_person(X)):-_person_(X,"f"),_person(X) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
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
