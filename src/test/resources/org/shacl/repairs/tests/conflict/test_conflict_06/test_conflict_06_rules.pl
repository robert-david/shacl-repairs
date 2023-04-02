
% Graph Data


% Shape Targets

targetNode("_ann",_personShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .

% Repair Rules

node1g832rje0x46_(X,"t*"):-_personShape_(X,"t*") .

% sh:minCount 1 for node1g832rje0x46
s0_(X,"t*"):-node1g832rje0x46_(X,"t*") .
_worksFor_(X,@new(s0,X,_worksFor,1..1),"t"):-choose(s0,X,_worksFor,1) .
choose(s0,X,_worksFor,1);choose(s0,X,_worksFor,0):-s0_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s0_(X,"t*") .


% universal for node1g832rje0x46
s2_(X,"t*"):-node1g832rje0x46_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_worksFor_(X,@new(s3,X,_worksFor,1..1),"t"):-choose(s3,X,_worksFor,1) .
choose(s3,X,_worksFor,1);choose(s3,X,_worksFor,0):-s3_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s4_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-node1g832rje0x46_(X,"f") .
s6_(X,"t*"):-_personShape_(X,"t*") .
node1g832rje0x47_(X,"f"):-s6_(X,"t*") .
node1g832rje0x47_(X,"t*"):-s6_(X,"f") .
node1g832rje0x48_(X,"t*"):-node1g832rje0x47_(X,"t*") .
node1g832rje0x48_(X,"f"):-node1g832rje0x47_(X,"f") .

% sh:minCount 1 for node1g832rje0x48
s7_(X,"t*"):-node1g832rje0x48_(X,"t*") .
_worksFor_(X,@new(s7,X,_worksFor,1..1),"t"):-choose(s7,X,_worksFor,1) .
choose(s7,X,_worksFor,1);choose(s7,X,_worksFor,0):-s7_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s8_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s7_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s8_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s7_(X,"t*") .


% universal for node1g832rje0x48
s9_(X,"t*"):-node1g832rje0x48_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
_worksFor_(X,@new(s10,X,_worksFor,1..1),"t"):-choose(s10,X,_worksFor,1) .
choose(s10,X,_worksFor,1);choose(s10,X,_worksFor,0):-s10_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor(X,Y);s11_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s11_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-node1g832rje0x48_(X,"f") .
node1g832rje0x46_(X,"f");s6_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
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
