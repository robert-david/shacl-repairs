
% Graph Data

_firstName("_ann","Ann") .
xsd_string("Ann") .

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

s0_(X,"t*"):-_personShape_(X,"t*") .
node1hgobfebhx131_(X,"t*"):-s0_(X,"t*") .
node1hgobfebhx131_(X,"f"):-s0_(X,"f") .

% sh:minCount 2 for node1hgobfebhx131
s1_(X,"t*"):-node1hgobfebhx131_(X,"t*") .
_firstName_(X,@new(s1,X,_firstName,1..1),"t"):-choose(s1,X,_firstName,1) .
_firstName_(X,@new(s1,X,_firstName,1..2),"t"):-choose(s1,X,_firstName,2) .
choose(s1,X,_firstName,2);choose(s1,X,_firstName,1);choose(s1,X,_firstName,0):-s1_(X,"t*") .
(C-1) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s2_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-1):-s1_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>1 .
_firstName_(X,Y,"f"):-s1_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
2 {s2_(Y,"t*"):_firstName_(X,Y,"t**")} 2:-s1_(X,"t*") .


% universal for node1hgobfebhx131
s3_(X,"t*"):-node1hgobfebhx131_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_firstName_(X,@new(s4,X,_firstName,1..1),"t"):-choose(s4,X,_firstName,1) .
choose(s4,X,_firstName,1);choose(s4,X,_firstName,0):-s4_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s5_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s4_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
1 {s5_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hgobfebhx131_(X,"f") .
s7_(X,"t*"):-_personShape_(X,"t*") .
node1hgobfebhx131_(X,"t*"):-s7_(X,"t*") .
node1hgobfebhx131_(X,"f"):-s7_(X,"f") .

_givenName_(X,Y,"t"):-node1hgobfebhx131_(X,"t*"),_firstName_(X,Y,"t*") .
_firstName_(X,Y,"t"):-node1hgobfebhx131_(X,"t*"),_givenName_(X,Y,"t*") .
1 {_firstName_(X,Y,"f");_givenName_(X,Y,"f")} 1:-node1hgobfebhx131_(X,"f"),_firstName_(X,Y,"t*"),_givenName_(X,Y,"t*") .

% sh:minCount 0 for node1hgobfebhx131
s8_(X,"t*"):-node1hgobfebhx131_(X,"t*") .
choose(s8,X,_firstName,0):-s8_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s9_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s8_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
0 {s9_(Y,"t*"):_firstName_(X,Y,"t**")} 0:-s8_(X,"t*") .


s10_(X,"t*"):-node1hgobfebhx131_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_firstName_(X,@new(s11,X,_firstName,1..1),"t"):-choose(s11,X,_firstName,1) .
choose(s11,X,_firstName,1);choose(s11,X,_firstName,0):-s11_(X,"t*") .
(C-0) {_firstName_(X,Y,"f"):_firstName_(X,Y,"t*");s12_(Y,"f"):_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_firstName_(X,Y,"t*")}=C,C>0 .
_firstName_(X,Y,"f"):-s11_(X,"f"),_firstName_(X,Y,"t*"),_firstName_(X,Y,"f") .
1 {s12_(Y,"t*"):_firstName_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-node1hgobfebhx131_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_firstName_(X,Y,"t**"):-_firstName_(X,Y,"t*"),not _firstName_(X,Y,"f") .
_givenName_(X,Y,"t**"):-_givenName_(X,Y,"t*"),not _givenName_(X,Y,"f") .

% Program Constraints

:-_firstName_(X,Y,"t"),_firstName_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-_givenName_(X,Y,"t"),_givenName_(X,Y,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(_firstName(X,Y)):-_firstName_(X,Y,"t**"),not _firstName(X,Y) .
del(_firstName(X,Y)):-_firstName_(X,Y,"f"),_firstName(X,Y) .
add(_givenName(X,Y)):-_givenName_(X,Y,"t**"),not _givenName(X,Y) .
del(_givenName(X,Y)):-_givenName_(X,Y,"f"),_givenName(X,Y) .
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
