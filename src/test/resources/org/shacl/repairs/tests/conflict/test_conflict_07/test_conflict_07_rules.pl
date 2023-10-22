
% Graph Data


% Shape Targets

targetNode("_ann",_personShapeB) .
targetNode("_ann",_personShapeA) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShapeB_("_ann","t*"):-actualTarget("_ann",_personShapeB) .
_personShapeA_("_ann","t*"):-actualTarget("_ann",_personShapeA) .

% Annotation Rules

_worksFor_(X,Y,"t*"):-_worksFor(X,Y) .
_worksFor_(X,Y,"t*"):-_worksFor_(X,Y,"t") .
_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .

% Repair Rules

node1hdcdgs0ox679_(X,"f"):-_personShapeB_(X,"t*") .
node1hdcdgs0ox679_(X,"t*"):-_personShapeB_(X,"f") .
node1hdcdgs0ox680_(X,"t*"):-node1hdcdgs0ox679_(X,"t*") .
node1hdcdgs0ox680_(X,"f"):-node1hdcdgs0ox679_(X,"f") .

% sh:minCount 2 for node1hdcdgs0ox680
s0_(X,"t*"):-node1hdcdgs0ox680_(X,"t*") .
_worksFor_(X,@new(s0,X,_worksFor,1..1),"t"):-choose(s0,X,_worksFor,1) .
_worksFor_(X,@new(s0,X,_worksFor,1..2),"t"):-choose(s0,X,_worksFor,2) .
choose(s0,X,_worksFor,2);choose(s0,X,_worksFor,1);choose(s0,X,_worksFor,0):-s0_(X,"t*") .
(C-1) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s1_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-1):-s0_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>1 .
_worksFor_(X,Y,"f"):-s0_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
2 {s1_(Y,"t*"):_worksFor_(X,Y,"t**")} 2:-s0_(X,"t*") .

_organization_(X,"t"):-s1_(X,"t*") .
_organization_(X,"f"):-s1_(X,"f") .

% universal for node1hdcdgs0ox680
s2_(X,"t*"):-node1hdcdgs0ox680_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_worksFor_(X,@new(s3,X,_worksFor,1..1),"t"):-choose(s3,X,_worksFor,1) .
choose(s3,X,_worksFor,1);choose(s3,X,_worksFor,0):-s3_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s4_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s3_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s4_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

_organization_(X,"t"):-s5_(X,"t*") .
_organization_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-node1hdcdgs0ox680_(X,"f") .
s6_(X,"t*"):-_personShapeA_(X,"t*") .
node1hdcdgs0ox678_(X,"t*"):-s6_(X,"t*") .
node1hdcdgs0ox678_(X,"f"):-s6_(X,"f") .

% sh:minCount 2 for node1hdcdgs0ox678
s7_(X,"t*"):-node1hdcdgs0ox678_(X,"t*") .
_worksFor_(X,@new(s7,X,_worksFor,1..1),"t"):-choose(s7,X,_worksFor,1) .
_worksFor_(X,@new(s7,X,_worksFor,1..2),"t"):-choose(s7,X,_worksFor,2) .
choose(s7,X,_worksFor,2);choose(s7,X,_worksFor,1);choose(s7,X,_worksFor,0):-s7_(X,"t*") .
(C-1) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s8_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-1):-s7_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>1 .
_worksFor_(X,Y,"f"):-s7_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
2 {s8_(Y,"t*"):_worksFor_(X,Y,"t**")} 2:-s7_(X,"t*") .


% universal for node1hdcdgs0ox678
s9_(X,"t*"):-node1hdcdgs0ox678_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
_worksFor_(X,@new(s10,X,_worksFor,1..1),"t"):-choose(s10,X,_worksFor,1) .
choose(s10,X,_worksFor,1);choose(s10,X,_worksFor,0):-s10_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s11_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s10_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s11_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-node1hdcdgs0ox678_(X,"f") .
s13_(X,"t*"):-_personShapeA_(X,"t*") .
node1hdcdgs0ox678_(X,"t*"):-s13_(X,"t*") .
node1hdcdgs0ox678_(X,"f"):-s13_(X,"f") .

% sh:minCount 0 for node1hdcdgs0ox678
s14_(X,"t*"):-node1hdcdgs0ox678_(X,"t*") .
choose(s14,X,_worksFor,0):-s14_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s15_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s14_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
0 {s15_(Y,"t*"):_worksFor_(X,Y,"t**")} 0:-s14_(X,"t*") .

_organization_(X,"t"):-s15_(X,"t*") .
_organization_(X,"f"):-s15_(X,"f") .

s16_(X,"t*"):-node1hdcdgs0ox678_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
_worksFor_(X,@new(s17,X,_worksFor,1..1),"t"):-choose(s17,X,_worksFor,1) .
choose(s17,X,_worksFor,1);choose(s17,X,_worksFor,0):-s17_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s18_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s17_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s18_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s17_(X,"t*") .
s19_(X,"f"):-s18_(X,"t*") .
s19_(X,"t*"):-s18_(X,"f") .

_organization_(X,"t"):-s19_(X,"t*") .
_organization_(X,"f"):-s19_(X,"f") .

s14_(X,"f");s16_(X,"f"):-node1hdcdgs0ox678_(X,"f") .
s6_(X,"f");s13_(X,"f"):-_personShapeA_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-_organization_(X,"t"),_organization_(X,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
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
