
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

targetNode("d_ann",d_PersonShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PersonShape_("d_ann","t*"):-actualTarget("d_ann",d_PersonShape) .

% Annotation Rules

d_worksFor_(X,Y,"t*"):-d_worksFor(X,Y) .
d_worksFor_(X,Y,"t*"):-d_worksFor_(X,Y,"t") .
bnode_a662fb303d9b442282b5343d5a95798933_st_(X,Y,"t*"):-bnode_a662fb303d9b442282b5343d5a95798933_(X,_),d_worksFor_(X,Y,"t*") .
bnode_a662fb303d9b442282b5343d5a95798935_st_(X,Y,"t*"):-bnode_a662fb303d9b442282b5343d5a95798935_(X,_),d_worksFor_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-d_PersonShape_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798933_(X,"t*"):-s0_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798933_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for bnode_a662fb303d9b442282b5343d5a95798933
s1_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798933_(X,"t*") .
d_worksFor_(X,@new(s1,X,d_worksFor,1..1),"t"):-choose(s1,X,d_worksFor,1) .
choose(s1,X,d_worksFor,1);choose(s1,X,d_worksFor,0):-s1_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s2_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
d_worksFor_(X,Y,"f"):-d_worksFor_(X,Y,"t*"),d_worksFor_(X,Y,"f") .
1 {s2_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for bnode_a662fb303d9b442282b5343d5a95798933
s3_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798933_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
d_worksFor_(X,@new(s4,X,d_worksFor,1..1),"t"):-choose(s4,X,d_worksFor,1) .
choose(s4,X,d_worksFor,1);choose(s4,X,d_worksFor,0):-s4_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s5_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798933_(X,"f") .
s7_(X,"t*"):-d_PersonShape_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798934_(X,"f"):-s7_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798934_(X,"t*"):-s7_(X,"f") .
bnode_a662fb303d9b442282b5343d5a95798935_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798934_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798935_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798934_(X,"f") .

% sh:minCount 1 for bnode_a662fb303d9b442282b5343d5a95798935
s8_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798935_(X,"t*") .
d_worksFor_(X,@new(s8,X,d_worksFor,1..1),"t"):-choose(s8,X,d_worksFor,1) .
choose(s8,X,d_worksFor,1);choose(s8,X,d_worksFor,0):-s8_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s9_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s8_(X,"t*") .


% universal for bnode_a662fb303d9b442282b5343d5a95798935
s10_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798935_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
d_worksFor_(X,@new(s11,X,d_worksFor,1..1),"t"):-choose(s11,X,d_worksFor,1) .
choose(s11,X,d_worksFor,1);choose(s11,X,d_worksFor,0):-s11_(X,"t*") .
(C-0) {d_worksFor_(X,Y,"f"):d_worksFor_(X,Y,"t*");s12_(Y,"f"):d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:d_worksFor_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):d_worksFor_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798935_(X,"f") .
s0_(X,"f");s7_(X,"f"):-d_PersonShape_(X,"f") .

% Interpretation Rules

d_worksFor_(X,Y,"t**"):-d_worksFor_(X,Y,"t*"),not d_worksFor_(X,Y,"f") .
bnode_a662fb303d9b442282b5343d5a95798933_st_(X,Y,"t**"):-d_worksFor_(X,Y,"t**"),bnode_a662fb303d9b442282b5343d5a95798933_st_(X,Y,"t*"),not bnode_a662fb303d9b442282b5343d5a95798933_st_(X,Y,"f") .
bnode_a662fb303d9b442282b5343d5a95798935_st_(X,Y,"t**"):-d_worksFor_(X,Y,"t**"),bnode_a662fb303d9b442282b5343d5a95798935_st_(X,Y,"t*"),not bnode_a662fb303d9b442282b5343d5a95798935_st_(X,Y,"f") .

% Program Constraints

:-d_worksFor_(X,Y,"t"),d_worksFor_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .

% Change Set Rules

add(d_worksFor(X,Y)):-d_worksFor_(X,Y,"t**"),not d_worksFor(X,Y) .
del(d_worksFor(X,Y)):-d_worksFor_(X,Y,"f"),d_worksFor(X,Y) .
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
