
% Graph Data

_firstName("_ann","Ann") .
xsd_string("Ann") .
_givenName("_ann","Ann") .
_firstName("_ann","ANN") .
xsd_string("ANN") .
_givenName("_ann","ANN") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_firstName_(X,Y,"t*"):-_firstName(X,Y) .
_firstName_(X,Y,"t*"):-_firstName_(X,Y,"t") .
_givenName_(X,Y,"t*"):-_givenName(X,Y) .
_givenName_(X,Y,"t*"):-_givenName_(X,Y,"t") .

% Repair Rules

node1g832o9j6x99_(X,"f"):-_personShape_(X,"t*") .
node1g832o9j6x99_(X,"t*"):-_personShape_(X,"f") .
node1g832o9j6x100_(X,"t*"):-node1g832o9j6x99_(X,"t*") .
node1g832o9j6x100_(X,"f"):-node1g832o9j6x99_(X,"f") .

_givenName_(X,Y,"t"):-node1g832o9j6x100_(X,"t*"),_firstName_(X,Y,"t*") .
_firstName_(X,Y,"t"):-node1g832o9j6x100_(X,"t*"),_givenName_(X,Y,"t*") .
1 {_firstName_(X,Y,"f");_givenName_(X,Y,"f")} 1:-node1g832o9j6x100_(X,"f"),_firstName_(X,Y,"t*"),_givenName_(X,Y,"t*") .

% sh:minCount 2 for node1g832o9j6x100
s0_(X,"t*"):-node1g832o9j6x100_(X,"t*") .
_firstName_(X,@new(s0,X,_firstName,1..1),"t"):-choose(s0,X,_firstName,1) .
_firstName_(X,@new(s0,X,_firstName,1..2),"t"):-choose(s0,X,_firstName,2) .
choose(s0,X,_firstName,2);choose(s0,X,_firstName,1);choose(s0,X,_firstName,0):-s0_(X,"t*") .
(C-1) {_firstName_(X,Y,"f"):_firstName(X,Y);s1_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-1):-s0_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>1 .
2 {s1_(Y,"t*"):_firstName_(X,Y,"t**")} 2:-s0_(X,"t*") .


% universal for node1g832o9j6x100
s2_(X,"t*"):-node1g832o9j6x100_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_firstName_(X,@new(s3,X,_firstName,1..1),"t"):-choose(s3,X,_firstName,1) .
choose(s3,X,_firstName,1);choose(s3,X,_firstName,0):-s3_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName(X,Y);s4_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1g832o9j6x100_(X,"f") .

% Interpretation Rules

_firstName_(X,Y,"t**"):-_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f") .
_givenName_(X,Y,"t**"):-_givenName_(X,Y,"t*"),not _givenName_(X,Y,"f") .

% Program Constraints

:-_firstName_(X,Y,"t"),_firstName_(X,Y,"f") .
:-_givenName_(X,Y,"t"),_givenName_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .

% Change Set Rules

add(_firstName(X,Y)):-_firstName_(X,Y,"t**"),not _firstName(X,Y) .
del(_firstName(X,Y)):-_firstName_(X,Y,"f"),_firstName(X,Y) .
add(_givenName(X,Y)):-_givenName_(X,Y,"t**"),not _givenName(X,Y) .
del(_givenName(X,Y)):-_givenName_(X,Y,"f"),_givenName(X,Y) .
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
