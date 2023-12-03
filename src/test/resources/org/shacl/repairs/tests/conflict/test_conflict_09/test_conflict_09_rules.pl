
% Graph Data

_worksFor("_ann","_company1") .

% Shape Targets

targetNode("_company1",_organizationShape) .
targetNode("_ann",_unemployedShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_organizationShape_("_company1","t*"):-actualTarget("_company1",_organizationShape) .
_unemployedShape_("_ann","t*"):-actualTarget("_ann",_unemployedShape) .

% Annotation Rules

_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .
_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .

% Repair Rules

_organization_(X,"t"):-_organizationShape_(X,"t*") .
_organization_(X,"f"):-_organizationShape_(X,"f") .
node1hgobfebhx1851_(X,"t*"):-_unemployedShape_(X,"t*") .
node1hgobfebhx1851_(X,"f"):-_unemployedShape_(X,"f") .

% sh:minCount 0 for node1hgobfebhx1851
s0_(X,"t*"):-node1hgobfebhx1851_(X,"t*") .
choose(s0,X,_worksFor,0):-s0_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s0_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
0 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 0:-s0_(X,"t*") .

node1hgobfebhx1852_(X,"f"):-s1_(X,"t*") .
node1hgobfebhx1852_(X,"t*"):-s1_(X,"f") .
_organization_(X,"t"):-node1hgobfebhx1852_(X,"t*") .
_organization_(X,"f"):-node1hgobfebhx1852_(X,"f") .

% universal for node1hgobfebhx1851
s2_(X,"t*"):-node1hgobfebhx1851_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_worksFor_(X,@new(s3,X,_worksFor,1..1),"t"):-choose(s3,X,_worksFor,1) .
choose(s3,X,_worksFor,1);choose(s3,X,_worksFor,0):-s3_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s4_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s3_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s4_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

node1hgobfebhx1852_(X,"f"):-s5_(X,"t*") .
node1hgobfebhx1852_(X,"t*"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-node1hgobfebhx1851_(X,"f") .

% Interpretation Rules

_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .
_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .

% Program Constraints

:-_organization_(X,"t"),_organization_(X,"f") .
:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .

% Change Set Rules

add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
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
