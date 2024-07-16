
% Graph Data

rdfs_Datatype("xsd_byte") .
rdfs_Datatype("xsd_date") .
rdfs_Datatype("xsd_decimal") .
rdfs_Datatype("xsd_double") .
rdfs_Datatype("xsd_float") .
rdfs_Datatype("xsd_int") .
rdfs_Datatype("xsd_integer") .
rdfs_Datatype("xsd_language") .
rdfs_Datatype("xsd_long") .
rdfs_Datatype("xsd_negativeInteger") .
rdfs_Datatype("xsd_nonNegativeInteger") .
rdfs_Datatype("xsd_nonPositiveInteger") .
rdfs_Datatype("xsd_positiveInteger") .
rdfs_Datatype("xsd_short") .
rdfs_Datatype("xsd_string") .
rdfs_Datatype("xsd_unsignedByte") .
rdfs_Datatype("xsd_unsignedInt") .
rdfs_Datatype("xsd_unsignedLong") .
rdfs_Datatype("xsd_unsignedShort") .
rdfs_Datatype("http://www.w3.org/2002/07/owl#rational") .
rdfs_Datatype("http://www.w3.org/2002/07/owl#real") .

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
bnode_739032e6a88c4a928a47e6812206fa6225_st_(X,Y,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,_),_worksFor_(X,Y,"t*") .
_organization_(X,"t*"):-_organization(X) .
_organization_(X,"t*"):-_organization_(X,"t") .
bnode_739032e6a88c4a928a47e6812206fa6224_st_(X,Y,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,_),_worksFor_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-_notPersonShape_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6225_(X,"t*"):-s0_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6225_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for bnode_739032e6a88c4a928a47e6812206fa6225
s1_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s2_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
_worksFor_(X,Y,"f"):-_worksFor_(X,Y,"t*"),_worksFor_(X,Y,"f") .
0 {s2_(Y,"t*"):_worksFor_(X,Y,"t**")} 0:-s1_(X,"t*") .

bnode_739032e6a88c4a928a47e6812206fa6226_(X,"f"):-s2_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6226_(X,"t*"):-s2_(X,"f") .
_organization_(X,"t"):-bnode_739032e6a88c4a928a47e6812206fa6226_(X,"t*") .
_organization_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6226_(X,"f") .

% universal for bnode_739032e6a88c4a928a47e6812206fa6225
s3_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
_worksFor_(X,@new(s4,X,_worksFor,1..1),"t"):-choose(s4,X,_worksFor,1) .
choose(s4,X,_worksFor,1);choose(s4,X,_worksFor,0):-s4_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s5_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

bnode_739032e6a88c4a928a47e6812206fa6226_(X,"f"):-s6_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6226_(X,"t*"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,"f") .
s7_(X,"t*"):-_notPersonShape_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6225_(X,"t*"):-s7_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6225_(X,"f"):-s7_(X,"f") .

% sh:minCount 1 for bnode_739032e6a88c4a928a47e6812206fa6225
s8_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,"t*") .
_worksFor_(X,@new(s8,X,_worksFor,1..1),"t"):-choose(s8,X,_worksFor,1) .
choose(s8,X,_worksFor,1);choose(s8,X,_worksFor,0):-s8_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s9_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s8_(X,"t*") .


s10_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
_worksFor_(X,@new(s11,X,_worksFor,1..1),"t"):-choose(s11,X,_worksFor,1) .
choose(s11,X,_worksFor,1);choose(s11,X,_worksFor,0):-s11_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s12_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6225_(X,"f") .
s0_(X,"f");s7_(X,"f"):-_notPersonShape_(X,"f") .
s14_(X,"t*"):-_personShape_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6224_(X,"t*"):-s14_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6224_(X,"f"):-s14_(X,"f") .

% sh:minCount 0 for bnode_739032e6a88c4a928a47e6812206fa6224
s15_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s16_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
0 {s16_(Y,"t*"):_worksFor_(X,Y,"t**")} 0:-s15_(X,"t*") .

_organization_(X,"t"):-s16_(X,"t*") .
_organization_(X,"f"):-s16_(X,"f") .

% universal for bnode_739032e6a88c4a928a47e6812206fa6224
s17_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
_worksFor_(X,@new(s18,X,_worksFor,1..1),"t"):-choose(s18,X,_worksFor,1) .
choose(s18,X,_worksFor,1);choose(s18,X,_worksFor,0):-s18_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s19_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s19_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s18_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .

_organization_(X,"t"):-s20_(X,"t*") .
_organization_(X,"f"):-s20_(X,"f") .

s15_(X,"f");s17_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,"f") .
s21_(X,"t*"):-_personShape_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6224_(X,"t*"):-s21_(X,"t*") .
bnode_739032e6a88c4a928a47e6812206fa6224_(X,"f"):-s21_(X,"f") .

% sh:minCount 1 for bnode_739032e6a88c4a928a47e6812206fa6224
s22_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,"t*") .
_worksFor_(X,@new(s22,X,_worksFor,1..1),"t"):-choose(s22,X,_worksFor,1) .
choose(s22,X,_worksFor,1);choose(s22,X,_worksFor,0):-s22_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s23_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s23_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s22_(X,"t*") .


s24_(X,"t*"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
_worksFor_(X,@new(s25,X,_worksFor,1..1),"t"):-choose(s25,X,_worksFor,1) .
choose(s25,X,_worksFor,1);choose(s25,X,_worksFor,0):-s25_(X,"t*") .
(C-0) {_worksFor_(X,Y,"f"):_worksFor_(X,Y,"t*");s26_(Y,"f"):_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s26_(Y,"t*"):_worksFor_(X,Y,"t**")} 1:-s25_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .


s22_(X,"f");s24_(X,"f"):-bnode_739032e6a88c4a928a47e6812206fa6224_(X,"f") .
s14_(X,"f");s21_(X,"f"):-_personShape_(X,"f") .

% Interpretation Rules

_worksFor_(X,Y,"t**"):-_worksFor_(X,Y,"t*"),not _worksFor_(X,Y,"f") .
bnode_739032e6a88c4a928a47e6812206fa6225_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),bnode_739032e6a88c4a928a47e6812206fa6225_st_(X,Y,"t*"),not bnode_739032e6a88c4a928a47e6812206fa6225_st_(X,Y,"f") .
_organization_(X,"t**"):-_organization_(X,"t*"),not _organization_(X,"f") .
bnode_739032e6a88c4a928a47e6812206fa6224_st_(X,Y,"t**"):-_worksFor_(X,Y,"t**"),bnode_739032e6a88c4a928a47e6812206fa6224_st_(X,Y,"t*"),not bnode_739032e6a88c4a928a47e6812206fa6224_st_(X,Y,"f") .

% Program Constraints

:-_worksFor_(X,Y,"t"),_worksFor_(X,Y,"f") .
:-_organization_(X,"t"),_organization_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .
:-s23_(X,"f") .
:-s27_(X,"f") .

% Change Set Rules

add(_worksFor(X,Y)):-_worksFor_(X,Y,"t**"),not _worksFor(X,Y) .
del(_worksFor(X,Y)):-_worksFor_(X,Y,"f"),_worksFor(X,Y) .
add(_organization(X)):-_organization_(X,"t**"),not _organization(X) .
del(_organization(X)):-_organization_(X,"f"),_organization(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@5,X,S: skipTarget(X,S) } .

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
