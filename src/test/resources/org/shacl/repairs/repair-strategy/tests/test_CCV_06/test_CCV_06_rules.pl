
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
d_hasEndDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2020_09_07") .
xsd_dateTime("2020_09_07") .
d_hasEndDate("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","2021_09_07") .
xsd_dateTime("2021_09_07") .
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

targetNode("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",d_ObligationShape) .
targetNode("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_EndDateConsistencyShape) .

% Constants

const("d_PendingState") .
const("d_ViolatedState") .
const("d_CreatedState") .
const("d_FulfilledState") .

% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_ObligationShape_("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_ob_9e2bb1ce_2ed4_11ed_be7d_3f8589292a29",d_ObligationShape) .
d_EndDateConsistencyShape_("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29","t*"):-actualTarget("d_contb2b_bfcff2dc_2ed3_11ed_be7d_3f8589292a29",d_EndDateConsistencyShape) .

% Annotation Rules

d_hasObligations_(X,Y,"t*"):-d_hasObligations(X,Y) .
d_hasObligations_(X,Y,"t*"):-d_hasObligations_(X,Y,"t") .
d_hasEndDate_(X,Y,"t*"):-d_hasEndDate(X,Y) .
d_hasEndDate_(X,Y,"t*"):-d_hasEndDate_(X,Y,"t") .
bnode_node1i7lkib3nx218_st_(X,X1,"t*"):-bnode_node1i7lkib3nx218_(X,_),d_hasObligations_(X,X0,"t*"),d_hasEndDate_(X0,X1,"t*") .
d_hasState_(X,Y,"t*"):-d_hasState(X,Y) .
d_hasState_(X,Y,"t*"):-d_hasState_(X,Y,"t") .

% Repair Rules

bnode_node1i7lkib3nx218_(X,"t*"):-d_EndDateConsistencyShape_(X,"t*") .
bnode_node1i7lkib3nx218_(X,"f"):-d_EndDateConsistencyShape_(X,"f") .


bnode_node1i7lkib3nx218_st_(X,Y,"f");d_hasEndDate_(X,Z,"f"):-bnode_node1i7lkib3nx218_(X,"t*"),bnode_node1i7lkib3nx218_st_(X,Y,"t*"),d_hasEndDate_(X,Z,"t*"),Y>Z .
bnode_node1i7lkib3nx218_st_(X,Y,"f");d_hasEndDate_(X,Z,"f"):-bnode_node1i7lkib3nx218_(X,"f"),bnode_node1i7lkib3nx218_st_(X,Y,"t*"),d_hasEndDate_(X,Z,"t*"),Y<=Z .

% sh:minCount 0 for bnode_node1i7lkib3nx218
s0_(X,"t*"):-bnode_node1i7lkib3nx218_(X,"t*") .
choose(s0,X,bnode_node1i7lkib3nx218_st,0):-s0_(X,"t*") .
0 {bnode_node1i7lkib3nx218_st_(X,Y,"t"):const(Y)} 4:-s0_(X,"t*") .
choose(bnode_node1i7lkib3nx218_st,X,d_hasObligations,1);choose(bnode_node1i7lkib3nx218_st,X,d_hasObligations,0):-bnode_node1i7lkib3nx218_st_(X,Y,"t") .
d_hasObligations_(X,@new(bnode_node1i7lkib3nx218_st,X,d_hasObligations,1),"t"):-choose(bnode_node1i7lkib3nx218_st,X,d_hasObligations,1),bnode_node1i7lkib3nx218_st_(X,Y,"t") .
0 {d_hasEndDate_(X0,Y,"t"):const(Y)} 4:-d_hasObligations_(X,X0,"t**"),bnode_node1i7lkib3nx218_st_(X,Y,"t") .
(C-0) {bnode_node1i7lkib3nx218_st_(X,Y,"f"):bnode_node1i7lkib3nx218_st_(X,Y,"t*");s1_(Y,"f"):bnode_node1i7lkib3nx218_st_(X,Y,"t*"),not bnode_node1i7lkib3nx218_st_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:bnode_node1i7lkib3nx218_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasEndDate_(X0,X1,"f"):-s0_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasEndDate_(X0,X1,"t*"),bnode_node1i7lkib3nx218_st_(X,X1,"f") .
0 {s1_(Y,"t*"):bnode_node1i7lkib3nx218_st_(X,Y,"t**")} 4:-s0_(X,"t*") .


% universal for bnode_node1i7lkib3nx218
s2_(X,"t*"):-bnode_node1i7lkib3nx218_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
bnode_node1i7lkib3nx218_st_(X,@new(s3,X,bnode_node1i7lkib3nx218_st,1..1),"t"):-choose(s3,X,bnode_node1i7lkib3nx218_st,1) .
choose(s3,X,bnode_node1i7lkib3nx218_st,1);choose(s3,X,bnode_node1i7lkib3nx218_st,0):-s3_(X,"t*") .
0 {bnode_node1i7lkib3nx218_st_(X,Y,"t"):const(Y)} 4:-s3_(X,"t*") .
0 {d_hasEndDate_(X0,Y,"t")} 1:-d_hasObligations_(X,X0,"t**"),bnode_node1i7lkib3nx218_st_(X,Y,"t") .
(C-0) {bnode_node1i7lkib3nx218_st_(X,Y,"f"):bnode_node1i7lkib3nx218_st_(X,Y,"t*");s4_(Y,"f"):bnode_node1i7lkib3nx218_st_(X,Y,"t*"),not bnode_node1i7lkib3nx218_st_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:bnode_node1i7lkib3nx218_st_(X,Y,"t*")}=C,C>0 .
d_hasObligations_(X,X0,"f");d_hasEndDate_(X0,X1,"f"):-s3_(X,"f"),d_hasObligations_(X,X0,"t*"),d_hasEndDate_(X0,X1,"t*"),bnode_node1i7lkib3nx218_st_(X,X1,"f") .
1 {s4_(Y,"t*"):bnode_node1i7lkib3nx218_st_(X,Y,"t**")} 4:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .


s0_(X,"f");s2_(X,"f"):-bnode_node1i7lkib3nx218_(X,"f") .
s6_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"t*"):-s6_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"f"):-s6_(X,"f") .

% sh:maxCount 1 for bnode_node1i7lkib3nx212
s7_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .
d_hasState_(X,@new(s8,X,d_hasState,1..1),"t"):-choose(s8,X,d_hasState,1) .
d_hasState_(X,@new(s8,X,d_hasState,1..2),"t"):-choose(s8,X,d_hasState,2) .
choose(s8,X,d_hasState,2);choose(s8,X,d_hasState,1);choose(s8,X,d_hasState,0):-s8_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s8_(X,"t*") .
(C-1) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s9_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-1):-s8_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>1 .
d_hasState_(X,Y,"f"):-s8_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
2 {s9_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s8_(X,"t*") .


% sh:minCount 0 for bnode_node1i7lkib3nx212
s10_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
choose(s10,X,d_hasState,0):-s10_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s10_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s11_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s10_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s11_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s10_(X,"t*") .


% universal for bnode_node1i7lkib3nx212
s12_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
d_hasState_(X,@new(s13,X,d_hasState,1..1),"t"):-choose(s13,X,d_hasState,1) .
choose(s13,X,d_hasState,1);choose(s13,X,d_hasState,0):-s13_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s13_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s14_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s13_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s14_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s7_(X,"f");s10_(X,"f");s12_(X,"f"):-bnode_node1i7lkib3nx212_(X,"f") .
s16_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"t*"):-s16_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"f"):-s16_(X,"f") .

% sh:maxCount 1 for bnode_node1i7lkib3nx217
s17_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
d_hasEndDate_(X,@new(s18,X,d_hasEndDate,1..1),"t"):-choose(s18,X,d_hasEndDate,1) .
d_hasEndDate_(X,@new(s18,X,d_hasEndDate,1..2),"t"):-choose(s18,X,d_hasEndDate,2) .
choose(s18,X,d_hasEndDate,2);choose(s18,X,d_hasEndDate,1);choose(s18,X,d_hasEndDate,0):-s18_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s18_(X,"t*") .
(C-1) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s19_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-1):-s18_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>1 .
d_hasEndDate_(X,Y,"f"):-s18_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
2 {s19_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s18_(X,"t*") .


% sh:minCount 0 for bnode_node1i7lkib3nx217
s20_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
choose(s20,X,d_hasEndDate,0):-s20_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s20_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s21_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s20_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
0 {s21_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s20_(X,"t*") .


% universal for bnode_node1i7lkib3nx217
s22_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
d_hasEndDate_(X,@new(s23,X,d_hasEndDate,1..1),"t"):-choose(s23,X,d_hasEndDate,1) .
choose(s23,X,d_hasEndDate,1);choose(s23,X,d_hasEndDate,0):-s23_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s23_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s24_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s23_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s23_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s24_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .


s17_(X,"f");s20_(X,"f");s22_(X,"f"):-bnode_node1i7lkib3nx217_(X,"f") .
s26_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"t*"):-s26_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"f"):-s26_(X,"f") .

% sh:minCount 1 for bnode_node1i7lkib3nx217
s27_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
d_hasEndDate_(X,@new(s27,X,d_hasEndDate,1..1),"t"):-choose(s27,X,d_hasEndDate,1) .
choose(s27,X,d_hasEndDate,1);choose(s27,X,d_hasEndDate,0):-s27_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s27_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s28_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s27_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s28_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s27_(X,"t*") .


s29_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
d_hasEndDate_(X,@new(s30,X,d_hasEndDate,1..1),"t"):-choose(s30,X,d_hasEndDate,1) .
choose(s30,X,d_hasEndDate,1);choose(s30,X,d_hasEndDate,0):-s30_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s30_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s31_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s30_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s31_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s27_(X,"f");s29_(X,"f"):-bnode_node1i7lkib3nx217_(X,"f") .
s33_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"t*"):-s33_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"f"):-s33_(X,"f") .

s34_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
choose(s34,X,d_hasState,0):-s34_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s34_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s35_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s34_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s35_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s34_(X,"t*") .

s36_(X,"f"):-s35_(X,"t*") .
s36_(X,"t*"):-s35_(X,"f") .
s37_(X,"t*"):-s36_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
s39_(X,"t*"):-s36_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .
s41_(X,"t*"):-s36_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .
s43_(X,"t*"):-s36_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
s37_(X,"f");s39_(X,"f");s41_(X,"f");s43_(X,"f"):-s36_(X,"f") .

s45_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
d_hasState_(X,@new(s46,X,d_hasState,1..1),"t"):-choose(s46,X,d_hasState,1) .
choose(s46,X,d_hasState,1);choose(s46,X,d_hasState,0):-s46_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s46_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s47_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s46_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s47_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .

s49_(X,"f"):-s48_(X,"t*") .
s49_(X,"t*"):-s48_(X,"f") .
s50_(X,"t*"):-s49_(X,"t*") .
s51_(X,"f"):-s50_(X,"t*") .
s51_(X,"t*"):-s50_(X,"f") .
s52_(X,"t*"):-s49_(X,"t*") .
s53_(X,"f"):-s52_(X,"t*") .
s53_(X,"t*"):-s52_(X,"f") .
s54_(X,"t*"):-s49_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .
s56_(X,"t*"):-s49_(X,"t*") .
s57_(X,"f"):-s56_(X,"t*") .
s57_(X,"t*"):-s56_(X,"f") .
s50_(X,"f");s52_(X,"f");s54_(X,"f");s56_(X,"f"):-s49_(X,"f") .

s34_(X,"f");s45_(X,"f"):-bnode_node1i7lkib3nx212_(X,"f") .
s58_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"t*"):-s58_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"f"):-s58_(X,"f") .

s59_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
s60_(X,"f"):-s59_(X,"t*") .
s60_(X,"t*"):-s59_(X,"f") .
d_hasEndDate_(X,@new(s60,X,d_hasEndDate,1..1),"t"):-choose(s60,X,d_hasEndDate,1) .
d_hasEndDate_(X,@new(s60,X,d_hasEndDate,1..2),"t"):-choose(s60,X,d_hasEndDate,2) .
choose(s60,X,d_hasEndDate,2);choose(s60,X,d_hasEndDate,1);choose(s60,X,d_hasEndDate,0):-s60_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s60_(X,"t*") .
(C-1) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s61_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-1):-s60_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>1 .
d_hasEndDate_(X,Y,"f"):-s60_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
2 {s61_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s60_(X,"t*") .


s62_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
choose(s62,X,d_hasEndDate,0):-s62_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s62_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s63_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s62_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s62_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
0 {s63_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s62_(X,"t*") .


s64_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
s65_(X,"f"):-s64_(X,"t*") .
s65_(X,"t*"):-s64_(X,"f") .
d_hasEndDate_(X,@new(s65,X,d_hasEndDate,1..1),"t"):-choose(s65,X,d_hasEndDate,1) .
choose(s65,X,d_hasEndDate,1);choose(s65,X,d_hasEndDate,0):-s65_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s65_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s66_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s65_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s65_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s66_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s65_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .


s59_(X,"f");s62_(X,"f");s64_(X,"f"):-bnode_node1i7lkib3nx217_(X,"f") .
s68_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"t*"):-s68_(X,"t*") .
bnode_node1i7lkib3nx217_(X,"f"):-s68_(X,"f") .

s69_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
d_hasEndDate_(X,@new(s69,X,d_hasEndDate,1..1),"t"):-choose(s69,X,d_hasEndDate,1) .
choose(s69,X,d_hasEndDate,1);choose(s69,X,d_hasEndDate,0):-s69_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s69_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s70_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s69_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s69_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s70_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s69_(X,"t*") .


s71_(X,"t*"):-bnode_node1i7lkib3nx217_(X,"t*") .
s72_(X,"f"):-s71_(X,"t*") .
s72_(X,"t*"):-s71_(X,"f") .
d_hasEndDate_(X,@new(s72,X,d_hasEndDate,1..1),"t"):-choose(s72,X,d_hasEndDate,1) .
choose(s72,X,d_hasEndDate,1);choose(s72,X,d_hasEndDate,0):-s72_(X,"t*") .
0 {d_hasEndDate_(X,Y,"t"):const(Y)} 4:-s72_(X,"t*") .
(C-0) {d_hasEndDate_(X,Y,"f"):d_hasEndDate_(X,Y,"t*");s73_(Y,"f"):d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f")} (C-0):-s72_(X,"f"),#count {Y:d_hasEndDate_(X,Y,"t*")}=C,C>0 .
d_hasEndDate_(X,Y,"f"):-s72_(X,"f"),d_hasEndDate_(X,Y,"t*"),d_hasEndDate_(X,Y,"f") .
1 {s73_(Y,"t*"):d_hasEndDate_(X,Y,"t**")} 4:-s72_(X,"t*") .
s74_(X,"f"):-s73_(X,"t*") .
s74_(X,"t*"):-s73_(X,"f") .


s69_(X,"f");s71_(X,"f"):-bnode_node1i7lkib3nx217_(X,"f") .
s75_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"t*"):-s75_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"f"):-s75_(X,"f") .

% sh:minCount 1 for bnode_node1i7lkib3nx212
s76_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
d_hasState_(X,@new(s76,X,d_hasState,1..1),"t"):-choose(s76,X,d_hasState,1) .
choose(s76,X,d_hasState,1);choose(s76,X,d_hasState,0):-s76_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s76_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s77_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s76_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s76_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s77_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s76_(X,"t*") .


s78_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s79_(X,"f"):-s78_(X,"t*") .
s79_(X,"t*"):-s78_(X,"f") .
d_hasState_(X,@new(s79,X,d_hasState,1..1),"t"):-choose(s79,X,d_hasState,1) .
choose(s79,X,d_hasState,1);choose(s79,X,d_hasState,0):-s79_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s79_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s80_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s79_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s79_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s80_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s79_(X,"t*") .
s81_(X,"f"):-s80_(X,"t*") .
s81_(X,"t*"):-s80_(X,"f") .


s76_(X,"f");s78_(X,"f"):-bnode_node1i7lkib3nx212_(X,"f") .
s82_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"t*"):-s82_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"f"):-s82_(X,"f") .

s83_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
d_hasState_(X,@new(s83,X,d_hasState,1..1),"t"):-choose(s83,X,d_hasState,1) .
choose(s83,X,d_hasState,1);choose(s83,X,d_hasState,0):-s83_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s83_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s84_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s83_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s83_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s84_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s83_(X,"t*") .


s85_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s86_(X,"f"):-s85_(X,"t*") .
s86_(X,"t*"):-s85_(X,"f") .
d_hasState_(X,@new(s86,X,d_hasState,1..1),"t"):-choose(s86,X,d_hasState,1) .
choose(s86,X,d_hasState,1);choose(s86,X,d_hasState,0):-s86_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s86_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s87_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s86_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s86_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s87_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s86_(X,"t*") .
s88_(X,"f"):-s87_(X,"t*") .
s88_(X,"t*"):-s87_(X,"f") .


s83_(X,"f");s85_(X,"f"):-bnode_node1i7lkib3nx212_(X,"f") .
s89_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"t*"):-s89_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"f"):-s89_(X,"f") .

s90_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
choose(s90,X,d_hasState,0):-s90_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s90_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s91_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s90_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s91_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s90_(X,"t*") .


s92_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s93_(X,"f"):-s92_(X,"t*") .
s93_(X,"t*"):-s92_(X,"f") .
d_hasState_(X,@new(s93,X,d_hasState,1..1),"t"):-choose(s93,X,d_hasState,1) .
d_hasState_(X,@new(s93,X,d_hasState,1..2),"t"):-choose(s93,X,d_hasState,2) .
choose(s93,X,d_hasState,2);choose(s93,X,d_hasState,1);choose(s93,X,d_hasState,0):-s93_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s93_(X,"t*") .
(C-1) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s94_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-1):-s93_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>1 .
d_hasState_(X,Y,"f"):-s93_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
2 {s94_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s93_(X,"t*") .


s95_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s96_(X,"f"):-s95_(X,"t*") .
s96_(X,"t*"):-s95_(X,"f") .
d_hasState_(X,@new(s96,X,d_hasState,1..1),"t"):-choose(s96,X,d_hasState,1) .
choose(s96,X,d_hasState,1);choose(s96,X,d_hasState,0):-s96_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s96_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s97_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s96_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s96_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s97_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s96_(X,"t*") .
s98_(X,"f"):-s97_(X,"t*") .
s98_(X,"t*"):-s97_(X,"f") .


s90_(X,"f");s92_(X,"f");s95_(X,"f"):-bnode_node1i7lkib3nx212_(X,"f") .
s99_(X,"t*"):-d_ObligationShape_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"t*"):-s99_(X,"t*") .
bnode_node1i7lkib3nx212_(X,"f"):-s99_(X,"f") .

s100_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
choose(s100,X,d_hasState,0):-s100_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s100_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s101_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s100_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s100_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
0 {s101_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s100_(X,"t*") .

s102_(X,"f"):-s101_(X,"t*") .
s102_(X,"t*"):-s101_(X,"f") .
s103_(X,"t*"):-s102_(X,"t*") .
s104_(X,"f"):-s103_(X,"t*") .
s104_(X,"t*"):-s103_(X,"f") .
s105_(X,"t*"):-s102_(X,"t*") .
s106_(X,"f"):-s105_(X,"t*") .
s106_(X,"t*"):-s105_(X,"f") .
s107_(X,"t*"):-s102_(X,"t*") .
s108_(X,"f"):-s107_(X,"t*") .
s108_(X,"t*"):-s107_(X,"f") .
s109_(X,"t*"):-s102_(X,"t*") .
s110_(X,"f"):-s109_(X,"t*") .
s110_(X,"t*"):-s109_(X,"f") .
s103_(X,"f");s105_(X,"f");s107_(X,"f");s109_(X,"f"):-s102_(X,"f") .

s111_(X,"t*"):-bnode_node1i7lkib3nx212_(X,"t*") .
s112_(X,"f"):-s111_(X,"t*") .
s112_(X,"t*"):-s111_(X,"f") .
d_hasState_(X,@new(s112,X,d_hasState,1..1),"t"):-choose(s112,X,d_hasState,1) .
choose(s112,X,d_hasState,1);choose(s112,X,d_hasState,0):-s112_(X,"t*") .
0 {d_hasState_(X,Y,"t"):const(Y)} 4:-s112_(X,"t*") .
(C-0) {d_hasState_(X,Y,"f"):d_hasState_(X,Y,"t*");s113_(Y,"f"):d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f")} (C-0):-s112_(X,"f"),#count {Y:d_hasState_(X,Y,"t*")}=C,C>0 .
d_hasState_(X,Y,"f"):-s112_(X,"f"),d_hasState_(X,Y,"t*"),d_hasState_(X,Y,"f") .
1 {s113_(Y,"t*"):d_hasState_(X,Y,"t**")} 4:-s112_(X,"t*") .
s114_(X,"f"):-s113_(X,"t*") .
s114_(X,"t*"):-s113_(X,"f") .

s115_(X,"f"):-s114_(X,"t*") .
s115_(X,"t*"):-s114_(X,"f") .
s116_(X,"t*"):-s115_(X,"t*") .
s117_(X,"f"):-s116_(X,"t*") .
s117_(X,"t*"):-s116_(X,"f") .
s118_(X,"t*"):-s115_(X,"t*") .
s119_(X,"f"):-s118_(X,"t*") .
s119_(X,"t*"):-s118_(X,"f") .
s120_(X,"t*"):-s115_(X,"t*") .
s121_(X,"f"):-s120_(X,"t*") .
s121_(X,"t*"):-s120_(X,"f") .
s122_(X,"t*"):-s115_(X,"t*") .
s123_(X,"f"):-s122_(X,"t*") .
s123_(X,"t*"):-s122_(X,"f") .
s116_(X,"f");s118_(X,"f");s120_(X,"f");s122_(X,"f"):-s115_(X,"f") .

s100_(X,"f");s111_(X,"f"):-bnode_node1i7lkib3nx212_(X,"f") .
s6_(X,"f");s16_(X,"f");s26_(X,"f");s33_(X,"f");s58_(X,"f");s68_(X,"f");s75_(X,"f");s82_(X,"f");s89_(X,"f");s99_(X,"f"):-d_ObligationShape_(X,"f") .

% Interpretation Rules

d_hasObligations_(X,Y,"t**"):-d_hasObligations_(X,Y,"t*"),not d_hasObligations_(X,Y,"f") .
d_hasEndDate_(X,Y,"t**"):-d_hasEndDate_(X,Y,"t*"),not d_hasEndDate_(X,Y,"f") .
bnode_node1i7lkib3nx218_st_(X,X1,"t**"):-bnode_node1i7lkib3nx218_st_(X,X1,"t*"),not bnode_node1i7lkib3nx218_st_(X,X1,"f"),d_hasObligations_(X,X0,"t**"),d_hasEndDate_(X0,X1,"t**") .
d_hasState_(X,Y,"t**"):-d_hasState_(X,Y,"t*"),not d_hasState_(X,Y,"f") .

% Program Constraints

:-d_hasObligations_(X,Y,"t"),d_hasObligations_(X,Y,"f") .
:-d_hasEndDate_(X,Y,"t"),d_hasEndDate_(X,Y,"f") .
:-bnode_node1i7lkib3nx218_st_(X,Y,"t"),bnode_node1i7lkib3nx218_st_(X,Y,"f") .
:-s1_(X,"f") .
:-s5_(X,"f") .
:-d_hasState_(X,Y,"t"),d_hasState_(X,Y,"f") .
:-s9_(X,"f") .
:-s11_(X,"f") .
:-s15_(X,"f") .
:-s19_(X,"f") .
:-s21_(X,"f") .
:-s25_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-s38_(X,"t*"),X!="d_CreatedState" .
:-s38_(X,"f"),X="d_CreatedState" .
:-s40_(X,"t*"),X!="d_PendingState" .
:-s40_(X,"f"),X="d_PendingState" .
:-s42_(X,"t*"),X!="d_FulfilledState" .
:-s42_(X,"f"),X="d_FulfilledState" .
:-s44_(X,"t*"),X!="d_ViolatedState" .
:-s44_(X,"f"),X="d_ViolatedState" .
:-s51_(X,"t*"),X!="d_CreatedState" .
:-s51_(X,"f"),X="d_CreatedState" .
:-s53_(X,"t*"),X!="d_PendingState" .
:-s53_(X,"f"),X="d_PendingState" .
:-s55_(X,"t*"),X!="d_FulfilledState" .
:-s55_(X,"f"),X="d_FulfilledState" .
:-s57_(X,"t*"),X!="d_ViolatedState" .
:-s57_(X,"f"),X="d_ViolatedState" .
:-s61_(X,"f") .
:-s63_(X,"f") .
:-s67_(X,"f") .
:-s70_(X,"f") .
:-s74_(X,"f") .
:-s77_(X,"f") .
:-s81_(X,"f") .
:-s84_(X,"f") .
:-s88_(X,"f") .
:-s91_(X,"f") .
:-s94_(X,"f") .
:-s98_(X,"f") .
:-s104_(X,"t*"),X!="d_CreatedState" .
:-s104_(X,"f"),X="d_CreatedState" .
:-s106_(X,"t*"),X!="d_PendingState" .
:-s106_(X,"f"),X="d_PendingState" .
:-s108_(X,"t*"),X!="d_FulfilledState" .
:-s108_(X,"f"),X="d_FulfilledState" .
:-s110_(X,"t*"),X!="d_ViolatedState" .
:-s110_(X,"f"),X="d_ViolatedState" .
:-s117_(X,"t*"),X!="d_CreatedState" .
:-s117_(X,"f"),X="d_CreatedState" .
:-s119_(X,"t*"),X!="d_PendingState" .
:-s119_(X,"f"),X="d_PendingState" .
:-s121_(X,"t*"),X!="d_FulfilledState" .
:-s121_(X,"f"),X="d_FulfilledState" .
:-s123_(X,"t*"),X!="d_ViolatedState" .
:-s123_(X,"f"),X="d_ViolatedState" .

% Change Set Rules

add(d_hasObligations(X,Y)):-d_hasObligations_(X,Y,"t**"),not d_hasObligations(X,Y) .
del(d_hasObligations(X,Y)):-d_hasObligations_(X,Y,"f"),d_hasObligations(X,Y) .
add(d_hasEndDate(X,Y)):-d_hasEndDate_(X,Y,"t**"),not d_hasEndDate(X,Y) .
del(d_hasEndDate(X,Y)):-d_hasEndDate_(X,Y,"f"),d_hasEndDate(X,Y) .
#minimize { 1@1,X,Y: bnode_node1i7lkib3nx218_st_(X,Y,"t"), const(Y) } .
#minimize { 1@1,X,Y: d_hasEndDate_(X,Y,"t"), const(Y) } .
add(d_hasState(X,Y)):-d_hasState_(X,Y,"t**"),not d_hasState(X,Y) .
del(d_hasState(X,Y)):-d_hasState_(X,Y,"f"),d_hasState(X,Y) .
#minimize { 1@1,X,Y: d_hasState_(X,Y,"t"), const(Y) } .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-del(d_hasEndDate(X,Y)),fibo_fnd_agr_ctr_Contract(X) .
#minimize { 1@3,X,Y: del(d_hasEndDate(X,Y)),d_hasEndDate_(X,Z,"t**"),Y>=Z } .
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
