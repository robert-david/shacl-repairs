
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants

const("Ann") .
const("ann") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .

% Repair Rules

node1g832fjsax72_(X,"t*"):-_personShape_(X,"t*") .

% sh:minCount 1 for node1g832fjsax72
s0_(X,"t*"):-node1g832fjsax72_(X,"t*") .
_name_(X,@new(s0,X,_name,1..1),"t"):-choose(s0,X,_name,1) .
choose(s0,X,_name,1);choose(s0,X,_name,0):-s0_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name(X,Y);s1_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
0 {_name_(X,Y,"t"):const(Y)} 2:-s0_(X,"t*") .
1 {s1_(Y,"t*"):_name_(X,Y,"t**")} 2:-s0_(X,"t*") .

s2_(X,"f"):-s1_(X,"f") .
s3_(X,"f"):-s1_(X,"f") .
s2_(X,"t*");s3_(X,"t*"):-s1_(X,"t*") .

% universal for node1g832fjsax72
s4_(X,"t*"):-node1g832fjsax72_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
_name_(X,@new(s5,X,_name,1..1),"t"):-choose(s5,X,_name,1) .
choose(s5,X,_name,1);choose(s5,X,_name,0):-s5_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name(X,Y);s6_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
0 {_name_(X,Y,"t"):const(Y)} 2:-s5_(X,"t*") .
1 {s6_(Y,"t*"):_name_(X,Y,"t**")} 2:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .

s8_(X,"f"):-s7_(X,"f") .
s9_(X,"f"):-s7_(X,"f") .
s8_(X,"t*");s9_(X,"t*"):-s7_(X,"t*") .

s0_(X,"f");s4_(X,"f"):-node1g832fjsax72_(X,"f") .
node1g832fjsax72_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s2_(X,"t*"),X!="Ann" .
:-s2_(X,"f"),X="Ann" .
:-s3_(X,"t*"),X!="ann" .
:-s3_(X,"f"),X="ann" .
:-s8_(X,"t*"),X!="Ann" .
:-s8_(X,"f"),X="Ann" .
:-s9_(X,"t*"),X!="ann" .
:-s9_(X,"f"),X="ann" .

% Change Set Rules

add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
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
