
% Graph Data

_worksFor("_ann","_company1") .
_organization("_company1") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .
_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .
_person_(X,"t*"):-_person(X) .
_person_(X,"t*"):-_person_(X,"t") .

% Repair Rules

node1g838e3u1x38_(X,"t*"):-_personShape_(X,"t*") .

% sh:minCount 2 for node1g838e3u1x38
s0_(X,"t*"):-node1g838e3u1x38_(X,"t*") .
_worksFor_(X,@new(s0,X,_worksFor,1..1),"t"):-choose(s0,X,_worksFor,1) .
_worksFor_(X,@new(s0,X,_worksFor,1..2),"t"):-choose(s0,X,_worksFor,2) .
choose(s0,X,_worksFor,2);choose(s0,X,_worksFor,1);choose(s0,X,_worksFor,0):-s0_(X,"t*") .
(C-1) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-1):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>1 .
2 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 2:-s0_(X,"t*") .

s2_(X,"t*"):-s1_(X,"t*") .
_organization_(X,"t"):-s2_(X,"t*") .
_organization_(X,"f"):-s2_(X,"f") .
s3_(X,"t*"):-s1_(X,"t*") .
_person_(X,"t"):-s3_(X,"t*") .
_person_(X,"f"):-s3_(X,"f") .
s2_(X,"f");s3_(X,"f"):-s1_(X,"f") .

% universal for node1g838e3u1x38
s4_(X,"t*"):-node1g838e3u1x38_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
_worksFor_(X,@new(s5,X,_worksFor,1..1),"t"):-choose(s5,X,_worksFor,1) .
choose(s5,X,_worksFor,1);choose(s5,X,_worksFor,0):-s5_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s6_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .

s8_(X,"t*"):-s7_(X,"t*") .
_organization_(X,"t"):-s8_(X,"t*") .
_organization_(X,"f"):-s8_(X,"f") .
s9_(X,"t*"):-s7_(X,"t*") .
_person_(X,"t"):-s9_(X,"t*") .
_person_(X,"f"):-s9_(X,"f") .
s8_(X,"f");s9_(X,"f"):-s7_(X,"f") .

s0_(X,"f");s4_(X,"f"):-node1g838e3u1x38_(X,"f") .
node1g838e3u1x38_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .
_person_(X,"t**"):-_person_(X,"t*"),not _person_(X,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-_organization_(X,"t"),_organization_(X,"f") .
:-_person_(X,"t"),_person_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
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
