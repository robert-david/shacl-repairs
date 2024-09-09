
% Graph Data

fibo_fnd_agr_ctr_Contract("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29") .
d_contractType("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_Written") .
d_forPurpose("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","data sharing between Tim and Alice") .
xsd_string("data sharing between Tim and Alice") .
d_hasContractCategory("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_categoryBusinessToBusiness") .
d_hasContractStatus("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_statusPending") .
d_hasContractStatus("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_statusFulfilled") .
d_hasContractStatus("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_statusViolated") .
d_hasEndDate("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
xsd_dateTime("2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasEffectiveDate("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
fibo_fnd_agr_ctr_hasExecutionDate("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","2022_09_07 17:14:32.687000+00:00") .
d_hasObligations("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
d_Obligation("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29") .
d_contractorID("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","_c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
xsd_string("_c_729c70aa_2ed1_11ed_be7d_3f8589292a29") .
d_fulfillmentDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
xsd_dateTime("2022_09_07") .
d_hasEndDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2023_09_07") .
xsd_dateTime("2023_09_07") .
d_hasState("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","d_ViolatedState") .
d_hasState("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","d_PendingState") .
d_hasState("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","d_FulfilledState") .
dct_description("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
xsd_string("HaYRkfbFhvn5eerbqV6lnDckfnBQIRnACZDsYloyjteATU1bsOxH0MaJuI9K+fid/yoMOmCjBvdgQDQ2t2P5wg==") .
fibo_fnd_agr_ctr_hasExecutionDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2022_09_07") .
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

targetNode("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_ContractStatusShape) .

% Constants

const("d_statusPending") .
const("d_statusFulfilled") .
const("d_statusViolated") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_ContractStatusShape_("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_ContractStatusShape) .

% Annotation Rules

d_hasContractStatus_(X,Y,"t*"):-d_hasContractStatus(X,Y) .
d_hasContractStatus_(X,Y,"t*"):-d_hasContractStatus_(X,Y,"t") .

% Repair Rules

s0_(X,"t*"):-d_ContractStatusShape_(X,"t*") .
bnode_node1i7lkib3nx11_(X,"t*"):-s0_(X,"t*") .
bnode_node1i7lkib3nx11_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for bnode_node1i7lkib3nx11
s1_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
d_hasContractStatus_(X,@new(s1,X,d_hasContractStatus,1..1),"t"):-choose(s1,X,d_hasContractStatus,1) .
choose(s1,X,d_hasContractStatus,1);choose(s1,X,d_hasContractStatus,0):-s1_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s1_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s2_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s1_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s2_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s1_(X,"t*") .


% universal for bnode_node1i7lkib3nx11
s3_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
d_hasContractStatus_(X,@new(s4,X,d_hasContractStatus,1..1),"t"):-choose(s4,X,d_hasContractStatus,1) .
choose(s4,X,d_hasContractStatus,1);choose(s4,X,d_hasContractStatus,0):-s4_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s4_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s5_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s4_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s5_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_node1i7lkib3nx11_(X,"f") .
s7_(X,"t*"):-d_ContractStatusShape_(X,"t*") .
bnode_node1i7lkib3nx11_(X,"t*"):-s7_(X,"t*") .
bnode_node1i7lkib3nx11_(X,"f"):-s7_(X,"f") .

% sh:maxCount 1 for bnode_node1i7lkib3nx11
s8_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
s9_(X,"f"):-s8_(X,"t*") .
s9_(X,"t*"):-s8_(X,"f") .
d_hasContractStatus_(X,@new(s9,X,d_hasContractStatus,1..1),"t"):-choose(s9,X,d_hasContractStatus,1) .
d_hasContractStatus_(X,@new(s9,X,d_hasContractStatus,1..2),"t"):-choose(s9,X,d_hasContractStatus,2) .
choose(s9,X,d_hasContractStatus,2);choose(s9,X,d_hasContractStatus,1);choose(s9,X,d_hasContractStatus,0):-s9_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s9_(X,"t*") .
(C-1) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s10_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-1):-s9_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>1 .
d_hasContractStatus_(X,Y,"f"):-s9_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
2 {s10_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s9_(X,"t*") .


% sh:minCount 0 for bnode_node1i7lkib3nx11
s11_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
choose(s11,X,d_hasContractStatus,0):-s11_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s11_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s12_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s11_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
0 {s12_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s11_(X,"t*") .


s13_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
d_hasContractStatus_(X,@new(s14,X,d_hasContractStatus,1..1),"t"):-choose(s14,X,d_hasContractStatus,1) .
choose(s14,X,d_hasContractStatus,1);choose(s14,X,d_hasContractStatus,0):-s14_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s14_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s15_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s14_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s15_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s11_(X,"f");s13_(X,"f"):-bnode_node1i7lkib3nx11_(X,"f") .
s17_(X,"t*"):-d_ContractStatusShape_(X,"t*") .
bnode_node1i7lkib3nx11_(X,"t*"):-s17_(X,"t*") .
bnode_node1i7lkib3nx11_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
choose(s18,X,d_hasContractStatus,0):-s18_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s18_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s19_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s18_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
0 {s19_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s18_(X,"t*") .

s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
s21_(X,"t*"):-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .
s23_(X,"t*"):-s20_(X,"t*") .
s24_(X,"f"):-s23_(X,"t*") .
s24_(X,"t*"):-s23_(X,"f") .
s25_(X,"t*"):-s20_(X,"t*") .
s26_(X,"f"):-s25_(X,"t*") .
s26_(X,"t*"):-s25_(X,"f") .
s21_(X,"f");s23_(X,"f");s25_(X,"f"):-s20_(X,"f") .

s27_(X,"t*"):-bnode_node1i7lkib3nx11_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
d_hasContractStatus_(X,@new(s28,X,d_hasContractStatus,1..1),"t"):-choose(s28,X,d_hasContractStatus,1) .
choose(s28,X,d_hasContractStatus,1);choose(s28,X,d_hasContractStatus,0):-s28_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 3:-s28_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s29_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s28_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s29_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 3:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .

s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
s32_(X,"t*"):-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .
s34_(X,"t*"):-s31_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .
s36_(X,"t*"):-s31_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
s32_(X,"f");s34_(X,"f");s36_(X,"f"):-s31_(X,"f") .

s18_(X,"f");s27_(X,"f"):-bnode_node1i7lkib3nx11_(X,"f") .
s0_(X,"f");s7_(X,"f");s17_(X,"f"):-d_ContractStatusShape_(X,"f") .

% Interpretation Rules

d_hasContractStatus_(X,Y,"t**"):-d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f") .

% Program Constraints

:-d_hasContractStatus_(X,Y,"t"),d_hasContractStatus_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s10_(X,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-s22_(X,"t*"),X!="d_statusPending" .
:-s22_(X,"f"),X="d_statusPending" .
:-s24_(X,"t*"),X!="d_statusFulfilled" .
:-s24_(X,"f"),X="d_statusFulfilled" .
:-s26_(X,"t*"),X!="d_statusViolated" .
:-s26_(X,"f"),X="d_statusViolated" .
:-s33_(X,"t*"),X!="d_statusPending" .
:-s33_(X,"f"),X="d_statusPending" .
:-s35_(X,"t*"),X!="d_statusFulfilled" .
:-s35_(X,"f"),X="d_statusFulfilled" .
:-s37_(X,"t*"),X!="d_statusViolated" .
:-s37_(X,"f"),X="d_statusViolated" .

% Change Set Rules

add(d_hasContractStatus(X,Y)):-d_hasContractStatus_(X,Y,"t**"),not d_hasContractStatus(X,Y) .
del(d_hasContractStatus(X,Y)):-d_hasContractStatus_(X,Y,"f"),d_hasContractStatus(X,Y) .
#minimize { 1@1,X,Y: d_hasContractStatus_(X,Y,"t"), const(Y) } .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

#minimize { 1@3,X: del(d_hasContractStatus(X,"d_statusPending")) } .
#minimize { 2@3,X: del(d_hasContractStatus(X,"d_statusFulfilled")) } .
#minimize { 3@3,X: del(d_hasContractStatus(X,"d_statusViolated")) } .
#maximize { 1@3,X: add(d_hasContractStatus(X,"d_statusPending")) } .

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
