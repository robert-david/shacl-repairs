
% Graph Data

fibo_fnd_agr_ctr_Contract("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29") .
d_contractType("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_Written") .
d_forPurpose("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","data sharing between Tim and Alice") .
xsd_string("data sharing between Tim and Alice") .
d_hasContractCategory("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_categoryBusinessToBusiness") .
d_hasContractStatus("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","d_statusFulfilled") .
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
targetNode("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_ContractViolationShape) .

% Constants

const("d_ViolatedState") .
const("d_statusPending") .
const("d_statusFulfilled") .
const("d_statusViolated") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_ContractStatusShape_("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_ContractStatusShape) .
d_ContractViolationShape_("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_ContractViolationShape) .

% Annotation Rules

d_hasContractStatus_(X,Y,"t*"):-d_hasContractStatus(X,Y) .
d_hasContractStatus_(X,Y,"t*"):-d_hasContractStatus_(X,Y,"t") .
d_hasObligations_(X,Y,"t*"):-d_hasObligations(X,Y) .
d_hasObligations_(X,Y,"t*"):-d_hasObligations_(X,Y,"t") .
d_hasState_(X,Y,"t*"):-d_hasState(X,Y) .
d_hasState_(X,Y,"t*"):-d_hasState_(X,Y,"t") .
bnode_node1i7lkib3nx270_st_(X,X1,"t*"):-bnode_node1i7lkib3nx270_(X,_),d_hasObligations_(X,X0,"t*"),d_hasState_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_ContractStatusShape_(X,"t*") .
bnode_node1i7lkib3nx263_(X,"t*"):-s0_(X,"t*") .
bnode_node1i7lkib3nx263_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for bnode_node1i7lkib3nx263
s1_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
d_hasContractStatus_(X,@new(s1,X,d_hasContractStatus,1..1),"t"):-choose(s1,X,d_hasContractStatus,1) .
choose(s1,X,d_hasContractStatus,1);choose(s1,X,d_hasContractStatus,0):-s1_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s1_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s2_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s1_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s2_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s1_(X,"t*") .


% universal for bnode_node1i7lkib3nx263
s3_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
d_hasContractStatus_(X,@new(s4,X,d_hasContractStatus,1..1),"t"):-choose(s4,X,d_hasContractStatus,1) .
choose(s4,X,d_hasContractStatus,1);choose(s4,X,d_hasContractStatus,0):-s4_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s4_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s5_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s4_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s5_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_node1i7lkib3nx263_(X,"f") .
s7_(X,"t*"):-d_ContractStatusShape_(X,"t*") .
bnode_node1i7lkib3nx263_(X,"t*"):-s7_(X,"t*") .
bnode_node1i7lkib3nx263_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for bnode_node1i7lkib3nx263
s8_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
choose(s8,X,d_hasContractStatus,0):-s8_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s8_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s9_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s8_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
0 {s9_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s8_(X,"t*") .


% sh:maxCount 1 for bnode_node1i7lkib3nx263
s10_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
d_hasContractStatus_(X,@new(s11,X,d_hasContractStatus,1..1),"t"):-choose(s11,X,d_hasContractStatus,1) .
d_hasContractStatus_(X,@new(s11,X,d_hasContractStatus,1..2),"t"):-choose(s11,X,d_hasContractStatus,2) .
choose(s11,X,d_hasContractStatus,2);choose(s11,X,d_hasContractStatus,1);choose(s11,X,d_hasContractStatus,0):-s11_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s11_(X,"t*") .
(C-1) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s12_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-1):-s11_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>1 .
d_hasContractStatus_(X,Y,"f"):-s11_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
2 {s12_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s11_(X,"t*") .


s13_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
d_hasContractStatus_(X,@new(s14,X,d_hasContractStatus,1..1),"t"):-choose(s14,X,d_hasContractStatus,1) .
choose(s14,X,d_hasContractStatus,1);choose(s14,X,d_hasContractStatus,0):-s14_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s14_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s15_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s14_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s15_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s8_(X,"f");s10_(X,"f");s13_(X,"f"):-bnode_node1i7lkib3nx263_(X,"f") .
s17_(X,"t*"):-d_ContractStatusShape_(X,"t*") .
bnode_node1i7lkib3nx263_(X,"t*"):-s17_(X,"t*") .
bnode_node1i7lkib3nx263_(X,"f"):-s17_(X,"f") .

s18_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
choose(s18,X,d_hasContractStatus,0):-s18_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s18_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s19_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s18_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
0 {s19_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s18_(X,"t*") .

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

s27_(X,"t*"):-bnode_node1i7lkib3nx263_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
d_hasContractStatus_(X,@new(s28,X,d_hasContractStatus,1..1),"t"):-choose(s28,X,d_hasContractStatus,1) .
choose(s28,X,d_hasContractStatus,1);choose(s28,X,d_hasContractStatus,0):-s28_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s28_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s29_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s28_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s29_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s28_(X,"t*") .
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

s18_(X,"f");s27_(X,"f"):-bnode_node1i7lkib3nx263_(X,"f") .
s0_(X,"f");s7_(X,"f");s17_(X,"f"):-d_ContractStatusShape_(X,"f") .
s38_(X,"f"):-d_ContractViolationShape_(X,"f") .
bnode_node1i7lkib3nx269_(X,"f"):-s38_(X,"t*") .
bnode_node1i7lkib3nx269_(X,"t*"):-s38_(X,"f") .
bnode_node1i7lkib3nx270_(X,"t*"):-bnode_node1i7lkib3nx269_(X,"t*") .
bnode_node1i7lkib3nx270_(X,"f"):-bnode_node1i7lkib3nx269_(X,"f") .


s39_(X,"t*"):-bnode_node1i7lkib3nx270_(X,"t*") .
bnode_node1i7lkib3nx270_st_(X,@new(s39,X,bnode_node1i7lkib3nx270_st,1..1),"t"):-choose(s39,X,bnode_node1i7lkib3nx270_st,1) .
choose(s39,X,bnode_node1i7lkib3nx270_st,1);choose(s39,X,bnode_node1i7lkib3nx270_st,0):-s39_(X,"t*") .
0 {bnode_node1i7lkib3nx270_st_(X,Y,"t"):const(Y)} 4:-s39_(X,"t*") .
choose(bnode_node1i7lkib3nx270_st,X,d_hasObligations,1);choose(bnode_node1i7lkib3nx270_st,X,d_hasObligations,0):-bnode_node1i7lkib3nx270_st_(X,Y,"t") .
d_hasObligations_(X,@new(bnode_node1i7lkib3nx270_st,X,d_hasObligations,1),"t"):-choose(bnode_node1i7lkib3nx270_st,X,d_hasObligations,1),bnode_node1i7lkib3nx270_st_(X,Y,"t") .
0 {d_hasState_(X0,Y,"t")} 1:-d_hasObligations_(X,X0,"t**"),bnode_node1i7lkib3nx270_st_(X,Y,"t") .
0 {d_hasState_(X0,Y,"t"):const(Y)} 4:-d_hasObligations_(X,X0,"t**"),bnode_node1i7lkib3nx270_st_(X,Y,"t") .
(C-0) {bnode_node1i7lkib3nx270_st_(X,Y,"f"):bnode_node1i7lkib3nx270_st_(X,Y,"t*");s40_(Y,"f"):bnode_node1i7lkib3nx270_st_(X,Y,"t*"),not bnode_node1i7lkib3nx270_st_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:bnode_node1i7lkib3nx270_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasState_(X0,X1,"f"):-s39_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasState_(X0,X1,"t*"),bnode_node1i7lkib3nx270_st_(X,X1,"f") .
1 {s40_(Y,"t*"):bnode_node1i7lkib3nx270_st_(X,Y,"t**")} 4:-s39_(X,"t*") .


% sh:minCount 0 for bnode_node1i7lkib3nx270
s41_(X,"t*"):-bnode_node1i7lkib3nx270_(X,"t*") .
choose(s41,X,bnode_node1i7lkib3nx270_st,0):-s41_(X,"t*") .
0 {bnode_node1i7lkib3nx270_st_(X,Y,"t"):const(Y)} 4:-s41_(X,"t*") .
(C-0) {bnode_node1i7lkib3nx270_st_(X,Y,"f"):bnode_node1i7lkib3nx270_st_(X,Y,"t*");s42_(Y,"f"):bnode_node1i7lkib3nx270_st_(X,Y,"t*"),not bnode_node1i7lkib3nx270_st_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:bnode_node1i7lkib3nx270_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasState_(X0,X1,"f"):-s41_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasState_(X0,X1,"t*"),bnode_node1i7lkib3nx270_st_(X,X1,"f") .
0 {s42_(Y,"t*"):bnode_node1i7lkib3nx270_st_(X,Y,"t**")} 4:-s41_(X,"t*") .


% universal for bnode_node1i7lkib3nx270
s43_(X,"t*"):-bnode_node1i7lkib3nx270_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
bnode_node1i7lkib3nx270_st_(X,@new(s44,X,bnode_node1i7lkib3nx270_st,1..1),"t"):-choose(s44,X,bnode_node1i7lkib3nx270_st,1) .
choose(s44,X,bnode_node1i7lkib3nx270_st,1);choose(s44,X,bnode_node1i7lkib3nx270_st,0):-s44_(X,"t*") .
0 {bnode_node1i7lkib3nx270_st_(X,Y,"t"):const(Y)} 4:-s44_(X,"t*") .
(C-0) {bnode_node1i7lkib3nx270_st_(X,Y,"f"):bnode_node1i7lkib3nx270_st_(X,Y,"t*");s45_(Y,"f"):bnode_node1i7lkib3nx270_st_(X,Y,"t*"),not bnode_node1i7lkib3nx270_st_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:bnode_node1i7lkib3nx270_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasState_(X0,X1,"f"):-s44_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasState_(X0,X1,"t*"),bnode_node1i7lkib3nx270_st_(X,X1,"f") .
1 {s45_(Y,"t*"):bnode_node1i7lkib3nx270_st_(X,Y,"t**")} 4:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .


s39_(X,"f");s41_(X,"f");s43_(X,"f"):-bnode_node1i7lkib3nx270_(X,"f") .
s47_(X,"f"):-d_ContractViolationShape_(X,"f") .
bnode_node1i7lkib3nx275_(X,"t*"):-s47_(X,"t*") .
bnode_node1i7lkib3nx275_(X,"f"):-s47_(X,"f") .

s48_(X,"t*"):-bnode_node1i7lkib3nx275_(X,"t*") .
d_hasContractStatus_(X,@new(s48,X,d_hasContractStatus,1..1),"t"):-choose(s48,X,d_hasContractStatus,1) .
choose(s48,X,d_hasContractStatus,1);choose(s48,X,d_hasContractStatus,0):-s48_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s48_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s49_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s48_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s48_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s49_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s48_(X,"t*") .


% sh:minCount 0 for bnode_node1i7lkib3nx275
s50_(X,"t*"):-bnode_node1i7lkib3nx275_(X,"t*") .
choose(s50,X,d_hasContractStatus,0):-s50_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s50_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s51_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s50_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s50_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
0 {s51_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s50_(X,"t*") .


% universal for bnode_node1i7lkib3nx275
s52_(X,"t*"):-bnode_node1i7lkib3nx275_(X,"t*") .
s53_(X,"f"):-s52_(X,"t*") .
s53_(X,"t*"):-s52_(X,"f") .
d_hasContractStatus_(X,@new(s53,X,d_hasContractStatus,1..1),"t"):-choose(s53,X,d_hasContractStatus,1) .
choose(s53,X,d_hasContractStatus,1);choose(s53,X,d_hasContractStatus,0):-s53_(X,"t*") .
0 {d_hasContractStatus_(X,Y,"t"):const(Y)} 4:-s53_(X,"t*") .
(C-0) {d_hasContractStatus_(X,Y,"f"):d_hasContractStatus_(X,Y,"t*");s54_(Y,"f"):d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:d_hasContractStatus_(X,Y,"t*")}=C,C>0 .
d_hasContractStatus_(X,Y,"f"):-s53_(X,"f"),d_hasContractStatus_(X,Y,"t*"),d_hasContractStatus_(X,Y,"f") .
1 {s54_(Y,"t*"):d_hasContractStatus_(X,Y,"t**")} 4:-s53_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .


s48_(X,"f");s50_(X,"f");s52_(X,"f"):-bnode_node1i7lkib3nx275_(X,"f") .
s38_(X,"t*");s47_(X,"t*"):-d_ContractViolationShape_(X,"t*") .

% Interpretation Rules

d_hasContractStatus_(X,Y,"t**"):-d_hasContractStatus_(X,Y,"t*"),not d_hasContractStatus_(X,Y,"f") .
d_hasObligations_(X,Y,"t**"):-d_hasObligations_(X,Y,"t*"),not d_hasObligations_(X,Y,"f") .
d_hasState_(X,Y,"t**"):-d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f") .
bnode_node1i7lkib3nx270_st_(X,X1,"t**"):-bnode_node1i7lkib3nx270_st_(X,X1,"t*"),not bnode_node1i7lkib3nx270_st_(X,X1,"f"),d_hasObligations_(X,X0,"t**"),d_hasState_(X0,X1,"t**") .

% Program Constraints

:-d_hasContractStatus_(X,Y,"t"),d_hasContractStatus_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-s9_(X,"f") .
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
:-d_hasObligations_(X,Y,"t"),d_hasObligations_(X,Y,"f") .
:-d_hasState_(X,Y,"t"),d_hasState_(X,Y,"f") .
:-bnode_node1i7lkib3nx270_st_(X,Y,"t"),bnode_node1i7lkib3nx270_st_(X,Y,"f") .
:-s40_(X,"t*"),X!="d_ViolatedState" .
:-s40_(X,"f"),X="d_ViolatedState" .
:-s42_(X,"f") .
:-s46_(X,"f") .
:-s49_(X,"t*"),X!="d_statusViolated" .
:-s49_(X,"f"),X="d_statusViolated" .
:-s51_(X,"f") .
:-s55_(X,"f") .

% Change Set Rules

add(d_hasContractStatus(X,Y)):-d_hasContractStatus_(X,Y,"t**"),not d_hasContractStatus(X,Y) .
del(d_hasContractStatus(X,Y)):-d_hasContractStatus_(X,Y,"f"),d_hasContractStatus(X,Y) .
#minimize { 1@1,X,Y: d_hasContractStatus_(X,Y,"t"), const(Y) } .
add(d_hasObligations(X,Y)):-d_hasObligations_(X,Y,"t**"),not d_hasObligations(X,Y) .
del(d_hasObligations(X,Y)):-d_hasObligations_(X,Y,"f"),d_hasObligations(X,Y) .
add(d_hasState(X,Y)):-d_hasState_(X,Y,"t**"),not d_hasState(X,Y) .
del(d_hasState(X,Y)):-d_hasState_(X,Y,"f"),d_hasState(X,Y) .
#minimize { 1@1,X,Y: bnode_node1i7lkib3nx270_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: d_hasState_(X,Y,"t"), const(Y) } .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-del(d_hasState(X,"d_ViolatedState")) .
:-del(d_hasObligations(X,Y)) .

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
