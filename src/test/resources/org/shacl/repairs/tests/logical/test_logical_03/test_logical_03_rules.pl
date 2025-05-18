
% Graph Data

d_name("d_ann","Ann") .
xsd_string("Ann") .
d_firstName("d_ann","Ann") .
d_lastName("d_ann","Doe") .
xsd_string("Doe") .
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

d_name_(X,Y,"t*"):-d_name(X,Y) .
d_name_(X,Y,"t*"):-d_name_(X,Y,"t") .
bnode_7cd306bd432d49a083a9e154f0809f6d44_st_(X,Y,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,_),d_name_(X,Y,"t*") .
d_lastName_(X,Y,"t*"):-d_lastName(X,Y) .
d_lastName_(X,Y,"t*"):-d_lastName_(X,Y,"t") .
bnode_7cd306bd432d49a083a9e154f0809f6d48_st_(X,Y,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,_),d_lastName_(X,Y,"t*") .
d_firstName_(X,Y,"t*"):-d_firstName(X,Y) .
d_firstName_(X,Y,"t*"):-d_firstName_(X,Y,"t") .
bnode_7cd306bd432d49a083a9e154f0809f6d47_st_(X,Y,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,_),d_firstName_(X,Y,"t*") .

% Repair Rules

s0_(X,"f"):-d_PersonShape_(X,"f") .
s1_(X,"t*"):-s0_(X,"t*") .
bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"t*"):-s1_(X,"t*") .
bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"f"):-s1_(X,"f") .

% sh:minCount 1 for bnode_7cd306bd432d49a083a9e154f0809f6d44
s2_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"t*") .
d_name_(X,@new(s2,X,d_name,1..1),"t"):-choose(s2,X,d_name,1) .
choose(s2,X,d_name,1);choose(s2,X,d_name,0):-s2_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s3_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
d_name_(X,Y,"f"):-d_name_(X,Y,"t*"),d_name_(X,Y,"f") .
1 {s3_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s2_(X,"t*") .


% universal for bnode_7cd306bd432d49a083a9e154f0809f6d44
s4_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
d_name_(X,@new(s5,X,d_name,1..1),"t"):-choose(s5,X,d_name,1) .
choose(s5,X,d_name,1);choose(s5,X,d_name,0):-s5_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s6_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s2_(X,"f");s4_(X,"f"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"f") .
s8_(X,"t*"):-s0_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
s10_(X,"f"):-s9_(X,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"t*"):-s10_(X,"t*") .

% sh:minCount 1 for bnode_7cd306bd432d49a083a9e154f0809f6d48
s11_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"t*") .
d_lastName_(X,@new(s11,X,d_lastName,1..1),"t"):-choose(s11,X,d_lastName,1) .
choose(s11,X,d_lastName,1);choose(s11,X,d_lastName,0):-s11_(X,"t*") .
(C-0) {d_lastName_(X,Y,"f"):d_lastName_(X,Y,"t*");s12_(Y,"f"):d_lastName_(X,Y,"t*"),not d_lastName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:d_lastName_(X,Y,"t*")}=C,C>0 .
d_lastName_(X,Y,"f"):-d_lastName_(X,Y,"t*"),d_lastName_(X,Y,"f") .
1 {s12_(Y,"t*"):d_lastName_(X,Y,"t**")} 1:-s11_(X,"t*") .


% universal for bnode_7cd306bd432d49a083a9e154f0809f6d48
s13_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
d_lastName_(X,@new(s14,X,d_lastName,1..1),"t"):-choose(s14,X,d_lastName,1) .
choose(s14,X,d_lastName,1);choose(s14,X,d_lastName,0):-s14_(X,"t*") .
(C-0) {d_lastName_(X,Y,"f"):d_lastName_(X,Y,"t*");s15_(Y,"f"):d_lastName_(X,Y,"t*"),not d_lastName_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:d_lastName_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):d_lastName_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s11_(X,"f");s13_(X,"f"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"t*"):-s10_(X,"t*") .

% sh:minCount 1 for bnode_7cd306bd432d49a083a9e154f0809f6d47
s17_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"t*") .
d_firstName_(X,@new(s17,X,d_firstName,1..1),"t"):-choose(s17,X,d_firstName,1) .
choose(s17,X,d_firstName,1);choose(s17,X,d_firstName,0):-s17_(X,"t*") .
(C-0) {d_firstName_(X,Y,"f"):d_firstName_(X,Y,"t*");s18_(Y,"f"):d_firstName_(X,Y,"t*"),not d_firstName_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:d_firstName_(X,Y,"t*")}=C,C>0 .
d_firstName_(X,Y,"f"):-d_firstName_(X,Y,"t*"),d_firstName_(X,Y,"f") .
1 {s18_(Y,"t*"):d_firstName_(X,Y,"t**")} 1:-s17_(X,"t*") .


% universal for bnode_7cd306bd432d49a083a9e154f0809f6d47
s19_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
d_firstName_(X,@new(s20,X,d_firstName,1..1),"t"):-choose(s20,X,d_firstName,1) .
choose(s20,X,d_firstName,1);choose(s20,X,d_firstName,0):-s20_(X,"t*") .
(C-0) {d_firstName_(X,Y,"f"):d_firstName_(X,Y,"t*");s21_(Y,"f"):d_firstName_(X,Y,"t*"),not d_firstName_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:d_firstName_(X,Y,"t*")}=C,C>0 .
1 {s21_(Y,"t*"):d_firstName_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s17_(X,"f");s19_(X,"f"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"f");bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"f"):-s10_(X,"f") .
s10_(X,"t*"):-s9_(X,"t*") .
s1_(X,"f");s8_(X,"f"):-s0_(X,"f") .
s23_(X,"f"):-d_PersonShape_(X,"f") .
s24_(X,"t*"):-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
s26_(X,"f"):-s25_(X,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"t*"):-s26_(X,"t*") .
bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"f"):-s26_(X,"f") .

s27_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"t*") .
d_name_(X,@new(s27,X,d_name,1..1),"t"):-choose(s27,X,d_name,1) .
choose(s27,X,d_name,1);choose(s27,X,d_name,0):-s27_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s28_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
1 {s28_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s27_(X,"t*") .


s29_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
d_name_(X,@new(s30,X,d_name,1..1),"t"):-choose(s30,X,d_name,1) .
choose(s30,X,d_name,1);choose(s30,X,d_name,0):-s30_(X,"t*") .
(C-0) {d_name_(X,Y,"f"):d_name_(X,Y,"t*");s31_(Y,"f"):d_name_(X,Y,"t*"),not d_name_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:d_name_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):d_name_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s27_(X,"f");s29_(X,"f"):-bnode_7cd306bd432d49a083a9e154f0809f6d44_(X,"f") .
s26_(X,"t*"):-s25_(X,"t*") .
s33_(X,"t*"):-s23_(X,"t*") .
bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"t*"):-s33_(X,"t*") .

s34_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"t*") .
d_lastName_(X,@new(s34,X,d_lastName,1..1),"t"):-choose(s34,X,d_lastName,1) .
choose(s34,X,d_lastName,1);choose(s34,X,d_lastName,0):-s34_(X,"t*") .
(C-0) {d_lastName_(X,Y,"f"):d_lastName_(X,Y,"t*");s35_(Y,"f"):d_lastName_(X,Y,"t*"),not d_lastName_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:d_lastName_(X,Y,"t*")}=C,C>0 .
1 {s35_(Y,"t*"):d_lastName_(X,Y,"t**")} 1:-s34_(X,"t*") .


s36_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
d_lastName_(X,@new(s37,X,d_lastName,1..1),"t"):-choose(s37,X,d_lastName,1) .
choose(s37,X,d_lastName,1);choose(s37,X,d_lastName,0):-s37_(X,"t*") .
(C-0) {d_lastName_(X,Y,"f"):d_lastName_(X,Y,"t*");s38_(Y,"f"):d_lastName_(X,Y,"t*"),not d_lastName_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:d_lastName_(X,Y,"t*")}=C,C>0 .
1 {s38_(Y,"t*"):d_lastName_(X,Y,"t**")} 1:-s37_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .


s34_(X,"f");s36_(X,"f"):-bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"t*"):-s33_(X,"t*") .

s40_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"t*") .
d_firstName_(X,@new(s40,X,d_firstName,1..1),"t"):-choose(s40,X,d_firstName,1) .
choose(s40,X,d_firstName,1);choose(s40,X,d_firstName,0):-s40_(X,"t*") .
(C-0) {d_firstName_(X,Y,"f"):d_firstName_(X,Y,"t*");s41_(Y,"f"):d_firstName_(X,Y,"t*"),not d_firstName_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:d_firstName_(X,Y,"t*")}=C,C>0 .
1 {s41_(Y,"t*"):d_firstName_(X,Y,"t**")} 1:-s40_(X,"t*") .


s42_(X,"t*"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"t*") .
s43_(X,"f"):-s42_(X,"t*") .
s43_(X,"t*"):-s42_(X,"f") .
d_firstName_(X,@new(s43,X,d_firstName,1..1),"t"):-choose(s43,X,d_firstName,1) .
choose(s43,X,d_firstName,1);choose(s43,X,d_firstName,0):-s43_(X,"t*") .
(C-0) {d_firstName_(X,Y,"f"):d_firstName_(X,Y,"t*");s44_(Y,"f"):d_firstName_(X,Y,"t*"),not d_firstName_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:d_firstName_(X,Y,"t*")}=C,C>0 .
1 {s44_(Y,"t*"):d_firstName_(X,Y,"t**")} 1:-s43_(X,"t*") .
s45_(X,"f"):-s44_(X,"t*") .
s45_(X,"t*"):-s44_(X,"f") .


s40_(X,"f");s42_(X,"f"):-bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d48_(X,"f");bnode_7cd306bd432d49a083a9e154f0809f6d47_(X,"f"):-s33_(X,"f") .
s24_(X,"f");s33_(X,"f"):-s23_(X,"f") .
s0_(X,"t*");s23_(X,"t*"):-d_PersonShape_(X,"t*") .

% Interpretation Rules

d_name_(X,Y,"t**"):-d_name_(X,Y,"t*"),not d_name_(X,Y,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d44_st_(X,Y,"t**"):-d_name_(X,Y,"t**"),bnode_7cd306bd432d49a083a9e154f0809f6d44_st_(X,Y,"t*"),not bnode_7cd306bd432d49a083a9e154f0809f6d44_st_(X,Y,"f") .
d_lastName_(X,Y,"t**"):-d_lastName_(X,Y,"t*"),not d_lastName_(X,Y,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d48_st_(X,Y,"t**"):-d_lastName_(X,Y,"t**"),bnode_7cd306bd432d49a083a9e154f0809f6d48_st_(X,Y,"t*"),not bnode_7cd306bd432d49a083a9e154f0809f6d48_st_(X,Y,"f") .
d_firstName_(X,Y,"t**"):-d_firstName_(X,Y,"t*"),not d_firstName_(X,Y,"f") .
bnode_7cd306bd432d49a083a9e154f0809f6d47_st_(X,Y,"t**"):-d_firstName_(X,Y,"t**"),bnode_7cd306bd432d49a083a9e154f0809f6d47_st_(X,Y,"t*"),not bnode_7cd306bd432d49a083a9e154f0809f6d47_st_(X,Y,"f") .

% Program Constraints

:-d_name_(X,Y,"t"),d_name_(X,Y,"f") .
:-s3_(X,"f") .
:-s7_(X,"f") .
:-d_lastName_(X,Y,"t"),d_lastName_(X,Y,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-d_firstName_(X,Y,"t"),d_firstName_(X,Y,"f") .
:-s18_(X,"f") .
:-s22_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-s35_(X,"f") .
:-s39_(X,"f") .
:-s41_(X,"f") .
:-s45_(X,"f") .

% Change Set Rules

add(d_name(X,Y)):-d_name_(X,Y,"t**"),not d_name(X,Y) .
del(d_name(X,Y)):-d_name_(X,Y,"f"),d_name(X,Y) .
add(d_lastName(X,Y)):-d_lastName_(X,Y,"t**"),not d_lastName(X,Y) .
del(d_lastName(X,Y)):-d_lastName_(X,Y,"f"),d_lastName(X,Y) .
add(d_firstName(X,Y)):-d_firstName_(X,Y,"t**"),not d_firstName(X,Y) .
del(d_firstName(X,Y)):-d_firstName_(X,Y,"f"),d_firstName(X,Y) .
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
