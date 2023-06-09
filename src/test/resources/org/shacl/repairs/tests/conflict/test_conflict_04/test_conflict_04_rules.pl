
% Graph Data


% Shape Targets

targetNode("_ann",_notPersonShape) .
targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_notPersonShape_("_ann","t*"):-actualTarget("_ann",_notPersonShape) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .
_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .

% Repair Rules

node1g832rje0x33_(X,"t*"):-_notPersonShape_(X,"t*") .

% sh:minCount 1 for node1g832rje0x33
s0_(X,"t*"):-node1g832rje0x33_(X,"t*") .
_worksFor_(X,@new(s0,X,_worksFor,1..1),"t"):-choose(s0,X,_worksFor,1) .
choose(s0,X,_worksFor,1);choose(s0,X,_worksFor,0):-s0_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s0_(X,"t*") .

node1g832rje0x34_(X,"f"):-s1_(X,"t*") .
node1g832rje0x34_(X,"t*"):-s1_(X,"f") .
_organization_(X,"t"):-node1g832rje0x34_(X,"t*") .
_organization_(X,"f"):-node1g832rje0x34_(X,"f") .

% universal for node1g832rje0x33
s2_(X,"t*"):-node1g832rje0x33_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_worksFor_(X,@new(s3,X,_worksFor,1..1),"t"):-choose(s3,X,_worksFor,1) .
choose(s3,X,_worksFor,1);choose(s3,X,_worksFor,0):-s3_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s4_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

node1g832rje0x34_(X,"f"):-s5_(X,"t*") .
node1g832rje0x34_(X,"t*"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-node1g832rje0x33_(X,"f") .
node1g832rje0x33_(X,"f"):-_notPersonShape_(X,"f") .
node1g832rje0x32_(X,"t*"):-_personShape_(X,"t*") .

% sh:minCount 1 for node1g832rje0x32
s6_(X,"t*"):-node1g832rje0x32_(X,"t*") .
_worksFor_(X,@new(s6,X,_worksFor,1..1),"t"):-choose(s6,X,_worksFor,1) .
choose(s6,X,_worksFor,1);choose(s6,X,_worksFor,0):-s6_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s7_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s6_(X,"t*") .

_organization_(X,"t"):-s7_(X,"t*") .
_organization_(X,"f"):-s7_(X,"f") .

% universal for node1g832rje0x32
s8_(X,"t*"):-node1g832rje0x32_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
_worksFor_(X,@new(s9,X,_worksFor,1..1),"t"):-choose(s9,X,_worksFor,1) .
choose(s9,X,_worksFor,1);choose(s9,X,_worksFor,0):-s9_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s10_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s10_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s9_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .

_organization_(X,"t"):-s11_(X,"t*") .
_organization_(X,"f"):-s11_(X,"f") .

s6_(X,"f");s8_(X,"f"):-node1g832rje0x32_(X,"f") .
node1g832rje0x32_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-_organization_(X,"t"),_organization_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
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
