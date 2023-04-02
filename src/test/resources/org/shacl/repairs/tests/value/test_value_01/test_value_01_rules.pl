
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants

const("Ann") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .

% Repair Rules

node1g832fjsax2_(X,"t*"):-_personShape_(X,"t*") .
s0_(X,"t*"):-node1g832fjsax2_(X,"t*") .
_name_(X,@new(s0,X,_name,1..1),"t"):-choose(s0,X,_name,1) .
choose(s0,X,_name,1);choose(s0,X,_name,0):-s0_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name(X,Y);s1_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
0 {_name_(X,Y,"t"):const(Y)} 1:-s0_(X,"t*") .
1 {s1_(Y,"t*"):_name_(X,Y,"t**")} 1:-s0_(X,"t*") .



% sh:minCount 3 for node1g832fjsax2
s2_(X,"t*"):-node1g832fjsax2_(X,"t*") .
_name_(X,@new(s2,X,_name,1..1),"t"):-choose(s2,X,_name,1) .
_name_(X,@new(s2,X,_name,1..2),"t"):-choose(s2,X,_name,2) .
_name_(X,@new(s2,X,_name,1..3),"t"):-choose(s2,X,_name,3) .
choose(s2,X,_name,3);choose(s2,X,_name,2);choose(s2,X,_name,1);choose(s2,X,_name,0):-s2_(X,"t*") .
(C-2) {_name_(X,Y,"f"):_name(X,Y);s3_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-2):-s2_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>2 .
0 {_name_(X,Y,"t"):const(Y)} 1:-s2_(X,"t*") .
3 {s3_(Y,"t*"):_name_(X,Y,"t**")} 3:-s2_(X,"t*") .


% universal for node1g832fjsax2
s4_(X,"t*"):-node1g832fjsax2_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
_name_(X,@new(s5,X,_name,1..1),"t"):-choose(s5,X,_name,1) .
choose(s5,X,_name,1);choose(s5,X,_name,0):-s5_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name(X,Y);s6_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
0 {_name_(X,Y,"t"):const(Y)} 1:-s5_(X,"t*") .
1 {s6_(Y,"t*"):_name_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s0_(X,"f");s2_(X,"f");s4_(X,"f"):-node1g832fjsax2_(X,"f") .
node1g832fjsax2_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .

% Program Constraints

:-s1_(X,"t*"),X!="Ann" .
:-s1_(X,"f"),X="Ann" .
:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s3_(X,"f") .
:-s7_(X,"f") .

% Change Set Rules

#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
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
