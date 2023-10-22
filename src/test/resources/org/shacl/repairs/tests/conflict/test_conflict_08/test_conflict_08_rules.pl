
% Graph Data

_eats("_ann","_steak") .

% Shape Targets

targetNode("_ann",_vegetarian) .
targetNode("_steak",_meat) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_vegetarian_("_ann","t*"):-actualTarget("_ann",_vegetarian) .
_meat_("_steak","t*"):-actualTarget("_steak",_meat) .

% Annotation Rules

_consistsOf_(X,Y,"t*"):-_consistsOf(X,Y) .
_consistsOf_(X,Y,"t*"):-_consistsOf_(X,Y,"t") .
_plant_(X,"t*"):-_plant(X) .
_plant_(X,"t*"):-_plant_(X,"t") .
_eats_(X,Y,"t*"):-_eats(X,Y) .
_eats_(X,Y,"t*"):-_eats_(X,Y,"t") .

% Repair Rules

node1hdcdgs0ox691_(X,"f"):-_meat_(X,"t*") .
node1hdcdgs0ox691_(X,"t*"):-_meat_(X,"f") .
node1hdcdgs0ox692_(X,"t*"):-node1hdcdgs0ox691_(X,"t*") .
node1hdcdgs0ox692_(X,"f"):-node1hdcdgs0ox691_(X,"f") .

% sh:minCount 1 for node1hdcdgs0ox692
s0_(X,"t*"):-node1hdcdgs0ox692_(X,"t*") .
_consistsOf_(X,@new(s0,X,_consistsOf,1..1),"t"):-choose(s0,X,_consistsOf,1) .
choose(s0,X,_consistsOf,1);choose(s0,X,_consistsOf,0):-s0_(X,"t*") .
(C-0) {_consistsOf_(X,Y,"f"):_consistsOf_(X,Y,"t*");s1_(Y,"f"):_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:_consistsOf_(X,Y,"t*")}=C,C>0 .
_consistsOf_(X,Y,"f"):-s0_(X,"f"),_consistsOf_(X,Y,"t*"),_consistsOf_(X,Y,"f") .
1 {s1_(Y,"t*"):_consistsOf_(X,Y,"t**")} 1:-s0_(X,"t*") .

_plant_(X,"t"):-s1_(X,"t*") .
_plant_(X,"f"):-s1_(X,"f") .

% universal for node1hdcdgs0ox692
s2_(X,"t*"):-node1hdcdgs0ox692_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
_consistsOf_(X,@new(s3,X,_consistsOf,1..1),"t"):-choose(s3,X,_consistsOf,1) .
choose(s3,X,_consistsOf,1);choose(s3,X,_consistsOf,0):-s3_(X,"t*") .
(C-0) {_consistsOf_(X,Y,"f"):_consistsOf_(X,Y,"t*");s4_(Y,"f"):_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_consistsOf_(X,Y,"t*")}=C,C>0 .
_consistsOf_(X,Y,"f"):-s3_(X,"f"),_consistsOf_(X,Y,"t*"),_consistsOf_(X,Y,"f") .
1 {s4_(Y,"t*"):_consistsOf_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

_plant_(X,"t"):-s5_(X,"t*") .
_plant_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-node1hdcdgs0ox692_(X,"f") .
node1hdcdgs0ox689_(X,"f"):-_vegetarian_(X,"t*") .
node1hdcdgs0ox689_(X,"t*"):-_vegetarian_(X,"f") .
node1hdcdgs0ox690_(X,"t*"):-node1hdcdgs0ox689_(X,"t*") .
node1hdcdgs0ox690_(X,"f"):-node1hdcdgs0ox689_(X,"f") .

% sh:minCount 1 for node1hdcdgs0ox690
s6_(X,"t*"):-node1hdcdgs0ox690_(X,"t*") .
_eats_(X,@new(s6,X,_eats,1..1),"t"):-choose(s6,X,_eats,1) .
choose(s6,X,_eats,1);choose(s6,X,_eats,0):-s6_(X,"t*") .
(C-0) {_eats_(X,Y,"f"):_eats_(X,Y,"t*");s7_(Y,"f"):_eats_(X,Y,"t*"),not _eats_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:_eats_(X,Y,"t*")}=C,C>0 .
_eats_(X,Y,"f"):-s6_(X,"f"),_eats_(X,Y,"t*"),_eats_(X,Y,"f") .
1 {s7_(Y,"t*"):_eats_(X,Y,"t**")} 1:-s6_(X,"t*") .

node1hdcdgs0ox691_(X,"f"):-s7_(X,"t*") .
node1hdcdgs0ox691_(X,"t*"):-s7_(X,"f") .

s8_(X,"t*"):-node1hdcdgs0ox692_(X,"t*") .
_consistsOf_(X,@new(s8,X,_consistsOf,1..1),"t"):-choose(s8,X,_consistsOf,1) .
choose(s8,X,_consistsOf,1);choose(s8,X,_consistsOf,0):-s8_(X,"t*") .
(C-0) {_consistsOf_(X,Y,"f"):_consistsOf_(X,Y,"t*");s9_(Y,"f"):_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_consistsOf_(X,Y,"t*")}=C,C>0 .
_consistsOf_(X,Y,"f"):-s8_(X,"f"),_consistsOf_(X,Y,"t*"),_consistsOf_(X,Y,"f") .
1 {s9_(Y,"t*"):_consistsOf_(X,Y,"t**")} 1:-s8_(X,"t*") .

_plant_(X,"t"):-s9_(X,"t*") .
_plant_(X,"f"):-s9_(X,"f") .

s10_(X,"t*"):-node1hdcdgs0ox692_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_consistsOf_(X,@new(s11,X,_consistsOf,1..1),"t"):-choose(s11,X,_consistsOf,1) .
choose(s11,X,_consistsOf,1);choose(s11,X,_consistsOf,0):-s11_(X,"t*") .
(C-0) {_consistsOf_(X,Y,"f"):_consistsOf_(X,Y,"t*");s12_(Y,"f"):_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_consistsOf_(X,Y,"t*")}=C,C>0 .
_consistsOf_(X,Y,"f"):-s11_(X,"f"),_consistsOf_(X,Y,"t*"),_consistsOf_(X,Y,"f") .
1 {s12_(Y,"t*"):_consistsOf_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

_plant_(X,"t"):-s13_(X,"t*") .
_plant_(X,"f"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-node1hdcdgs0ox692_(X,"f") .

% universal for node1hdcdgs0ox690
s14_(X,"t*"):-node1hdcdgs0ox690_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
_eats_(X,@new(s15,X,_eats,1..1),"t"):-choose(s15,X,_eats,1) .
choose(s15,X,_eats,1);choose(s15,X,_eats,0):-s15_(X,"t*") .
(C-0) {_eats_(X,Y,"f"):_eats_(X,Y,"t*");s16_(Y,"f"):_eats_(X,Y,"t*"),not _eats_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:_eats_(X,Y,"t*")}=C,C>0 .
_eats_(X,Y,"f"):-s15_(X,"f"),_eats_(X,Y,"t*"),_eats_(X,Y,"f") .
1 {s16_(Y,"t*"):_eats_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .

node1hdcdgs0ox691_(X,"f"):-s17_(X,"t*") .
node1hdcdgs0ox691_(X,"t*"):-s17_(X,"f") .

s18_(X,"t*"):-node1hdcdgs0ox692_(X,"t*") .
_consistsOf_(X,@new(s18,X,_consistsOf,1..1),"t"):-choose(s18,X,_consistsOf,1) .
choose(s18,X,_consistsOf,1);choose(s18,X,_consistsOf,0):-s18_(X,"t*") .
(C-0) {_consistsOf_(X,Y,"f"):_consistsOf_(X,Y,"t*");s19_(Y,"f"):_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:_consistsOf_(X,Y,"t*")}=C,C>0 .
_consistsOf_(X,Y,"f"):-s18_(X,"f"),_consistsOf_(X,Y,"t*"),_consistsOf_(X,Y,"f") .
1 {s19_(Y,"t*"):_consistsOf_(X,Y,"t**")} 1:-s18_(X,"t*") .

_plant_(X,"t"):-s19_(X,"t*") .
_plant_(X,"f"):-s19_(X,"f") .

s20_(X,"t*"):-node1hdcdgs0ox692_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
_consistsOf_(X,@new(s21,X,_consistsOf,1..1),"t"):-choose(s21,X,_consistsOf,1) .
choose(s21,X,_consistsOf,1);choose(s21,X,_consistsOf,0):-s21_(X,"t*") .
(C-0) {_consistsOf_(X,Y,"f"):_consistsOf_(X,Y,"t*");s22_(Y,"f"):_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:_consistsOf_(X,Y,"t*")}=C,C>0 .
_consistsOf_(X,Y,"f"):-s21_(X,"f"),_consistsOf_(X,Y,"t*"),_consistsOf_(X,Y,"f") .
1 {s22_(Y,"t*"):_consistsOf_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .

_plant_(X,"t"):-s23_(X,"t*") .
_plant_(X,"f"):-s23_(X,"f") .

s18_(X,"f");s20_(X,"f"):-node1hdcdgs0ox692_(X,"f") .

s6_(X,"f");s14_(X,"f"):-node1hdcdgs0ox690_(X,"f") .

% Interpretation Rules

_consistsOf_(X,Y,"t**"):-_consistsOf_(X,Y,"t*"),not _consistsOf_(X,Y,"f") .
_plant_(X,"t**"):-_plant_(X,"t*"),not _plant_(X,"f") .
_eats_(X,Y,"t**"):-_eats_(X,Y,"t*"),not _eats_(X,Y,"f") .

% Program Constraints

:-_consistsOf_(X,Y,"t"),_consistsOf_(X,Y,"f") .
:-_plant_(X,"t"),_plant_(X,"f") .
:-_eats_(X,Y,"t"),_eats_(X,Y,"f") .

% Change Set Rules

add(_consistsOf(X,Y)):-_consistsOf_(X,Y,"t**"),not _consistsOf(X,Y) .
del(_consistsOf(X,Y)):-_consistsOf_(X,Y,"f"),_consistsOf(X,Y) .
add(_plant(X)):-_plant_(X,"t**"),not _plant(X) .
del(_plant(X)):-_plant_(X,"f"),_plant(X) .
add(_eats(X,Y)):-_eats_(X,Y,"t**"),not _eats(X,Y) .
del(_eats(X,Y)):-_eats_(X,Y,"f"),_eats(X,Y) .
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
