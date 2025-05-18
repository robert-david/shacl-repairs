
% Graph Data

d_eats("d_ann","d_steak") .
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

targetNode("d_ann",d_Vegetarian) .
targetNode("d_steak",d_Meat) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_Vegetarian_("d_ann","t*"):-actualTarget("d_ann",d_Vegetarian) .
d_Meat_("d_steak","t*"):-actualTarget("d_steak",d_Meat) .

% Annotation Rules

d_consistsOf_(X,Y,"t*"):-d_consistsOf(X,Y) .
d_consistsOf_(X,Y,"t*"):-d_consistsOf_(X,Y,"t") .
bnode_a662fb303d9b442282b5343d5a95798955_st_(X,Y,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,_),d_consistsOf_(X,Y,"t*") .
d_Plant_(X,"t*"):-d_Plant(X) .
d_Plant_(X,"t*"):-d_Plant_(X,"t") .
d_eats_(X,Y,"t*"):-d_eats(X,Y) .
d_eats_(X,Y,"t*"):-d_eats_(X,Y,"t") .
bnode_a662fb303d9b442282b5343d5a95798953_st_(X,Y,"t*"):-bnode_a662fb303d9b442282b5343d5a95798953_(X,_),d_eats_(X,Y,"t*") .

% Repair Rules

bnode_a662fb303d9b442282b5343d5a95798954_(X,"f"):-d_Meat_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798954_(X,"t*"):-d_Meat_(X,"f") .
bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798954_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798955_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798954_(X,"f") .

% sh:minCount 1 for bnode_a662fb303d9b442282b5343d5a95798955
s0_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*") .
d_consistsOf_(X,@new(s0,X,d_consistsOf,1..1),"t"):-choose(s0,X,d_consistsOf,1) .
choose(s0,X,d_consistsOf,1);choose(s0,X,d_consistsOf,0):-s0_(X,"t*") .
(C-0) {d_consistsOf_(X,Y,"f"):d_consistsOf_(X,Y,"t*");s1_(Y,"f"):d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:d_consistsOf_(X,Y,"t*")}=C,C>0 .
d_consistsOf_(X,Y,"f"):-d_consistsOf_(X,Y,"t*"),d_consistsOf_(X,Y,"f") .
1 {s1_(Y,"t*"):d_consistsOf_(X,Y,"t**")} 1:-s0_(X,"t*") .

d_Plant_(X,"t"):-s1_(X,"t*") .
d_Plant_(X,"f"):-s1_(X,"f") .

% universal for bnode_a662fb303d9b442282b5343d5a95798955
s2_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
d_consistsOf_(X,@new(s3,X,d_consistsOf,1..1),"t"):-choose(s3,X,d_consistsOf,1) .
choose(s3,X,d_consistsOf,1);choose(s3,X,d_consistsOf,0):-s3_(X,"t*") .
(C-0) {d_consistsOf_(X,Y,"f"):d_consistsOf_(X,Y,"t*");s4_(Y,"f"):d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:d_consistsOf_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):d_consistsOf_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

d_Plant_(X,"t"):-s5_(X,"t*") .
d_Plant_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"f") .
bnode_a662fb303d9b442282b5343d5a95798952_(X,"f"):-d_Vegetarian_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798952_(X,"t*"):-d_Vegetarian_(X,"f") .
bnode_a662fb303d9b442282b5343d5a95798953_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798952_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798953_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798952_(X,"f") .

% sh:minCount 1 for bnode_a662fb303d9b442282b5343d5a95798953
s6_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798953_(X,"t*") .
d_eats_(X,@new(s6,X,d_eats,1..1),"t"):-choose(s6,X,d_eats,1) .
choose(s6,X,d_eats,1);choose(s6,X,d_eats,0):-s6_(X,"t*") .
(C-0) {d_eats_(X,Y,"f"):d_eats_(X,Y,"t*");s7_(Y,"f"):d_eats_(X,Y,"t*"),not d_eats_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:d_eats_(X,Y,"t*")}=C,C>0 .
d_eats_(X,Y,"f"):-d_eats_(X,Y,"t*"),d_eats_(X,Y,"f") .
1 {s7_(Y,"t*"):d_eats_(X,Y,"t**")} 1:-s6_(X,"t*") .

bnode_a662fb303d9b442282b5343d5a95798954_(X,"f"):-s7_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798954_(X,"t*"):-s7_(X,"f") .

s8_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*") .
d_consistsOf_(X,@new(s8,X,d_consistsOf,1..1),"t"):-choose(s8,X,d_consistsOf,1) .
choose(s8,X,d_consistsOf,1);choose(s8,X,d_consistsOf,0):-s8_(X,"t*") .
(C-0) {d_consistsOf_(X,Y,"f"):d_consistsOf_(X,Y,"t*");s9_(Y,"f"):d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:d_consistsOf_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):d_consistsOf_(X,Y,"t**")} 1:-s8_(X,"t*") .

d_Plant_(X,"t"):-s9_(X,"t*") .
d_Plant_(X,"f"):-s9_(X,"f") .

s10_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
d_consistsOf_(X,@new(s11,X,d_consistsOf,1..1),"t"):-choose(s11,X,d_consistsOf,1) .
choose(s11,X,d_consistsOf,1);choose(s11,X,d_consistsOf,0):-s11_(X,"t*") .
(C-0) {d_consistsOf_(X,Y,"f"):d_consistsOf_(X,Y,"t*");s12_(Y,"f"):d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:d_consistsOf_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):d_consistsOf_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

d_Plant_(X,"t"):-s13_(X,"t*") .
d_Plant_(X,"f"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"f") .

% universal for bnode_a662fb303d9b442282b5343d5a95798953
s14_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798953_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .
d_eats_(X,@new(s15,X,d_eats,1..1),"t"):-choose(s15,X,d_eats,1) .
choose(s15,X,d_eats,1);choose(s15,X,d_eats,0):-s15_(X,"t*") .
(C-0) {d_eats_(X,Y,"f"):d_eats_(X,Y,"t*");s16_(Y,"f"):d_eats_(X,Y,"t*"),not d_eats_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:d_eats_(X,Y,"t*")}=C,C>0 .
1 {s16_(Y,"t*"):d_eats_(X,Y,"t**")} 1:-s15_(X,"t*") .
s17_(X,"f"):-s16_(X,"t*") .
s17_(X,"t*"):-s16_(X,"f") .

bnode_a662fb303d9b442282b5343d5a95798954_(X,"f"):-s17_(X,"t*") .
bnode_a662fb303d9b442282b5343d5a95798954_(X,"t*"):-s17_(X,"f") .

s18_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*") .
d_consistsOf_(X,@new(s18,X,d_consistsOf,1..1),"t"):-choose(s18,X,d_consistsOf,1) .
choose(s18,X,d_consistsOf,1);choose(s18,X,d_consistsOf,0):-s18_(X,"t*") .
(C-0) {d_consistsOf_(X,Y,"f"):d_consistsOf_(X,Y,"t*");s19_(Y,"f"):d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:d_consistsOf_(X,Y,"t*")}=C,C>0 .
1 {s19_(Y,"t*"):d_consistsOf_(X,Y,"t**")} 1:-s18_(X,"t*") .

d_Plant_(X,"t"):-s19_(X,"t*") .
d_Plant_(X,"f"):-s19_(X,"f") .

s20_(X,"t*"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
d_consistsOf_(X,@new(s21,X,d_consistsOf,1..1),"t"):-choose(s21,X,d_consistsOf,1) .
choose(s21,X,d_consistsOf,1);choose(s21,X,d_consistsOf,0):-s21_(X,"t*") .
(C-0) {d_consistsOf_(X,Y,"f"):d_consistsOf_(X,Y,"t*");s22_(Y,"f"):d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:d_consistsOf_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):d_consistsOf_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .

d_Plant_(X,"t"):-s23_(X,"t*") .
d_Plant_(X,"f"):-s23_(X,"f") .

s18_(X,"f");s20_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798955_(X,"f") .

s6_(X,"f");s14_(X,"f"):-bnode_a662fb303d9b442282b5343d5a95798953_(X,"f") .

% Interpretation Rules

d_consistsOf_(X,Y,"t**"):-d_consistsOf_(X,Y,"t*"),not d_consistsOf_(X,Y,"f") .
bnode_a662fb303d9b442282b5343d5a95798955_st_(X,Y,"t**"):-d_consistsOf_(X,Y,"t**"),bnode_a662fb303d9b442282b5343d5a95798955_st_(X,Y,"t*"),not bnode_a662fb303d9b442282b5343d5a95798955_st_(X,Y,"f") .
d_Plant_(X,"t**"):-d_Plant_(X,"t*"),not d_Plant_(X,"f") .
d_eats_(X,Y,"t**"):-d_eats_(X,Y,"t*"),not d_eats_(X,Y,"f") .
bnode_a662fb303d9b442282b5343d5a95798953_st_(X,Y,"t**"):-d_eats_(X,Y,"t**"),bnode_a662fb303d9b442282b5343d5a95798953_st_(X,Y,"t*"),not bnode_a662fb303d9b442282b5343d5a95798953_st_(X,Y,"f") .

% Program Constraints

:-d_consistsOf_(X,Y,"t"),d_consistsOf_(X,Y,"f") .
:-d_Plant_(X,"t"),d_Plant_(X,"f") .
:-d_eats_(X,Y,"t"),d_eats_(X,Y,"f") .

% Change Set Rules

add(d_consistsOf(X,Y)):-d_consistsOf_(X,Y,"t**"),not d_consistsOf(X,Y) .
del(d_consistsOf(X,Y)):-d_consistsOf_(X,Y,"f"),d_consistsOf(X,Y) .
add(d_Plant(X)):-d_Plant_(X,"t**"),not d_Plant(X) .
del(d_Plant(X)):-d_Plant_(X,"f"),d_Plant(X) .
add(d_eats(X,Y)):-d_eats_(X,Y,"t**"),not d_eats(X,Y) .
del(d_eats(X,Y)):-d_eats_(X,Y,"f"),d_eats(X,Y) .
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
