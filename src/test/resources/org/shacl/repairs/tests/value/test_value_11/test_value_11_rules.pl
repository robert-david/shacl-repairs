
% Graph Data

_name("_ann","ANN") .
xsd_string("ANN") .

% Shape Targets

targetNode("_ann",_personShape) .

% Constants

const("Ann") .
const("ann") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
_personShape_("_ann","t*"):-actualTarget("_ann",_personShape) .

% Annotation Rules

_name_(X,Y,"t*"):-_name(X,Y) .
_name_(X,Y,"t*"):-_name_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-_personShape_(X,"t*") .
node1hdcdgs0ox1208_(X,"t*"):-s0_(X,"t*") .
node1hdcdgs0ox1208_(X,"f"):-s0_(X,"f") .

% sh:minCount 3 for node1hdcdgs0ox1208
s1_(X,"t*"):-node1hdcdgs0ox1208_(X,"t*") .
_name_(X,@new(s1,X,_name,1..1),"t"):-choose(s1,X,_name,1) .
_name_(X,@new(s1,X,_name,1..2),"t"):-choose(s1,X,_name,2) .
_name_(X,@new(s1,X,_name,1..3),"t"):-choose(s1,X,_name,3) .
choose(s1,X,_name,3);choose(s1,X,_name,2);choose(s1,X,_name,1);choose(s1,X,_name,0):-s1_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s1_(X,"t*") .
(C-2) {_name_(X,Y,"f"):_name_(X,Y,"t*");s2_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-2):-s1_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>2 .
_name_(X,Y,"f"):-s1_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
3 {s2_(Y,"t*"):_name_(X,Y,"t**")} 3:-s1_(X,"t*") .


% universal for node1hdcdgs0ox1208
s3_(X,"t*"):-node1hdcdgs0ox1208_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_name_(X,@new(s4,X,_name,1..1),"t"):-choose(s4,X,_name,1) .
choose(s4,X,_name,1);choose(s4,X,_name,0):-s4_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s4_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s5_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s4_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s5_(Y,"t*"):_name_(X,Y,"t**")} 2:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hdcdgs0ox1208_(X,"f") .
s7_(X,"t*"):-_personShape_(X,"t*") .
node1hdcdgs0ox1208_(X,"t*"):-s7_(X,"t*") .
node1hdcdgs0ox1208_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for node1hdcdgs0ox1208
s8_(X,"t*"):-node1hdcdgs0ox1208_(X,"t*") .
choose(s8,X,_name,0):-s8_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s8_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s9_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s8_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
0 {s9_(Y,"t*"):_name_(X,Y,"t**")} 2:-s8_(X,"t*") .

s10_(X,"f"):-s9_(X,"f") .
s11_(X,"f"):-s9_(X,"f") .
s10_(X,"t*");s11_(X,"t*"):-s9_(X,"t*") .

s12_(X,"t*"):-node1hdcdgs0ox1208_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
_name_(X,@new(s13,X,_name,1..1),"t"):-choose(s13,X,_name,1) .
choose(s13,X,_name,1);choose(s13,X,_name,0):-s13_(X,"t*") .
0 {_name_(X,Y,"t"):const(Y)} 2:-s13_(X,"t*") .
(C-0) {_name_(X,Y,"f"):_name_(X,Y,"t*");s14_(Y,"f"):_name_(X,Y,"t*"),not _name_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:_name_(X,Y,"t*")}=C,C>0 .
_name_(X,Y,"f"):-s13_(X,"f"),_name_(X,Y,"t*"),_name_(X,Y,"f") .
1 {s14_(Y,"t*"):_name_(X,Y,"t**")} 2:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .

s16_(X,"f"):-s15_(X,"f") .
s17_(X,"f"):-s15_(X,"f") .
s16_(X,"t*");s17_(X,"t*"):-s15_(X,"t*") .

s8_(X,"f");s12_(X,"f"):-node1hdcdgs0ox1208_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_name_(X,Y,"t**"):-_name_(X,Y,"t*"),not _name_(X,Y,"f") .

% Program Constraints

:-_name_(X,Y,"t"),_name_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s10_(X,"t*"),X!="ann" .
:-s10_(X,"f"),X="ann" .
:-s11_(X,"t*"),X!="Ann" .
:-s11_(X,"f"),X="Ann" .
:-s16_(X,"t*"),X!="ann" .
:-s16_(X,"f"),X="ann" .
:-s17_(X,"t*"),X!="Ann" .
:-s17_(X,"f"),X="Ann" .

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
