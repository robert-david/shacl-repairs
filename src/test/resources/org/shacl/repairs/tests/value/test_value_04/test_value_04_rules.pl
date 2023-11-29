
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants

const("Ann") .
const("ANN") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
node1hgd7v9f9x1439_(X,"t*"):-s0_(X,"t*") .
node1hgd7v9f9x1439_(X,"f"):-s0_(X,"f") .

s1_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
_name_(X,@new(s1,X,_name,1..1),"t"):-choose(s1,X,_name,1) .
choose(s1,X,_name,1);choose(s1,X,_name,0):-s1_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s1_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s2_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s1_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s2_(Y,"t*"):_name_(X,Y,"t**")} 2:-s1_(X,"t*") .


% sh:minCount 0 for node1hgd7v9f9x1439
s3_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
choose(s3,X,_name,0):-s3_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s3_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s4_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s3_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s4_(Y,"t*"):_name_(X,Y,"t**")} 2:-s3_(X,"t*") .


% universal for node1hgd7v9f9x1439
s5_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
_name_(X,@new(s6,X,_name,1..1),"t"):-choose(s6,X,_name,1) .
choose(s6,X,_name,1);choose(s6,X,_name,0):-s6_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s6_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s7_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s6_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s7_(Y,"t*"):_name_(X,Y,"t**")} 2:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s1_(X,"f");s3_(X,"f");s5_(X,"f"):-node1hgd7v9f9x1439_(X,"f") .
s9_(X,"t*"):-_personShape_(X,"t*") .
node1hgd7v9f9x1439_(X,"t*"):-s9_(X,"t*") .
node1hgd7v9f9x1439_(X,"f"):-s9_(X,"f") .

s10_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
_name_(X,@new(s10,X,_name,1..1),"t"):-choose(s10,X,_name,1) .
choose(s10,X,_name,1);choose(s10,X,_name,0):-s10_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s10_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s11_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s10_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s11_(Y,"t*"):_name_(X,Y,"t**")} 2:-s10_(X,"t*") .


s12_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
choose(s12,X,_name,0):-s12_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s12_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s13_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s12_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s13_(Y,"t*"):_name_(X,Y,"t**")} 2:-s12_(X,"t*") .


s14_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
_name_(X,@new(s15,X,_name,1..1),"t"):-choose(s15,X,_name,1) .
choose(s15,X,_name,1);choose(s15,X,_name,0):-s15_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s15_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s16_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s15_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s16_(Y,"t*"):_name_(X,Y,"t**")} 2:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .


s10_(X,"f");s12_(X,"f");s14_(X,"f"):-node1hgd7v9f9x1439_(X,"f") .
s18_(X,"t*"):-_personShape_(X,"t*") .
node1hgd7v9f9x1439_(X,"t*"):-s18_(X,"t*") .
node1hgd7v9f9x1439_(X,"f"):-s18_(X,"f") .

% sh:minCount 3 for node1hgd7v9f9x1439
s19_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
_name_(X,@new(s19,X,_name,1..1),"t"):-choose(s19,X,_name,1) .
_name_(X,@new(s19,X,_name,1..2),"t"):-choose(s19,X,_name,2) .
_name_(X,@new(s19,X,_name,1..3),"t"):-choose(s19,X,_name,3) .
choose(s19,X,_name,3);choose(s19,X,_name,2);choose(s19,X,_name,1);choose(s19,X,_name,0):-s19_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s19_(X,"t*") .
(C-2) {_name_(X,Y,"f"):_name_(X,Y,"t*");s20_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-2):-s19_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>2 .
_name_(X,Y,"f"):-s19_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
3 {s20_(Y,"t*"):_name_(X,Y,"t**")} 3:-s19_(X,"t*") .


s21_(X,"t*"):-node1hgd7v9f9x1439_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .
_name_(X,@new(s22,X,_name,1..1),"t"):-choose(s22,X,_name,1) .
choose(s22,X,_name,1);choose(s22,X,_name,0):-s22_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s22_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s23_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s22_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s23_(Y,"t*"):_name_(X,Y,"t**")} 2:-s22_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .


s19_(X,"f");s21_(X,"f"):-node1hgd7v9f9x1439_(X,"f") .
s0_(X,"f");s9_(X,"f");s18_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s2_(X,"t*"),X!="ANN" .
:-s2_(X,"f"),X="ANN" .
:-s4_(X,"f") .
:-s8_(X,"f") .
:-s11_(X,"t*"),X!="Ann" .
:-s11_(X,"f"),X="Ann" .
:-s13_(X,"f") .
:-s17_(X,"f") .
:-s20_(X,"f") .
:-s24_(X,"f") .

% Change Set Rules

add(_name(X,Y)):-_name_(X,Y,"t**"),not _name(X,Y) .
del(_name(X,Y)):-_name_(X,Y,"f"),_name(X,Y) .
#minimize { 1@1,X,Y: _name_(X,Y,"t"), const(Y) } .
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
