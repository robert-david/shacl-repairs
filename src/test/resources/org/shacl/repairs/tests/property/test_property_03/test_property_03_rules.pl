
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
node1hmcj09prx48_st_(X,Y,"t*"):-node1hmcj09prx48_(X,_),_worksFor_(X,Y,"t*") .
_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
node1hmcj09prx48_(X,"t*"):-s0_(X,"t*") .
node1hmcj09prx48_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for node1hmcj09prx48
s1_(X,"t*"):-node1hmcj09prx48_(X,"t*") .
choose(s1,X,_worksFor,0):-s1_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s2_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s1_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
0 {s2_(Y,"t*"):_worksFor_(X,Y,"t**")} 0:-s1_(X,"t*") .

_organization_(X,"t"):-s2_(X,"t*") .
_organization_(X,"f"):-s2_(X,"f") .

% universal for node1hmcj09prx48
s3_(X,"t*"):-node1hmcj09prx48_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_worksFor_(X,@new(s4,X,_worksFor,1..1),"t"):-choose(s4,X,_worksFor,1) .
choose(s4,X,_worksFor,1);choose(s4,X,_worksFor,0):-s4_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s5_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s4_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s5_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

_organization_(X,"t"):-s6_(X,"t*") .
_organization_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-node1hmcj09prx48_(X,"f") .
s7_(X,"t*"):-_personShape_(X,"t*") .
node1hmcj09prx48_(X,"t*"):-s7_(X,"t*") .
node1hmcj09prx48_(X,"f"):-s7_(X,"f") .

% sh:minCount 3 for node1hmcj09prx48
s8_(X,"t*"):-node1hmcj09prx48_(X,"t*") .
_worksFor_(X,@new(s8,X,_worksFor,1..1),"t"):-choose(s8,X,_worksFor,1) .
_worksFor_(X,@new(s8,X,_worksFor,1..2),"t"):-choose(s8,X,_worksFor,2) .
_worksFor_(X,@new(s8,X,_worksFor,1..3),"t"):-choose(s8,X,_worksFor,3) .
choose(s8,X,_worksFor,3);choose(s8,X,_worksFor,2);choose(s8,X,_worksFor,1);choose(s8,X,_worksFor,0):-s8_(X,"t*") .
(C-2) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s9_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-2):-s8_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>2 .
_worksFor_(X,Y,"f"):-s8_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
3 {s9_(Y,"t*"):_worksFor_(X,Y,"t**")} 3:-s8_(X,"t*") .


s10_(X,"t*"):-node1hmcj09prx48_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_worksFor_(X,@new(s11,X,_worksFor,1..1),"t"):-choose(s11,X,_worksFor,1) .
choose(s11,X,_worksFor,1);choose(s11,X,_worksFor,0):-s11_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s12_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-s11_(X,"f"),_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
1 {s12_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-node1hmcj09prx48_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
node1hmcj09prx48_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),node1hmcj09prx48_st_(X,Y,"t*"),not node1hmcj09prx48_st_(X,Y,"f") .
_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-_organization_(X,"t"),_organization_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
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
