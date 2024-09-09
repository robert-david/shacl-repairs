
% Graph Data

rdfs_subClassOf("d_c1","d_c2") .
owl_disjointWith("d_c1","d_c3") .
skos_definition("d_c1","C1") .
xsd_string("C1") .
skos_note("d_c2","C2") .
xsd_string("C2") .
rdfs_subPropertyOf("d_p1","d_p2") .
rdfs_range("d_p1","xsd_string") .
skos_definition("d_p2","P2") .
xsd_string("P2") .
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

targetNode("d_p1",d_PropertyLabelShape) .
targetNode("d_p1",d_PropertyDescriptionShape) .
targetNode("d_p1",d_PropertyModificationDateShape) .
targetNode("d_p2",d_PropertyLabelShape) .
targetNode("d_p2",d_PropertyDescriptionShape) .
targetNode("d_p2",d_PropertyModificationDateShape) .
targetNode("d_c1",d_ClassLabelShape) .
targetNode("d_c1",d_ClassModificationDateShape) .
targetNode("d_c1",d_ClassDescriptionShape) .
targetNode("d_c2",d_ClassLabelShape) .
targetNode("d_c2",d_ClassModificationDateShape) .
targetNode("d_c2",d_ClassDescriptionShape) .
targetNode("d_c3",d_ClassLabelShape) .
targetNode("d_c3",d_ClassModificationDateShape) .
targetNode("d_c3",d_ClassDescriptionShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PropertyLabelShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyLabelShape) .
d_PropertyDescriptionShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyDescriptionShape) .
d_PropertyModificationDateShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyModificationDateShape) .
d_PropertyLabelShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyLabelShape) .
d_PropertyDescriptionShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyDescriptionShape) .
d_PropertyModificationDateShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyModificationDateShape) .
d_ClassLabelShape_("d_c1","t*"):-actualTarget("d_c1",d_ClassLabelShape) .
d_ClassModificationDateShape_("d_c1","t*"):-actualTarget("d_c1",d_ClassModificationDateShape) .
d_ClassDescriptionShape_("d_c1","t*"):-actualTarget("d_c1",d_ClassDescriptionShape) .
d_ClassLabelShape_("d_c2","t*"):-actualTarget("d_c2",d_ClassLabelShape) .
d_ClassModificationDateShape_("d_c2","t*"):-actualTarget("d_c2",d_ClassModificationDateShape) .
d_ClassDescriptionShape_("d_c2","t*"):-actualTarget("d_c2",d_ClassDescriptionShape) .
d_ClassLabelShape_("d_c3","t*"):-actualTarget("d_c3",d_ClassLabelShape) .
d_ClassModificationDateShape_("d_c3","t*"):-actualTarget("d_c3",d_ClassModificationDateShape) .
d_ClassDescriptionShape_("d_c3","t*"):-actualTarget("d_c3",d_ClassDescriptionShape) .

% Annotation Rules

rdfs_label_(X,Y,"t*"):-rdfs_label(X,Y) .
rdfs_label_(X,Y,"t*"):-rdfs_label_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,_),rdfs_label_(X,Y,"t*") .
skos_prefLabel_(X,Y,"t*"):-skos_prefLabel(X,Y) .
skos_prefLabel_(X,Y,"t*"):-skos_prefLabel_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,_),rdfs_label_(X,Y,"t*") .
dcterms_title_(X,Y,"t*"):-dcterms_title(X,Y) .
dcterms_title_(X,Y,"t*"):-dcterms_title_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,_),rdfs_label_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,_),rdfs_label_(X,Y,"t*") .
rdfs_description_(X,Y,"t*"):-rdfs_description(X,Y) .
rdfs_description_(X,Y,"t*"):-rdfs_description_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,_),rdfs_description_(X,Y,"t*") .
skos_definition_(X,Y,"t*"):-skos_definition(X,Y) .
skos_definition_(X,Y,"t*"):-skos_definition_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,_),rdfs_description_(X,Y,"t*") .
skos_note_(X,Y,"t*"):-skos_note(X,Y) .
skos_note_(X,Y,"t*"):-skos_note_(X,Y,"t") .
dcterms_modified_(X,Y,"t*"):-dcterms_modified(X,Y) .
dcterms_modified_(X,Y,"t*"):-dcterms_modified_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,_),dcterms_modified_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,_),dcterms_modified_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,_),rdfs_description_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,_),rdfs_description_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-d_ClassLabelShape_(X,"t*") .
s1_(X,"f"):-s0_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*"):-s1_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"f"):-s1_(X,"f") .

s2_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
skos_prefLabel_(X,Y,"t");rdfs_label_(X,Y,"f"):-s2_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");skos_prefLabel_(X,Y,"f"):-s2_(X,"t*"),skos_prefLabel_(X,Y,"t*") .
notEquals(s2,X,rdfs_label,skos_prefLabel):-s2_(X,"f"),rdfs_label_(X,Y,"t*"),not skos_prefLabel_(X,Y,"t*") .
notEquals(s2,X,rdfs_label,skos_prefLabel):-s2_(X,"f"),not rdfs_label_(X,Y,"t*"),skos_prefLabel_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):skos_prefLabel_(X,Y,"t*");skos_prefLabel_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s2,X,rdfs_label,1),"t*");skos_prefLabel_(X,@new(s2,X,skos_prefLabel,1),"t*")} 1:-s2_(X,"f"),not notEquals(s2,X,rdfs_label,skos_prefLabel) .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1319
s3_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s4_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
rdfs_label_(X,Y,"f"):-rdfs_label_(X,Y,"t*"),rdfs_label_(X,Y,"f") .
0 {s4_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s3_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1319
s5_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .
rdfs_label_(X,@new(s6,X,rdfs_label,1..1),"t"):-choose(s6,X,rdfs_label,1) .
choose(s6,X,rdfs_label,1);choose(s6,X,rdfs_label,0):-s6_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s7_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s6_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s7_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s6_(X,"t*") .
s8_(X,"f"):-s7_(X,"t*") .
s8_(X,"t*"):-s7_(X,"f") .


s2_(X,"f");s3_(X,"f");s5_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"f") .
s9_(X,"f"):-s0_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*"):-s9_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"f"):-s9_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1322
s10_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s11_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s10_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s11_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s10_(X,"t*") .


s12_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
dcterms_title_(X,Y,"t");rdfs_label_(X,Y,"f"):-s12_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");dcterms_title_(X,Y,"f"):-s12_(X,"t*"),dcterms_title_(X,Y,"t*") .
notEquals(s12,X,rdfs_label,dcterms_title):-s12_(X,"f"),rdfs_label_(X,Y,"t*"),not dcterms_title_(X,Y,"t*") .
notEquals(s12,X,rdfs_label,dcterms_title):-s12_(X,"f"),not rdfs_label_(X,Y,"t*"),dcterms_title_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):dcterms_title_(X,Y,"t*");dcterms_title_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s12,X,rdfs_label,1),"t*");dcterms_title_(X,@new(s12,X,dcterms_title,1),"t*")} 1:-s12_(X,"f"),not notEquals(s12,X,rdfs_label,dcterms_title) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1322
s13_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
rdfs_label_(X,@new(s14,X,rdfs_label,1..1),"t"):-choose(s14,X,rdfs_label,1) .
choose(s14,X,rdfs_label,1);choose(s14,X,rdfs_label,0):-s14_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s15_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s10_(X,"f");s12_(X,"f");s13_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"f") .
s1_(X,"t*");s9_(X,"t*"):-s0_(X,"t*") .
s17_(X,"t*"):-d_ClassLabelShape_(X,"t*") .
s18_(X,"f"):-s17_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*"):-s18_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"f"):-s18_(X,"f") .

s19_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s20_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s19_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s20_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s19_(X,"t*") .


s21_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
skos_prefLabel_(X,Y,"t");rdfs_label_(X,Y,"f"):-s21_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");skos_prefLabel_(X,Y,"f"):-s21_(X,"t*"),skos_prefLabel_(X,Y,"t*") .
notEquals(s21,X,rdfs_label,skos_prefLabel):-s21_(X,"f"),rdfs_label_(X,Y,"t*"),not skos_prefLabel_(X,Y,"t*") .
notEquals(s21,X,rdfs_label,skos_prefLabel):-s21_(X,"f"),not rdfs_label_(X,Y,"t*"),skos_prefLabel_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):skos_prefLabel_(X,Y,"t*");skos_prefLabel_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s21,X,rdfs_label,1),"t*");skos_prefLabel_(X,@new(s21,X,skos_prefLabel,1),"t*")} 1:-s21_(X,"f"),not notEquals(s21,X,rdfs_label,skos_prefLabel) .

s22_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
rdfs_label_(X,@new(s23,X,rdfs_label,1..1),"t"):-choose(s23,X,rdfs_label,1) .
choose(s23,X,rdfs_label,1);choose(s23,X,rdfs_label,0):-s23_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s24_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s23_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s24_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s23_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .


s19_(X,"f");s21_(X,"f");s22_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"f") .
s26_(X,"f"):-s17_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*"):-s26_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"f"):-s26_(X,"f") .

s27_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
dcterms_title_(X,Y,"t");rdfs_label_(X,Y,"f"):-s27_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");dcterms_title_(X,Y,"f"):-s27_(X,"t*"),dcterms_title_(X,Y,"t*") .
notEquals(s27,X,rdfs_label,dcterms_title):-s27_(X,"f"),rdfs_label_(X,Y,"t*"),not dcterms_title_(X,Y,"t*") .
notEquals(s27,X,rdfs_label,dcterms_title):-s27_(X,"f"),not rdfs_label_(X,Y,"t*"),dcterms_title_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):dcterms_title_(X,Y,"t*");dcterms_title_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s27,X,rdfs_label,1),"t*");dcterms_title_(X,@new(s27,X,dcterms_title,1),"t*")} 1:-s27_(X,"f"),not notEquals(s27,X,rdfs_label,dcterms_title) .

s28_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s29_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s29_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s28_(X,"t*") .


s30_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
rdfs_label_(X,@new(s31,X,rdfs_label,1..1),"t"):-choose(s31,X,rdfs_label,1) .
choose(s31,X,rdfs_label,1);choose(s31,X,rdfs_label,0):-s31_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s32_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s32_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .


s27_(X,"f");s28_(X,"f");s30_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"f") .
s18_(X,"t*");s26_(X,"t*"):-s17_(X,"t*") .
s34_(X,"t*"):-d_ClassLabelShape_(X,"t*") .
s35_(X,"f"):-s34_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*"):-s35_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"f"):-s35_(X,"f") .

s36_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s37_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s36_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s37_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s36_(X,"t*") .


s38_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
skos_prefLabel_(X,Y,"t");rdfs_label_(X,Y,"f"):-s38_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");skos_prefLabel_(X,Y,"f"):-s38_(X,"t*"),skos_prefLabel_(X,Y,"t*") .
notEquals(s38,X,rdfs_label,skos_prefLabel):-s38_(X,"f"),rdfs_label_(X,Y,"t*"),not skos_prefLabel_(X,Y,"t*") .
notEquals(s38,X,rdfs_label,skos_prefLabel):-s38_(X,"f"),not rdfs_label_(X,Y,"t*"),skos_prefLabel_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):skos_prefLabel_(X,Y,"t*");skos_prefLabel_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s38,X,rdfs_label,1),"t*");skos_prefLabel_(X,@new(s38,X,skos_prefLabel,1),"t*")} 1:-s38_(X,"f"),not notEquals(s38,X,rdfs_label,skos_prefLabel) .

s39_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .
rdfs_label_(X,@new(s40,X,rdfs_label,1..1),"t"):-choose(s40,X,rdfs_label,1) .
choose(s40,X,rdfs_label,1);choose(s40,X,rdfs_label,0):-s40_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s41_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s41_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s40_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .


s36_(X,"f");s38_(X,"f");s39_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1319_(X,"f") .
s43_(X,"f"):-s34_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*"):-s43_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"f"):-s43_(X,"f") .

s44_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
dcterms_title_(X,Y,"t");rdfs_label_(X,Y,"f"):-s44_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");dcterms_title_(X,Y,"f"):-s44_(X,"t*"),dcterms_title_(X,Y,"t*") .
notEquals(s44,X,rdfs_label,dcterms_title):-s44_(X,"f"),rdfs_label_(X,Y,"t*"),not dcterms_title_(X,Y,"t*") .
notEquals(s44,X,rdfs_label,dcterms_title):-s44_(X,"f"),not rdfs_label_(X,Y,"t*"),dcterms_title_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):dcterms_title_(X,Y,"t*");dcterms_title_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s44,X,rdfs_label,1),"t*");dcterms_title_(X,@new(s44,X,dcterms_title,1),"t*")} 1:-s44_(X,"f"),not notEquals(s44,X,rdfs_label,dcterms_title) .

s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s46_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s45_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s46_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s45_(X,"t*") .


s47_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .
rdfs_label_(X,@new(s48,X,rdfs_label,1..1),"t"):-choose(s48,X,rdfs_label,1) .
choose(s48,X,rdfs_label,1);choose(s48,X,rdfs_label,0):-s48_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s49_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s48_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s49_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s48_(X,"t*") .
s50_(X,"f"):-s49_(X,"t*") .
s50_(X,"t*"):-s49_(X,"f") .


s44_(X,"f");s45_(X,"f");s47_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1322_(X,"f") .
s35_(X,"t*");s43_(X,"t*"):-s34_(X,"t*") .
s0_(X,"f");s17_(X,"f");s34_(X,"f"):-d_ClassLabelShape_(X,"f") .
s51_(X,"t*"):-d_PropertyLabelShape_(X,"t*") .
s52_(X,"f"):-s51_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*"):-s52_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"f"):-s52_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1325
s53_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s54_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s54_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s53_(X,"t*") .


s55_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
skos_prefLabel_(X,Y,"t");rdfs_label_(X,Y,"f"):-s55_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");skos_prefLabel_(X,Y,"f"):-s55_(X,"t*"),skos_prefLabel_(X,Y,"t*") .
notEquals(s55,X,rdfs_label,skos_prefLabel):-s55_(X,"f"),rdfs_label_(X,Y,"t*"),not skos_prefLabel_(X,Y,"t*") .
notEquals(s55,X,rdfs_label,skos_prefLabel):-s55_(X,"f"),not rdfs_label_(X,Y,"t*"),skos_prefLabel_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):skos_prefLabel_(X,Y,"t*");skos_prefLabel_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s55,X,rdfs_label,1),"t*");skos_prefLabel_(X,@new(s55,X,skos_prefLabel,1),"t*")} 1:-s55_(X,"f"),not notEquals(s55,X,rdfs_label,skos_prefLabel) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1325
s56_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
s57_(X,"f"):-s56_(X,"t*") .
s57_(X,"t*"):-s56_(X,"f") .
rdfs_label_(X,@new(s57,X,rdfs_label,1..1),"t"):-choose(s57,X,rdfs_label,1) .
choose(s57,X,rdfs_label,1);choose(s57,X,rdfs_label,0):-s57_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s58_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s57_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s58_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s57_(X,"t*") .
s59_(X,"f"):-s58_(X,"t*") .
s59_(X,"t*"):-s58_(X,"f") .


s53_(X,"f");s55_(X,"f");s56_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"f") .
s60_(X,"f"):-s51_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*"):-s60_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"f"):-s60_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1328
s61_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s62_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s62_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s61_(X,"t*") .


s63_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
dcterms_title_(X,Y,"t");rdfs_label_(X,Y,"f"):-s63_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");dcterms_title_(X,Y,"f"):-s63_(X,"t*"),dcterms_title_(X,Y,"t*") .
notEquals(s63,X,rdfs_label,dcterms_title):-s63_(X,"f"),rdfs_label_(X,Y,"t*"),not dcterms_title_(X,Y,"t*") .
notEquals(s63,X,rdfs_label,dcterms_title):-s63_(X,"f"),not rdfs_label_(X,Y,"t*"),dcterms_title_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):dcterms_title_(X,Y,"t*");dcterms_title_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s63,X,rdfs_label,1),"t*");dcterms_title_(X,@new(s63,X,dcterms_title,1),"t*")} 1:-s63_(X,"f"),not notEquals(s63,X,rdfs_label,dcterms_title) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1328
s64_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
s65_(X,"f"):-s64_(X,"t*") .
s65_(X,"t*"):-s64_(X,"f") .
rdfs_label_(X,@new(s65,X,rdfs_label,1..1),"t"):-choose(s65,X,rdfs_label,1) .
choose(s65,X,rdfs_label,1);choose(s65,X,rdfs_label,0):-s65_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s66_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s65_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s66_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s65_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .


s61_(X,"f");s63_(X,"f");s64_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"f") .
s52_(X,"t*");s60_(X,"t*"):-s51_(X,"t*") .
s68_(X,"t*"):-d_PropertyLabelShape_(X,"t*") .
s69_(X,"f"):-s68_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*"):-s69_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"f"):-s69_(X,"f") .

s70_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s71_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s70_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s71_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s70_(X,"t*") .


s72_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
skos_prefLabel_(X,Y,"t");rdfs_label_(X,Y,"f"):-s72_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");skos_prefLabel_(X,Y,"f"):-s72_(X,"t*"),skos_prefLabel_(X,Y,"t*") .
notEquals(s72,X,rdfs_label,skos_prefLabel):-s72_(X,"f"),rdfs_label_(X,Y,"t*"),not skos_prefLabel_(X,Y,"t*") .
notEquals(s72,X,rdfs_label,skos_prefLabel):-s72_(X,"f"),not rdfs_label_(X,Y,"t*"),skos_prefLabel_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):skos_prefLabel_(X,Y,"t*");skos_prefLabel_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s72,X,rdfs_label,1),"t*");skos_prefLabel_(X,@new(s72,X,skos_prefLabel,1),"t*")} 1:-s72_(X,"f"),not notEquals(s72,X,rdfs_label,skos_prefLabel) .

s73_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
s74_(X,"f"):-s73_(X,"t*") .
s74_(X,"t*"):-s73_(X,"f") .
rdfs_label_(X,@new(s74,X,rdfs_label,1..1),"t"):-choose(s74,X,rdfs_label,1) .
choose(s74,X,rdfs_label,1);choose(s74,X,rdfs_label,0):-s74_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s75_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s74_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s75_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s74_(X,"t*") .
s76_(X,"f"):-s75_(X,"t*") .
s76_(X,"t*"):-s75_(X,"f") .


s70_(X,"f");s72_(X,"f");s73_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"f") .
s77_(X,"f"):-s68_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*"):-s77_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"f"):-s77_(X,"f") .

s78_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
dcterms_title_(X,Y,"t");rdfs_label_(X,Y,"f"):-s78_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");dcterms_title_(X,Y,"f"):-s78_(X,"t*"),dcterms_title_(X,Y,"t*") .
notEquals(s78,X,rdfs_label,dcterms_title):-s78_(X,"f"),rdfs_label_(X,Y,"t*"),not dcterms_title_(X,Y,"t*") .
notEquals(s78,X,rdfs_label,dcterms_title):-s78_(X,"f"),not rdfs_label_(X,Y,"t*"),dcterms_title_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):dcterms_title_(X,Y,"t*");dcterms_title_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s78,X,rdfs_label,1),"t*");dcterms_title_(X,@new(s78,X,dcterms_title,1),"t*")} 1:-s78_(X,"f"),not notEquals(s78,X,rdfs_label,dcterms_title) .

s79_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s80_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s79_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s80_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s79_(X,"t*") .


s81_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
s82_(X,"f"):-s81_(X,"t*") .
s82_(X,"t*"):-s81_(X,"f") .
rdfs_label_(X,@new(s82,X,rdfs_label,1..1),"t"):-choose(s82,X,rdfs_label,1) .
choose(s82,X,rdfs_label,1);choose(s82,X,rdfs_label,0):-s82_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s83_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s82_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s83_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s82_(X,"t*") .
s84_(X,"f"):-s83_(X,"t*") .
s84_(X,"t*"):-s83_(X,"f") .


s78_(X,"f");s79_(X,"f");s81_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"f") .
s69_(X,"t*");s77_(X,"t*"):-s68_(X,"t*") .
s85_(X,"t*"):-d_PropertyLabelShape_(X,"t*") .
s86_(X,"f"):-s85_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*"):-s86_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"f"):-s86_(X,"f") .

s87_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s88_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s87_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s88_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s87_(X,"t*") .


s89_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
skos_prefLabel_(X,Y,"t");rdfs_label_(X,Y,"f"):-s89_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");skos_prefLabel_(X,Y,"f"):-s89_(X,"t*"),skos_prefLabel_(X,Y,"t*") .
notEquals(s89,X,rdfs_label,skos_prefLabel):-s89_(X,"f"),rdfs_label_(X,Y,"t*"),not skos_prefLabel_(X,Y,"t*") .
notEquals(s89,X,rdfs_label,skos_prefLabel):-s89_(X,"f"),not rdfs_label_(X,Y,"t*"),skos_prefLabel_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):skos_prefLabel_(X,Y,"t*");skos_prefLabel_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s89,X,rdfs_label,1),"t*");skos_prefLabel_(X,@new(s89,X,skos_prefLabel,1),"t*")} 1:-s89_(X,"f"),not notEquals(s89,X,rdfs_label,skos_prefLabel) .

s90_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"t*") .
s91_(X,"f"):-s90_(X,"t*") .
s91_(X,"t*"):-s90_(X,"f") .
rdfs_label_(X,@new(s91,X,rdfs_label,1..1),"t"):-choose(s91,X,rdfs_label,1) .
choose(s91,X,rdfs_label,1);choose(s91,X,rdfs_label,0):-s91_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s92_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s91_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s92_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s91_(X,"t*") .
s93_(X,"f"):-s92_(X,"t*") .
s93_(X,"t*"):-s92_(X,"f") .


s87_(X,"f");s89_(X,"f");s90_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1325_(X,"f") .
s94_(X,"f"):-s85_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*"):-s94_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"f"):-s94_(X,"f") .

s95_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s96_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s95_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
0 {s96_(Y,"t*"):rdfs_label_(X,Y,"t**")} 0:-s95_(X,"t*") .


s97_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
dcterms_title_(X,Y,"t");rdfs_label_(X,Y,"f"):-s97_(X,"t*"),rdfs_label_(X,Y,"t*") .
rdfs_label_(X,Y,"t");dcterms_title_(X,Y,"f"):-s97_(X,"t*"),dcterms_title_(X,Y,"t*") .
notEquals(s97,X,rdfs_label,dcterms_title):-s97_(X,"f"),rdfs_label_(X,Y,"t*"),not dcterms_title_(X,Y,"t*") .
notEquals(s97,X,rdfs_label,dcterms_title):-s97_(X,"f"),not rdfs_label_(X,Y,"t*"),dcterms_title_(X,Y,"t*") .
1 {rdfs_label_(X,Y,"f"):dcterms_title_(X,Y,"t*");dcterms_title_(X,Y,"f"):rdfs_label_(X,Y,"t*");rdfs_label_(X,@new(s97,X,rdfs_label,1),"t*");dcterms_title_(X,@new(s97,X,dcterms_title,1),"t*")} 1:-s97_(X,"f"),not notEquals(s97,X,rdfs_label,dcterms_title) .

s98_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"t*") .
s99_(X,"f"):-s98_(X,"t*") .
s99_(X,"t*"):-s98_(X,"f") .
rdfs_label_(X,@new(s99,X,rdfs_label,1..1),"t"):-choose(s99,X,rdfs_label,1) .
choose(s99,X,rdfs_label,1);choose(s99,X,rdfs_label,0):-s99_(X,"t*") .
(C-0) {rdfs_label_(X,Y,"f"):rdfs_label_(X,Y,"t*");s100_(Y,"f"):rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f")} (C-0):-s99_(X,"f"),#count {Y:rdfs_label_(X,Y,"t*")}=C,C>0 .
1 {s100_(Y,"t*"):rdfs_label_(X,Y,"t**")} 1:-s99_(X,"t*") .
s101_(X,"f"):-s100_(X,"t*") .
s101_(X,"t*"):-s100_(X,"f") .


s95_(X,"f");s97_(X,"f");s98_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1328_(X,"f") .
s86_(X,"t*");s94_(X,"t*"):-s85_(X,"t*") .
s51_(X,"f");s68_(X,"f");s85_(X,"f"):-d_PropertyLabelShape_(X,"f") .
s102_(X,"t*"):-d_PropertyDescriptionShape_(X,"t*") .
s103_(X,"f"):-s102_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*"):-s103_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"f"):-s103_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1337
s104_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s105_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s104_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
rdfs_description_(X,Y,"f"):-rdfs_description_(X,Y,"t*"),rdfs_description_(X,Y,"f") .
0 {s105_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s104_(X,"t*") .


s106_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
skos_definition_(X,Y,"t");rdfs_description_(X,Y,"f"):-s106_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_definition_(X,Y,"f"):-s106_(X,"t*"),skos_definition_(X,Y,"t*") .
notEquals(s106,X,rdfs_description,skos_definition):-s106_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_definition_(X,Y,"t*") .
notEquals(s106,X,rdfs_description,skos_definition):-s106_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_definition_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_definition_(X,Y,"t*");skos_definition_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s106,X,rdfs_description,1),"t*");skos_definition_(X,@new(s106,X,skos_definition,1),"t*")} 1:-s106_(X,"f"),not notEquals(s106,X,rdfs_description,skos_definition) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1337
s107_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
s108_(X,"f"):-s107_(X,"t*") .
s108_(X,"t*"):-s107_(X,"f") .
rdfs_description_(X,@new(s108,X,rdfs_description,1..1),"t"):-choose(s108,X,rdfs_description,1) .
choose(s108,X,rdfs_description,1);choose(s108,X,rdfs_description,0):-s108_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s109_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s108_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s109_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s108_(X,"t*") .
s110_(X,"f"):-s109_(X,"t*") .
s110_(X,"t*"):-s109_(X,"f") .


s104_(X,"f");s106_(X,"f");s107_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"f") .
s111_(X,"f"):-s102_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*"):-s111_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"f"):-s111_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1340
s112_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s113_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s112_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s113_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s112_(X,"t*") .


s114_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
skos_note_(X,Y,"t");rdfs_description_(X,Y,"f"):-s114_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_note_(X,Y,"f"):-s114_(X,"t*"),skos_note_(X,Y,"t*") .
notEquals(s114,X,rdfs_description,skos_note):-s114_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_note_(X,Y,"t*") .
notEquals(s114,X,rdfs_description,skos_note):-s114_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_note_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_note_(X,Y,"t*");skos_note_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s114,X,rdfs_description,1),"t*");skos_note_(X,@new(s114,X,skos_note,1),"t*")} 1:-s114_(X,"f"),not notEquals(s114,X,rdfs_description,skos_note) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1340
s115_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
s116_(X,"f"):-s115_(X,"t*") .
s116_(X,"t*"):-s115_(X,"f") .
rdfs_description_(X,@new(s116,X,rdfs_description,1..1),"t"):-choose(s116,X,rdfs_description,1) .
choose(s116,X,rdfs_description,1);choose(s116,X,rdfs_description,0):-s116_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s117_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s116_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s117_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s116_(X,"t*") .
s118_(X,"f"):-s117_(X,"t*") .
s118_(X,"t*"):-s117_(X,"f") .


s112_(X,"f");s114_(X,"f");s115_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"f") .
s103_(X,"t*");s111_(X,"t*"):-s102_(X,"t*") .
s119_(X,"t*"):-d_PropertyDescriptionShape_(X,"t*") .
s120_(X,"f"):-s119_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*"):-s120_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"f"):-s120_(X,"f") .

s121_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s122_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s121_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s122_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s121_(X,"t*") .


s123_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
skos_definition_(X,Y,"t");rdfs_description_(X,Y,"f"):-s123_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_definition_(X,Y,"f"):-s123_(X,"t*"),skos_definition_(X,Y,"t*") .
notEquals(s123,X,rdfs_description,skos_definition):-s123_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_definition_(X,Y,"t*") .
notEquals(s123,X,rdfs_description,skos_definition):-s123_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_definition_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_definition_(X,Y,"t*");skos_definition_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s123,X,rdfs_description,1),"t*");skos_definition_(X,@new(s123,X,skos_definition,1),"t*")} 1:-s123_(X,"f"),not notEquals(s123,X,rdfs_description,skos_definition) .

s124_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
s125_(X,"f"):-s124_(X,"t*") .
s125_(X,"t*"):-s124_(X,"f") .
rdfs_description_(X,@new(s125,X,rdfs_description,1..1),"t"):-choose(s125,X,rdfs_description,1) .
choose(s125,X,rdfs_description,1);choose(s125,X,rdfs_description,0):-s125_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s126_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s125_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s126_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s125_(X,"t*") .
s127_(X,"f"):-s126_(X,"t*") .
s127_(X,"t*"):-s126_(X,"f") .


s121_(X,"f");s123_(X,"f");s124_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"f") .
s128_(X,"f"):-s119_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*"):-s128_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"f"):-s128_(X,"f") .

s129_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s130_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s129_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s130_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s129_(X,"t*") .


s131_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
skos_note_(X,Y,"t");rdfs_description_(X,Y,"f"):-s131_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_note_(X,Y,"f"):-s131_(X,"t*"),skos_note_(X,Y,"t*") .
notEquals(s131,X,rdfs_description,skos_note):-s131_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_note_(X,Y,"t*") .
notEquals(s131,X,rdfs_description,skos_note):-s131_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_note_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_note_(X,Y,"t*");skos_note_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s131,X,rdfs_description,1),"t*");skos_note_(X,@new(s131,X,skos_note,1),"t*")} 1:-s131_(X,"f"),not notEquals(s131,X,rdfs_description,skos_note) .

s132_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
s133_(X,"f"):-s132_(X,"t*") .
s133_(X,"t*"):-s132_(X,"f") .
rdfs_description_(X,@new(s133,X,rdfs_description,1..1),"t"):-choose(s133,X,rdfs_description,1) .
choose(s133,X,rdfs_description,1);choose(s133,X,rdfs_description,0):-s133_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s134_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s133_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s134_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s133_(X,"t*") .
s135_(X,"f"):-s134_(X,"t*") .
s135_(X,"t*"):-s134_(X,"f") .


s129_(X,"f");s131_(X,"f");s132_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"f") .
s120_(X,"t*");s128_(X,"t*"):-s119_(X,"t*") .
s136_(X,"t*"):-d_PropertyDescriptionShape_(X,"t*") .
s137_(X,"f"):-s136_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*"):-s137_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"f"):-s137_(X,"f") .

s138_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s139_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s138_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s139_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s138_(X,"t*") .


s140_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
skos_definition_(X,Y,"t");rdfs_description_(X,Y,"f"):-s140_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_definition_(X,Y,"f"):-s140_(X,"t*"),skos_definition_(X,Y,"t*") .
notEquals(s140,X,rdfs_description,skos_definition):-s140_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_definition_(X,Y,"t*") .
notEquals(s140,X,rdfs_description,skos_definition):-s140_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_definition_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_definition_(X,Y,"t*");skos_definition_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s140,X,rdfs_description,1),"t*");skos_definition_(X,@new(s140,X,skos_definition,1),"t*")} 1:-s140_(X,"f"),not notEquals(s140,X,rdfs_description,skos_definition) .

s141_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"t*") .
s142_(X,"f"):-s141_(X,"t*") .
s142_(X,"t*"):-s141_(X,"f") .
rdfs_description_(X,@new(s142,X,rdfs_description,1..1),"t"):-choose(s142,X,rdfs_description,1) .
choose(s142,X,rdfs_description,1);choose(s142,X,rdfs_description,0):-s142_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s143_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s142_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s143_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s142_(X,"t*") .
s144_(X,"f"):-s143_(X,"t*") .
s144_(X,"t*"):-s143_(X,"f") .


s138_(X,"f");s140_(X,"f");s141_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1337_(X,"f") .
s145_(X,"f"):-s136_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*"):-s145_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"f"):-s145_(X,"f") .

s146_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
skos_note_(X,Y,"t");rdfs_description_(X,Y,"f"):-s146_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_note_(X,Y,"f"):-s146_(X,"t*"),skos_note_(X,Y,"t*") .
notEquals(s146,X,rdfs_description,skos_note):-s146_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_note_(X,Y,"t*") .
notEquals(s146,X,rdfs_description,skos_note):-s146_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_note_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_note_(X,Y,"t*");skos_note_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s146,X,rdfs_description,1),"t*");skos_note_(X,@new(s146,X,skos_note,1),"t*")} 1:-s146_(X,"f"),not notEquals(s146,X,rdfs_description,skos_note) .

s147_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s148_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s147_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s148_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s147_(X,"t*") .


s149_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"t*") .
s150_(X,"f"):-s149_(X,"t*") .
s150_(X,"t*"):-s149_(X,"f") .
rdfs_description_(X,@new(s150,X,rdfs_description,1..1),"t"):-choose(s150,X,rdfs_description,1) .
choose(s150,X,rdfs_description,1);choose(s150,X,rdfs_description,0):-s150_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s151_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s150_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s151_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s150_(X,"t*") .
s152_(X,"f"):-s151_(X,"t*") .
s152_(X,"t*"):-s151_(X,"f") .


s146_(X,"f");s147_(X,"f");s149_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1340_(X,"f") .
s137_(X,"t*");s145_(X,"t*"):-s136_(X,"t*") .
s102_(X,"f");s119_(X,"f");s136_(X,"f"):-d_PropertyDescriptionShape_(X,"f") .
s153_(X,"t*"):-d_ClassModificationDateShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*"):-s153_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"f"):-s153_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1341
s154_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
s155_(X,"f"):-s154_(X,"t*") .
s155_(X,"t*"):-s154_(X,"f") .
dcterms_modified_(X,@new(s155,X,dcterms_modified,1..1),"t"):-choose(s155,X,dcterms_modified,1) .
dcterms_modified_(X,@new(s155,X,dcterms_modified,1..2),"t"):-choose(s155,X,dcterms_modified,2) .
choose(s155,X,dcterms_modified,2);choose(s155,X,dcterms_modified,1);choose(s155,X,dcterms_modified,0):-s155_(X,"t*") .
(C-1) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s156_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-1):-s155_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>1 .
dcterms_modified_(X,Y,"f"):-dcterms_modified_(X,Y,"t*"),dcterms_modified_(X,Y,"f") .
2 {s156_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 2:-s155_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1341
s157_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s158_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s157_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
0 {s158_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 0:-s157_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1341
s159_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
s160_(X,"f"):-s159_(X,"t*") .
s160_(X,"t*"):-s159_(X,"f") .
dcterms_modified_(X,@new(s160,X,dcterms_modified,1..1),"t"):-choose(s160,X,dcterms_modified,1) .
choose(s160,X,dcterms_modified,1);choose(s160,X,dcterms_modified,0):-s160_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s161_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s160_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
1 {s161_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 1:-s160_(X,"t*") .
s162_(X,"f"):-s161_(X,"t*") .
s162_(X,"t*"):-s161_(X,"f") .


s154_(X,"f");s157_(X,"f");s159_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"f") .
s163_(X,"t*"):-d_ClassModificationDateShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*"):-s163_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"f"):-s163_(X,"f") .

s164_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s165_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s164_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
0 {s165_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 0:-s164_(X,"t*") .


s166_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
s167_(X,"f"):-s166_(X,"t*") .
s167_(X,"t*"):-s166_(X,"f") .
dcterms_modified_(X,@new(s167,X,dcterms_modified,1..1),"t"):-choose(s167,X,dcterms_modified,1) .
dcterms_modified_(X,@new(s167,X,dcterms_modified,1..2),"t"):-choose(s167,X,dcterms_modified,2) .
choose(s167,X,dcterms_modified,2);choose(s167,X,dcterms_modified,1);choose(s167,X,dcterms_modified,0):-s167_(X,"t*") .
(C-1) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s168_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-1):-s167_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>1 .
2 {s168_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 2:-s167_(X,"t*") .


s169_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
s170_(X,"f"):-s169_(X,"t*") .
s170_(X,"t*"):-s169_(X,"f") .
dcterms_modified_(X,@new(s170,X,dcterms_modified,1..1),"t"):-choose(s170,X,dcterms_modified,1) .
choose(s170,X,dcterms_modified,1);choose(s170,X,dcterms_modified,0):-s170_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s171_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s170_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
1 {s171_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 1:-s170_(X,"t*") .
s172_(X,"f"):-s171_(X,"t*") .
s172_(X,"t*"):-s171_(X,"f") .


s164_(X,"f");s166_(X,"f");s169_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"f") .
s173_(X,"t*"):-d_ClassModificationDateShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*"):-s173_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"f"):-s173_(X,"f") .

s174_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s175_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s174_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
0 {s175_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 0:-s174_(X,"t*") .


s176_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
s177_(X,"f"):-s176_(X,"t*") .
s177_(X,"t*"):-s176_(X,"f") .
dcterms_modified_(X,@new(s177,X,dcterms_modified,1..1),"t"):-choose(s177,X,dcterms_modified,1) .
dcterms_modified_(X,@new(s177,X,dcterms_modified,1..2),"t"):-choose(s177,X,dcterms_modified,2) .
choose(s177,X,dcterms_modified,2);choose(s177,X,dcterms_modified,1);choose(s177,X,dcterms_modified,0):-s177_(X,"t*") .
(C-1) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s178_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-1):-s177_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>1 .
2 {s178_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 2:-s177_(X,"t*") .


s179_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"t*") .
s180_(X,"f"):-s179_(X,"t*") .
s180_(X,"t*"):-s179_(X,"f") .
dcterms_modified_(X,@new(s180,X,dcterms_modified,1..1),"t"):-choose(s180,X,dcterms_modified,1) .
choose(s180,X,dcterms_modified,1);choose(s180,X,dcterms_modified,0):-s180_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s181_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s180_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
1 {s181_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 1:-s180_(X,"t*") .
s182_(X,"f"):-s181_(X,"t*") .
s182_(X,"t*"):-s181_(X,"f") .


s174_(X,"f");s176_(X,"f");s179_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1341_(X,"f") .
s153_(X,"f");s163_(X,"f");s173_(X,"f"):-d_ClassModificationDateShape_(X,"f") .
s183_(X,"t*"):-d_PropertyModificationDateShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*"):-s183_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"f"):-s183_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd1342
s184_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
s185_(X,"f"):-s184_(X,"t*") .
s185_(X,"t*"):-s184_(X,"f") .
dcterms_modified_(X,@new(s185,X,dcterms_modified,1..1),"t"):-choose(s185,X,dcterms_modified,1) .
dcterms_modified_(X,@new(s185,X,dcterms_modified,1..2),"t"):-choose(s185,X,dcterms_modified,2) .
choose(s185,X,dcterms_modified,2);choose(s185,X,dcterms_modified,1);choose(s185,X,dcterms_modified,0):-s185_(X,"t*") .
(C-1) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s186_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-1):-s185_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>1 .
2 {s186_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 2:-s185_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1342
s187_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s188_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s187_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
0 {s188_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 0:-s187_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1342
s189_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
s190_(X,"f"):-s189_(X,"t*") .
s190_(X,"t*"):-s189_(X,"f") .
dcterms_modified_(X,@new(s190,X,dcterms_modified,1..1),"t"):-choose(s190,X,dcterms_modified,1) .
choose(s190,X,dcterms_modified,1);choose(s190,X,dcterms_modified,0):-s190_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s191_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s190_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
1 {s191_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 1:-s190_(X,"t*") .
s192_(X,"f"):-s191_(X,"t*") .
s192_(X,"t*"):-s191_(X,"f") .


s184_(X,"f");s187_(X,"f");s189_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"f") .
s193_(X,"t*"):-d_PropertyModificationDateShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*"):-s193_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"f"):-s193_(X,"f") .

s194_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s195_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s194_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
0 {s195_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 0:-s194_(X,"t*") .


s196_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
s197_(X,"f"):-s196_(X,"t*") .
s197_(X,"t*"):-s196_(X,"f") .
dcterms_modified_(X,@new(s197,X,dcterms_modified,1..1),"t"):-choose(s197,X,dcterms_modified,1) .
dcterms_modified_(X,@new(s197,X,dcterms_modified,1..2),"t"):-choose(s197,X,dcterms_modified,2) .
choose(s197,X,dcterms_modified,2);choose(s197,X,dcterms_modified,1);choose(s197,X,dcterms_modified,0):-s197_(X,"t*") .
(C-1) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s198_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-1):-s197_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>1 .
2 {s198_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 2:-s197_(X,"t*") .


s199_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
s200_(X,"f"):-s199_(X,"t*") .
s200_(X,"t*"):-s199_(X,"f") .
dcterms_modified_(X,@new(s200,X,dcterms_modified,1..1),"t"):-choose(s200,X,dcterms_modified,1) .
choose(s200,X,dcterms_modified,1);choose(s200,X,dcterms_modified,0):-s200_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s201_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s200_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
1 {s201_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 1:-s200_(X,"t*") .
s202_(X,"f"):-s201_(X,"t*") .
s202_(X,"t*"):-s201_(X,"f") .


s194_(X,"f");s196_(X,"f");s199_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"f") .
s203_(X,"t*"):-d_PropertyModificationDateShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*"):-s203_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"f"):-s203_(X,"f") .

s204_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s205_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s204_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
0 {s205_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 0:-s204_(X,"t*") .


s206_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
s207_(X,"f"):-s206_(X,"t*") .
s207_(X,"t*"):-s206_(X,"f") .
dcterms_modified_(X,@new(s207,X,dcterms_modified,1..1),"t"):-choose(s207,X,dcterms_modified,1) .
dcterms_modified_(X,@new(s207,X,dcterms_modified,1..2),"t"):-choose(s207,X,dcterms_modified,2) .
choose(s207,X,dcterms_modified,2);choose(s207,X,dcterms_modified,1);choose(s207,X,dcterms_modified,0):-s207_(X,"t*") .
(C-1) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s208_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-1):-s207_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>1 .
2 {s208_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 2:-s207_(X,"t*") .


s209_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"t*") .
s210_(X,"f"):-s209_(X,"t*") .
s210_(X,"t*"):-s209_(X,"f") .
dcterms_modified_(X,@new(s210,X,dcterms_modified,1..1),"t"):-choose(s210,X,dcterms_modified,1) .
choose(s210,X,dcterms_modified,1);choose(s210,X,dcterms_modified,0):-s210_(X,"t*") .
(C-0) {dcterms_modified_(X,Y,"f"):dcterms_modified_(X,Y,"t*");s211_(Y,"f"):dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f")} (C-0):-s210_(X,"f"),#count {Y:dcterms_modified_(X,Y,"t*")}=C,C>0 .
1 {s211_(Y,"t*"):dcterms_modified_(X,Y,"t**")} 1:-s210_(X,"t*") .
s212_(X,"f"):-s211_(X,"t*") .
s212_(X,"t*"):-s211_(X,"f") .


s204_(X,"f");s206_(X,"f");s209_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1342_(X,"f") .
s183_(X,"f");s193_(X,"f");s203_(X,"f"):-d_PropertyModificationDateShape_(X,"f") .
s213_(X,"t*"):-d_ClassDescriptionShape_(X,"t*") .
s214_(X,"f"):-s213_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*"):-s214_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"f"):-s214_(X,"f") .

s215_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
skos_definition_(X,Y,"t");rdfs_description_(X,Y,"f"):-s215_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_definition_(X,Y,"f"):-s215_(X,"t*"),skos_definition_(X,Y,"t*") .
notEquals(s215,X,rdfs_description,skos_definition):-s215_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_definition_(X,Y,"t*") .
notEquals(s215,X,rdfs_description,skos_definition):-s215_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_definition_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_definition_(X,Y,"t*");skos_definition_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s215,X,rdfs_description,1),"t*");skos_definition_(X,@new(s215,X,skos_definition,1),"t*")} 1:-s215_(X,"f"),not notEquals(s215,X,rdfs_description,skos_definition) .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1331
s216_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s217_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s216_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s217_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s216_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1331
s218_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
s219_(X,"f"):-s218_(X,"t*") .
s219_(X,"t*"):-s218_(X,"f") .
rdfs_description_(X,@new(s219,X,rdfs_description,1..1),"t"):-choose(s219,X,rdfs_description,1) .
choose(s219,X,rdfs_description,1);choose(s219,X,rdfs_description,0):-s219_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s220_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s219_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s220_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s219_(X,"t*") .
s221_(X,"f"):-s220_(X,"t*") .
s221_(X,"t*"):-s220_(X,"f") .


s215_(X,"f");s216_(X,"f");s218_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"f") .
s222_(X,"f"):-s213_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*"):-s222_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"f"):-s222_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd1334
s223_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s224_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s223_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s224_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s223_(X,"t*") .


s225_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
skos_note_(X,Y,"t");rdfs_description_(X,Y,"f"):-s225_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_note_(X,Y,"f"):-s225_(X,"t*"),skos_note_(X,Y,"t*") .
notEquals(s225,X,rdfs_description,skos_note):-s225_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_note_(X,Y,"t*") .
notEquals(s225,X,rdfs_description,skos_note):-s225_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_note_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_note_(X,Y,"t*");skos_note_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s225,X,rdfs_description,1),"t*");skos_note_(X,@new(s225,X,skos_note,1),"t*")} 1:-s225_(X,"f"),not notEquals(s225,X,rdfs_description,skos_note) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd1334
s226_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
s227_(X,"f"):-s226_(X,"t*") .
s227_(X,"t*"):-s226_(X,"f") .
rdfs_description_(X,@new(s227,X,rdfs_description,1..1),"t"):-choose(s227,X,rdfs_description,1) .
choose(s227,X,rdfs_description,1);choose(s227,X,rdfs_description,0):-s227_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s228_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s227_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s228_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s227_(X,"t*") .
s229_(X,"f"):-s228_(X,"t*") .
s229_(X,"t*"):-s228_(X,"f") .


s223_(X,"f");s225_(X,"f");s226_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"f") .
s214_(X,"t*");s222_(X,"t*"):-s213_(X,"t*") .
s230_(X,"t*"):-d_ClassDescriptionShape_(X,"t*") .
s231_(X,"f"):-s230_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*"):-s231_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"f"):-s231_(X,"f") .

s232_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
skos_definition_(X,Y,"t");rdfs_description_(X,Y,"f"):-s232_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_definition_(X,Y,"f"):-s232_(X,"t*"),skos_definition_(X,Y,"t*") .
notEquals(s232,X,rdfs_description,skos_definition):-s232_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_definition_(X,Y,"t*") .
notEquals(s232,X,rdfs_description,skos_definition):-s232_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_definition_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_definition_(X,Y,"t*");skos_definition_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s232,X,rdfs_description,1),"t*");skos_definition_(X,@new(s232,X,skos_definition,1),"t*")} 1:-s232_(X,"f"),not notEquals(s232,X,rdfs_description,skos_definition) .

s233_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s234_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s233_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s234_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s233_(X,"t*") .


s235_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
s236_(X,"f"):-s235_(X,"t*") .
s236_(X,"t*"):-s235_(X,"f") .
rdfs_description_(X,@new(s236,X,rdfs_description,1..1),"t"):-choose(s236,X,rdfs_description,1) .
choose(s236,X,rdfs_description,1);choose(s236,X,rdfs_description,0):-s236_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s237_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s236_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s237_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s236_(X,"t*") .
s238_(X,"f"):-s237_(X,"t*") .
s238_(X,"t*"):-s237_(X,"f") .


s232_(X,"f");s233_(X,"f");s235_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"f") .
s239_(X,"f"):-s230_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*"):-s239_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"f"):-s239_(X,"f") .

s240_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
skos_note_(X,Y,"t");rdfs_description_(X,Y,"f"):-s240_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_note_(X,Y,"f"):-s240_(X,"t*"),skos_note_(X,Y,"t*") .
notEquals(s240,X,rdfs_description,skos_note):-s240_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_note_(X,Y,"t*") .
notEquals(s240,X,rdfs_description,skos_note):-s240_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_note_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_note_(X,Y,"t*");skos_note_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s240,X,rdfs_description,1),"t*");skos_note_(X,@new(s240,X,skos_note,1),"t*")} 1:-s240_(X,"f"),not notEquals(s240,X,rdfs_description,skos_note) .

s241_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s242_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s241_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s242_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s241_(X,"t*") .


s243_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
s244_(X,"f"):-s243_(X,"t*") .
s244_(X,"t*"):-s243_(X,"f") .
rdfs_description_(X,@new(s244,X,rdfs_description,1..1),"t"):-choose(s244,X,rdfs_description,1) .
choose(s244,X,rdfs_description,1);choose(s244,X,rdfs_description,0):-s244_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s245_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s244_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s245_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s244_(X,"t*") .
s246_(X,"f"):-s245_(X,"t*") .
s246_(X,"t*"):-s245_(X,"f") .


s240_(X,"f");s241_(X,"f");s243_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"f") .
s231_(X,"t*");s239_(X,"t*"):-s230_(X,"t*") .
s247_(X,"t*"):-d_ClassDescriptionShape_(X,"t*") .
s248_(X,"f"):-s247_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*"):-s248_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"f"):-s248_(X,"f") .

s249_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
skos_definition_(X,Y,"t");rdfs_description_(X,Y,"f"):-s249_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_definition_(X,Y,"f"):-s249_(X,"t*"),skos_definition_(X,Y,"t*") .
notEquals(s249,X,rdfs_description,skos_definition):-s249_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_definition_(X,Y,"t*") .
notEquals(s249,X,rdfs_description,skos_definition):-s249_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_definition_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_definition_(X,Y,"t*");skos_definition_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s249,X,rdfs_description,1),"t*");skos_definition_(X,@new(s249,X,skos_definition,1),"t*")} 1:-s249_(X,"f"),not notEquals(s249,X,rdfs_description,skos_definition) .

s250_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s251_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s250_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s251_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s250_(X,"t*") .


s252_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"t*") .
s253_(X,"f"):-s252_(X,"t*") .
s253_(X,"t*"):-s252_(X,"f") .
rdfs_description_(X,@new(s253,X,rdfs_description,1..1),"t"):-choose(s253,X,rdfs_description,1) .
choose(s253,X,rdfs_description,1);choose(s253,X,rdfs_description,0):-s253_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s254_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s253_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s254_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s253_(X,"t*") .
s255_(X,"f"):-s254_(X,"t*") .
s255_(X,"t*"):-s254_(X,"f") .


s249_(X,"f");s250_(X,"f");s252_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1331_(X,"f") .
s256_(X,"f"):-s247_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*"):-s256_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"f"):-s256_(X,"f") .

s257_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
skos_note_(X,Y,"t");rdfs_description_(X,Y,"f"):-s257_(X,"t*"),rdfs_description_(X,Y,"t*") .
rdfs_description_(X,Y,"t");skos_note_(X,Y,"f"):-s257_(X,"t*"),skos_note_(X,Y,"t*") .
notEquals(s257,X,rdfs_description,skos_note):-s257_(X,"f"),rdfs_description_(X,Y,"t*"),not skos_note_(X,Y,"t*") .
notEquals(s257,X,rdfs_description,skos_note):-s257_(X,"f"),not rdfs_description_(X,Y,"t*"),skos_note_(X,Y,"t*") .
1 {rdfs_description_(X,Y,"f"):skos_note_(X,Y,"t*");skos_note_(X,Y,"f"):rdfs_description_(X,Y,"t*");rdfs_description_(X,@new(s257,X,rdfs_description,1),"t*");skos_note_(X,@new(s257,X,skos_note,1),"t*")} 1:-s257_(X,"f"),not notEquals(s257,X,rdfs_description,skos_note) .

s258_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s259_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s258_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
0 {s259_(Y,"t*"):rdfs_description_(X,Y,"t**")} 0:-s258_(X,"t*") .


s260_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"t*") .
s261_(X,"f"):-s260_(X,"t*") .
s261_(X,"t*"):-s260_(X,"f") .
rdfs_description_(X,@new(s261,X,rdfs_description,1..1),"t"):-choose(s261,X,rdfs_description,1) .
choose(s261,X,rdfs_description,1);choose(s261,X,rdfs_description,0):-s261_(X,"t*") .
(C-0) {rdfs_description_(X,Y,"f"):rdfs_description_(X,Y,"t*");s262_(Y,"f"):rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f")} (C-0):-s261_(X,"f"),#count {Y:rdfs_description_(X,Y,"t*")}=C,C>0 .
1 {s262_(Y,"t*"):rdfs_description_(X,Y,"t**")} 1:-s261_(X,"t*") .
s263_(X,"f"):-s262_(X,"t*") .
s263_(X,"t*"):-s262_(X,"f") .


s257_(X,"f");s258_(X,"f");s260_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd1334_(X,"f") .
s248_(X,"t*");s256_(X,"t*"):-s247_(X,"t*") .
s213_(X,"f");s230_(X,"f");s247_(X,"f"):-d_ClassDescriptionShape_(X,"f") .

% Interpretation Rules

rdfs_label_(X,Y,"t**"):-rdfs_label_(X,Y,"t*"),not rdfs_label_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1319_st_(X,Y,"t**"):-rdfs_label_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1319_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1319_st_(X,Y,"f") .
skos_prefLabel_(X,Y,"t**"):-skos_prefLabel_(X,Y,"t*"),not skos_prefLabel_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1322_st_(X,Y,"t**"):-rdfs_label_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1322_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1322_st_(X,Y,"f") .
dcterms_title_(X,Y,"t**"):-dcterms_title_(X,Y,"t*"),not dcterms_title_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1325_st_(X,Y,"t**"):-rdfs_label_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1325_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1325_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1328_st_(X,Y,"t**"):-rdfs_label_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1328_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1328_st_(X,Y,"f") .
rdfs_description_(X,Y,"t**"):-rdfs_description_(X,Y,"t*"),not rdfs_description_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1337_st_(X,Y,"t**"):-rdfs_description_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1337_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1337_st_(X,Y,"f") .
skos_definition_(X,Y,"t**"):-skos_definition_(X,Y,"t*"),not skos_definition_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1340_st_(X,Y,"t**"):-rdfs_description_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1340_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1340_st_(X,Y,"f") .
skos_note_(X,Y,"t**"):-skos_note_(X,Y,"t*"),not skos_note_(X,Y,"f") .
dcterms_modified_(X,Y,"t**"):-dcterms_modified_(X,Y,"t*"),not dcterms_modified_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1341_st_(X,Y,"t**"):-dcterms_modified_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1341_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1341_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1342_st_(X,Y,"t**"):-dcterms_modified_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1342_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1342_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1331_st_(X,Y,"t**"):-rdfs_description_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1331_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1331_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd1334_st_(X,Y,"t**"):-rdfs_description_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd1334_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd1334_st_(X,Y,"f") .

% Program Constraints

:-rdfs_label_(X,Y,"t"),rdfs_label_(X,Y,"f") .
:-s2_(X,"t*"),skos_prefLabel_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s2_(X,"t*"),rdfs_label_(X,Y,"t**"),not skos_prefLabel_(X,Y,"t**") .
:-skos_prefLabel_(X,Y,"t"),skos_prefLabel_(X,Y,"f") .
:-s4_(X,"f") .
:-s8_(X,"f") .
:-s11_(X,"f") .
:-s12_(X,"t*"),dcterms_title_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s12_(X,"t*"),rdfs_label_(X,Y,"t**"),not dcterms_title_(X,Y,"t**") .
:-dcterms_title_(X,Y,"t"),dcterms_title_(X,Y,"f") .
:-s16_(X,"f") .
:-s20_(X,"f") .
:-s21_(X,"t*"),skos_prefLabel_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s21_(X,"t*"),rdfs_label_(X,Y,"t**"),not skos_prefLabel_(X,Y,"t**") .
:-s25_(X,"f") .
:-s27_(X,"t*"),dcterms_title_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s27_(X,"t*"),rdfs_label_(X,Y,"t**"),not dcterms_title_(X,Y,"t**") .
:-s29_(X,"f") .
:-s33_(X,"f") .
:-s37_(X,"f") .
:-s38_(X,"t*"),skos_prefLabel_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s38_(X,"t*"),rdfs_label_(X,Y,"t**"),not skos_prefLabel_(X,Y,"t**") .
:-s42_(X,"f") .
:-s44_(X,"t*"),dcterms_title_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s44_(X,"t*"),rdfs_label_(X,Y,"t**"),not dcterms_title_(X,Y,"t**") .
:-s46_(X,"f") .
:-s50_(X,"f") .
:-s54_(X,"f") .
:-s55_(X,"t*"),skos_prefLabel_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s55_(X,"t*"),rdfs_label_(X,Y,"t**"),not skos_prefLabel_(X,Y,"t**") .
:-s59_(X,"f") .
:-s62_(X,"f") .
:-s63_(X,"t*"),dcterms_title_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s63_(X,"t*"),rdfs_label_(X,Y,"t**"),not dcterms_title_(X,Y,"t**") .
:-s67_(X,"f") .
:-s71_(X,"f") .
:-s72_(X,"t*"),skos_prefLabel_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s72_(X,"t*"),rdfs_label_(X,Y,"t**"),not skos_prefLabel_(X,Y,"t**") .
:-s76_(X,"f") .
:-s78_(X,"t*"),dcterms_title_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s78_(X,"t*"),rdfs_label_(X,Y,"t**"),not dcterms_title_(X,Y,"t**") .
:-s80_(X,"f") .
:-s84_(X,"f") .
:-s88_(X,"f") .
:-s89_(X,"t*"),skos_prefLabel_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s89_(X,"t*"),rdfs_label_(X,Y,"t**"),not skos_prefLabel_(X,Y,"t**") .
:-s93_(X,"f") .
:-s96_(X,"f") .
:-s97_(X,"t*"),dcterms_title_(X,Y,"t**"),not rdfs_label_(X,Y,"t**") .
:-s97_(X,"t*"),rdfs_label_(X,Y,"t**"),not dcterms_title_(X,Y,"t**") .
:-s101_(X,"f") .
:-rdfs_description_(X,Y,"t"),rdfs_description_(X,Y,"f") .
:-s105_(X,"f") .
:-s106_(X,"t*"),skos_definition_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s106_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_definition_(X,Y,"t**") .
:-skos_definition_(X,Y,"t"),skos_definition_(X,Y,"f") .
:-s110_(X,"f") .
:-s113_(X,"f") .
:-s114_(X,"t*"),skos_note_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s114_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_note_(X,Y,"t**") .
:-skos_note_(X,Y,"t"),skos_note_(X,Y,"f") .
:-s118_(X,"f") .
:-s122_(X,"f") .
:-s123_(X,"t*"),skos_definition_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s123_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_definition_(X,Y,"t**") .
:-s127_(X,"f") .
:-s130_(X,"f") .
:-s131_(X,"t*"),skos_note_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s131_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_note_(X,Y,"t**") .
:-s135_(X,"f") .
:-s139_(X,"f") .
:-s140_(X,"t*"),skos_definition_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s140_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_definition_(X,Y,"t**") .
:-s144_(X,"f") .
:-s146_(X,"t*"),skos_note_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s146_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_note_(X,Y,"t**") .
:-s148_(X,"f") .
:-s152_(X,"f") .
:-dcterms_modified_(X,Y,"t"),dcterms_modified_(X,Y,"f") .
:-s156_(X,"f") .
:-s158_(X,"f") .
:-s162_(X,"f") .
:-s165_(X,"f") .
:-s168_(X,"f") .
:-s172_(X,"f") .
:-s175_(X,"f") .
:-s178_(X,"f") .
:-s182_(X,"f") .
:-s186_(X,"f") .
:-s188_(X,"f") .
:-s192_(X,"f") .
:-s195_(X,"f") .
:-s198_(X,"f") .
:-s202_(X,"f") .
:-s205_(X,"f") .
:-s208_(X,"f") .
:-s212_(X,"f") .
:-s215_(X,"t*"),skos_definition_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s215_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_definition_(X,Y,"t**") .
:-s217_(X,"f") .
:-s221_(X,"f") .
:-s224_(X,"f") .
:-s225_(X,"t*"),skos_note_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s225_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_note_(X,Y,"t**") .
:-s229_(X,"f") .
:-s232_(X,"t*"),skos_definition_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s232_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_definition_(X,Y,"t**") .
:-s234_(X,"f") .
:-s238_(X,"f") .
:-s240_(X,"t*"),skos_note_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s240_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_note_(X,Y,"t**") .
:-s242_(X,"f") .
:-s246_(X,"f") .
:-s249_(X,"t*"),skos_definition_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s249_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_definition_(X,Y,"t**") .
:-s251_(X,"f") .
:-s255_(X,"f") .
:-s257_(X,"t*"),skos_note_(X,Y,"t**"),not rdfs_description_(X,Y,"t**") .
:-s257_(X,"t*"),rdfs_description_(X,Y,"t**"),not skos_note_(X,Y,"t**") .
:-s259_(X,"f") .
:-s263_(X,"f") .

% Change Set Rules

add(rdfs_label(X,Y)):-rdfs_label_(X,Y,"t**"),not rdfs_label(X,Y) .
del(rdfs_label(X,Y)):-rdfs_label_(X,Y,"f"),rdfs_label(X,Y) .
add(skos_prefLabel(X,Y)):-skos_prefLabel_(X,Y,"t**"),not skos_prefLabel(X,Y) .
del(skos_prefLabel(X,Y)):-skos_prefLabel_(X,Y,"f"),skos_prefLabel(X,Y) .
add(dcterms_title(X,Y)):-dcterms_title_(X,Y,"t**"),not dcterms_title(X,Y) .
del(dcterms_title(X,Y)):-dcterms_title_(X,Y,"f"),dcterms_title(X,Y) .
add(rdfs_description(X,Y)):-rdfs_description_(X,Y,"t**"),not rdfs_description(X,Y) .
del(rdfs_description(X,Y)):-rdfs_description_(X,Y,"f"),rdfs_description(X,Y) .
add(skos_definition(X,Y)):-skos_definition_(X,Y,"t**"),not skos_definition(X,Y) .
del(skos_definition(X,Y)):-skos_definition_(X,Y,"f"),skos_definition(X,Y) .
add(skos_note(X,Y)):-skos_note_(X,Y,"t**"),not skos_note(X,Y) .
del(skos_note(X,Y)):-skos_note_(X,Y,"f"),skos_note(X,Y) .
add(dcterms_modified(X,Y)):-dcterms_modified_(X,Y,"t**"),not dcterms_modified(X,Y) .
del(dcterms_modified(X,Y)):-dcterms_modified_(X,Y,"f"),dcterms_modified(X,Y) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

#maximize { 1@3,X,Y: add(rdfs_description(X,Y)) } .
#maximize { 1@3,X,Y: add(rdfs_label(X,Y)) } .
#maximize { 1@3,X,Y: del(dcterms_modified(X,Y)),dcterms_modified_(X,Z,"t**"),Y<=Z } .

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
