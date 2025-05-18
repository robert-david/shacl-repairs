
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
rdfs_Datatype("owl_rational") .
rdfs_Datatype("owl_real") .

% Shape Targets

targetNode("d_ann",d_PersonShapeB) .
targetNode("d_ann",d_PersonShapeA) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PersonShapeB_("d_ann","t*"):-actualTarget("d_ann",d_PersonShapeB) .
d_PersonShapeA_("d_ann","t*"):-actualTarget("d_ann",d_PersonShapeA) .

% Annotation Rules

d_worksFor_(X,Y,"t*"):-d_worksFor(X,Y) .
d_worksFor_(X,Y,"t*"):-d_worksFor_(X,Y,"t") .
bnode_2fd914312f0649d499c395963ae8b2a567_st_(X,Y,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a567_(X,_),d_worksFor_(X,Y,"t*") .
d_Organization_(X,"t*"):-d_Organization(X) .
d_Organization_(X,"t*"):-d_Organization_(X,"t") .
bnode_2fd914312f0649d499c395963ae8b2a565_st_(X,Y,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,_),d_worksFor_(X,Y,"t*") .

% Repair Rules

bnode_2fd914312f0649d499c395963ae8b2a566_(X,"f"):-d_PersonShapeB_(X,"t*") .
bnode_2fd914312f0649d499c395963ae8b2a566_(X,"t*"):-d_PersonShapeB_(X,"f") .
bnode_2fd914312f0649d499c395963ae8b2a567_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a566_(X,"t*") .
bnode_2fd914312f0649d499c395963ae8b2a567_(X,"f"):-bnode_2fd914312f0649d499c395963ae8b2a566_(X,"f") .

% sh:minCount 3 for bnode_2fd914312f0649d499c395963ae8b2a567
s0_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a567_(X,"t*") .
d_worksFor_(X,@new(s0,X,d_worksFor,1..1),"t"):-choose(s0,X,d_worksFor,1) .
d_worksFor_(X,@new(s0,X,d_worksFor,1..2),"t"):-choose(s0,X,d_worksFor,2) .
d_worksFor_(X,@new(s0,X,d_worksFor,1..3),"t"):-choose(s0,X,d_worksFor,3) .
choose(s0,X,d_worksFor,3);choose(s0,X,d_worksFor,2);choose(s0,X,d_worksFor,1);choose(s0,X,d_worksFor,0):-s0_(X,"t*") .
(C-2) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s1_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-2):-s0_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>2 .
d_worksFor_(X,Y,"f"):-d_worksFor_(X,Y,"t*"),d_worksFor_(X,Y,"f") .
3 {s1_(Y,"t*"):d_worksFor_(X,Y,"t**")} 3:-s0_(X,"t*") .

d_Organization_(X,"t"):-s1_(X,"t*") .
d_Organization_(X,"f"):-s1_(X,"f") .

% universal for bnode_2fd914312f0649d499c395963ae8b2a567
s2_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a567_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
d_worksFor_(X,@new(s3,X,d_worksFor,1..1),"t"):-choose(s3,X,d_worksFor,1) .
choose(s3,X,d_worksFor,1);choose(s3,X,d_worksFor,0):-s3_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s4_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

d_Organization_(X,"t"):-s5_(X,"t*") .
d_Organization_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-bnode_2fd914312f0649d499c395963ae8b2a567_(X,"f") .
s6_(X,"t*"):-d_PersonShapeA_(X,"t*") .
bnode_2fd914312f0649d499c395963ae8b2a565_(X,"t*"):-s6_(X,"t*") .
bnode_2fd914312f0649d499c395963ae8b2a565_(X,"f"):-s6_(X,"f") .

% sh:minCount 2 for bnode_2fd914312f0649d499c395963ae8b2a565
s7_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,"t*") .
d_worksFor_(X,@new(s7,X,d_worksFor,1..1),"t"):-choose(s7,X,d_worksFor,1) .
d_worksFor_(X,@new(s7,X,d_worksFor,1..2),"t"):-choose(s7,X,d_worksFor,2) .
choose(s7,X,d_worksFor,2);choose(s7,X,d_worksFor,1);choose(s7,X,d_worksFor,0):-s7_(X,"t*") .
(C-1) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s8_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-1):-s7_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>1 .
2 {s8_(Y,"t*"):d_worksFor_(X,Y,"t**")} 2:-s7_(X,"t*") .


% universal for bnode_2fd914312f0649d499c395963ae8b2a565
s9_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,"t*") .
s10_(X,"f"):-s9_(X,"t*") .
s10_(X,"t*"):-s9_(X,"f") .
d_worksFor_(X,@new(s10,X,d_worksFor,1..1),"t"):-choose(s10,X,d_worksFor,1) .
choose(s10,X,d_worksFor,1);choose(s10,X,d_worksFor,0):-s10_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s11_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s11_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s10_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .


s7_(X,"f");s9_(X,"f"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,"f") .
s13_(X,"t*"):-d_PersonShapeA_(X,"t*") .
bnode_2fd914312f0649d499c395963ae8b2a565_(X,"t*"):-s13_(X,"t*") .
bnode_2fd914312f0649d499c395963ae8b2a565_(X,"f"):-s13_(X,"f") .

% sh:minCount 0 for bnode_2fd914312f0649d499c395963ae8b2a565
s14_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s15_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
0 {s15_(Y,"t*"):d_worksFor_(X,Y,"t**")} 0:-s14_(X,"t*") .

d_Organization_(X,"t"):-s15_(X,"t*") .
d_Organization_(X,"f"):-s15_(X,"f") .

s16_(X,"t*"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .
d_worksFor_(X,@new(s17,X,d_worksFor,1..1),"t"):-choose(s17,X,d_worksFor,1) .
choose(s17,X,d_worksFor,1);choose(s17,X,d_worksFor,0):-s17_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s18_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s18_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s17_(X,"t*") .
s19_(X,"f"):-s18_(X,"t*") .
s19_(X,"t*"):-s18_(X,"f") .

d_Organization_(X,"t"):-s19_(X,"t*") .
d_Organization_(X,"f"):-s19_(X,"f") .

s14_(X,"f");s16_(X,"f"):-bnode_2fd914312f0649d499c395963ae8b2a565_(X,"f") .
s6_(X,"f");s13_(X,"f"):-d_PersonShapeA_(X,"f") .

% Interpretation Rules

d_worksFor_(X,Y,"t**"):-d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f") .
bnode_2fd914312f0649d499c395963ae8b2a567_st_(X,Y,"t**"):-d_worksFor_(X,Y,"t**"),bnode_2fd914312f0649d499c395963ae8b2a567_st_(X,Y,"t*"),not bnode_2fd914312f0649d499c395963ae8b2a567_st_(X,Y,"f") .
d_Organization_(X,"t**"):-d_Organization_(X,"t*"),not d_Organization_(X,"f") .
bnode_2fd914312f0649d499c395963ae8b2a565_st_(X,Y,"t**"):-d_worksFor_(X,Y,"t**"),bnode_2fd914312f0649d499c395963ae8b2a565_st_(X,Y,"t*"),not bnode_2fd914312f0649d499c395963ae8b2a565_st_(X,Y,"f") .

% Program Constraints

:-d_worksFor_(X,Y,"t"),d_worksFor_(X,Y,"f") .
:-d_Organization_(X,"t"),d_Organization_(X,"f") .
:-s8_(X,"f") .
:-s12_(X,"f") .

% Change Set Rules

add(d_worksFor(X,Y)):-d_worksFor_(X,Y,"t**"),not d_worksFor(X,Y) .
del(d_worksFor(X,Y)):-d_worksFor_(X,Y,"f"),d_worksFor(X,Y) .
add(d_Organization(X)):-d_Organization_(X,"t**"),not d_Organization(X) .
del(d_Organization(X)):-d_Organization_(X,"f"),d_Organization(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

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
return tostring('new_' .. result)
end
#end .


#script (lua)
function gt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>y then return "t" else return "f" end
end

function lt(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<y then return "t" else return "f" end
end

function geq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x>=y then return "t" else return "f" end
end

function leq(X,Y)
if isNew(X) then return "new" end
local x,y = getNumbers(X,Y)
if x==nil or y==nil then return "f" end
if x<=y then return "t" else return "f" end
end

function getNumbers(X,Y)
local x,_ = string.gsub(tostring(X),"\"","")
local y,_ = string.gsub(tostring(Y),"\"","")
local xn = tonumber(x)
local yn = tonumber(y)
return xn,yn
end

function isNew(X)
return string.match(tostring(X), '^"new')
end
#end .
