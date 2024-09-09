
% Graph Data

owl_ObjectProperty("d_p1") .
owl_ObjectProperty("d_p2") .
owl_ObjectProperty("d_p3") .
owl_ObjectProperty("d_p4") .
owl_Class("d_A") .
owl_Class("d_B") .
rdfs_subPropertyOf("d_p1","d_p2") .
rdfs_domain("d_p1","d_A") .
rdfs_domain("d_p2","d_b1") .
owl_unionOf("d_b1","d_b2") .
rdf_first("d_b2","d_A") .
rdf_rest("d_b2","d_b3") .
rdf_first("d_b3","d_B") .
rdf_rest("d_b3","rdf_nil") .
rdfs_subPropertyOf("d_p3","d_p4") .
rdfs_domain("d_p4","d_B") .
rdfs_domain("d_p3","d_b1") .
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

targetNode("d_p1",d_PropertyShape) .
targetNode("d_p1",d_DomainConsistencyShape) .
targetNode("d_p1",d_RangeConsistencyShape) .
targetNode("d_p2",d_PropertyShape) .
targetNode("d_p3",d_PropertyShape) .
targetNode("d_p3",d_DomainConsistencyShape) .
targetNode("d_p3",d_RangeConsistencyShape) .
targetNode("d_p4",d_PropertyShape) .
targetNode("d_B",d_ClassShape) .
targetNode("d_A",d_ClassShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PropertyShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyShape) .
d_DomainConsistencyShape_("d_p1","t*"):-actualTarget("d_p1",d_DomainConsistencyShape) .
d_RangeConsistencyShape_("d_p1","t*"):-actualTarget("d_p1",d_RangeConsistencyShape) .
d_PropertyShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyShape) .
d_PropertyShape_("d_p3","t*"):-actualTarget("d_p3",d_PropertyShape) .
d_DomainConsistencyShape_("d_p3","t*"):-actualTarget("d_p3",d_DomainConsistencyShape) .
d_RangeConsistencyShape_("d_p3","t*"):-actualTarget("d_p3",d_RangeConsistencyShape) .
d_PropertyShape_("d_p4","t*"):-actualTarget("d_p4",d_PropertyShape) .
d_ClassShape_("d_B","t*"):-actualTarget("d_B",d_ClassShape) .
d_ClassShape_("d_A","t*"):-actualTarget("d_A",d_ClassShape) .

% Annotation Rules

owl_inverseOf_(X,Y,"t*"):-owl_inverseOf(X,Y) .
owl_inverseOf_(X,Y,"t*"):-owl_inverseOf_(X,Y,"t") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
rdfs_domain_(X,Y,"t*"):-rdfs_domain(X,Y) .
rdfs_domain_(X,Y,"t*"):-rdfs_domain_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12597_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12597_(X,_),owl_inverseOf_(X,Y,"t*") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
dc_contributor_(X,Y,"t*"):-dc_contributor(X,Y) .
dc_contributor_(X,Y,"t*"):-dc_contributor_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12624_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,_),dc_contributor_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12594_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,_),rdfs_domain_(X,Y,"t*") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .
rdfs_subPropertyOf_(Y,X,"t"):-rdfs_subPropertyOf_inv_(X,Y,"t") .
rdfs_subPropertyOf_inv_(X,Y,"t*"):-rdfs_subPropertyOf_(Y,X,"t*") .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"f"):-rdfs_subPropertyOf_(Y,X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12595_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty(X) .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty_(X,"t") .
owl_unionOf_(X,Y,"t*"):-owl_unionOf(X,Y) .
owl_unionOf_(X,Y,"t*"):-owl_unionOf_(X,Y,"t") .
rdf_rest_(X,Y,"t*"):-rdf_rest(X,Y) .
rdf_rest_(X,Y,"t*"):-rdf_rest_(X,Y,"t") .
rdf_rest_star_(X,Y,"t*"):-rdf_rest_(X,Y,"t*") .
rdf_rest_star_(X,Z,"t*"):-rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*") .
rdf_first_(X,Y,"t*"):-rdf_first(X,Y) .
rdf_first_(X,Y,"t*"):-rdf_first_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,_),rdfs_domain_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12582_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12591_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12584_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12573_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12580_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,_),rdfs_range_(X,Y,"t*") .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty(X) .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty_(X,"t") .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty(X) .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12592_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty(X) .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,"t*"):-s0_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,"f"):-s0_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12601
s1_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*");s2_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,X1,"f") .
0 {s2_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t**")} 0:-s1_(X,"t*") .


s3_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f"):-s3_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s3_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s3_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12601
s4_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,@new(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,1..1),"t"):-choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,1) .
choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,1);choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st,0):-s5_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*");s6_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s3_(X,"f");s4_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_(X,"f") .
s8_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12597_(X,"t*"):-s8_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12597_(X,"f"):-s8_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12597
s9_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12597_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s10_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,Y,"f"):-owl_inverseOf_(X,Y,"t*"),owl_inverseOf_(X,Y,"f") .
0 {s10_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 0:-s9_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s10_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s10_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12597
s11_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12597_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
owl_inverseOf_(X,@new(s12,X,owl_inverseOf,1..1),"t"):-choose(s12,X,owl_inverseOf,1) .
choose(s12,X,owl_inverseOf,1);choose(s12,X,owl_inverseOf,0):-s12_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s13_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
1 {s13_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 1:-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .

owl_ObjectProperty_(X,"t"):-s14_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s14_(X,"f") .

s9_(X,"f");s11_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12597_(X,"f") .
s15_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,"t*"):-s15_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,"f"):-s15_(X,"f") .


s16_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f"):-s16_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s16_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s16_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12598
s17_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*");s18_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f")} (C-0):-s17_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,X1,"f") .
0 {s18_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t**")} 0:-s17_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12598
s19_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,@new(s20,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,1..1),"t"):-choose(s20,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,1) .
choose(s20,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,1);choose(s20,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st,0):-s20_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*");s21_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f")} (C-0):-s20_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t*")}=C,C>0 .
1 {s21_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t**")} 1:-s20_(X,"t*") .
s22_(X,"f"):-s21_(X,"t*") .
s22_(X,"t*"):-s21_(X,"f") .


s16_(X,"f");s17_(X,"f");s19_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_(X,"f") .
s23_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s23_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s23_(X,"f") .
s0_(X,"f");s8_(X,"f");s15_(X,"f");s23_(X,"f"):-d_InversePropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,"t*"):-d_UniqueContributorShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,"f"):-d_UniqueContributorShape_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd12624
s24_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
dc_contributor_(X,@new(s25,X,dc_contributor,1..1),"t"):-choose(s25,X,dc_contributor,1) .
dc_contributor_(X,@new(s25,X,dc_contributor,1..2),"t"):-choose(s25,X,dc_contributor,2) .
choose(s25,X,dc_contributor,2);choose(s25,X,dc_contributor,1);choose(s25,X,dc_contributor,0):-s25_(X,"t*") .
(C-1) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s26_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>1 .
dc_contributor_(X,Y,"f"):-dc_contributor_(X,Y,"t*"),dc_contributor_(X,Y,"f") .
2 {s26_(Y,"t*"):dc_contributor_(X,Y,"t**")} 2:-s25_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12624
s27_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s28_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
0 {s28_(Y,"t*"):dc_contributor_(X,Y,"t**")} 0:-s27_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12624
s29_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
dc_contributor_(X,@new(s30,X,dc_contributor,1..1),"t"):-choose(s30,X,dc_contributor,1) .
choose(s30,X,dc_contributor,1);choose(s30,X,dc_contributor,0):-s30_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s31_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):dc_contributor_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s24_(X,"f");s27_(X,"f");s29_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12624_(X,"f") .
s33_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,"t*"):-s33_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,"f"):-s33_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12594
s34_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s35_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,Y,"f"):-rdfs_domain_(X,Y,"t*"),rdfs_domain_(X,Y,"f") .
0 {s35_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s34_(X,"t*") .


s36_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,"t*") .
rdfs_range_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s36_(X,"t*"),rdfs_domain_(X,Y,"t*") .
rdfs_domain_(X,Y,"t");rdfs_range_(X,Y,"f"):-s36_(X,"t*"),rdfs_range_(X,Y,"t*") .
notEquals(s36,X,rdfs_domain,rdfs_range):-s36_(X,"f"),rdfs_domain_(X,Y,"t*"),not rdfs_range_(X,Y,"t*") .
notEquals(s36,X,rdfs_domain,rdfs_range):-s36_(X,"f"),not rdfs_domain_(X,Y,"t*"),rdfs_range_(X,Y,"t*") .
1 {rdfs_domain_(X,Y,"f"):rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):rdfs_domain_(X,Y,"t*");rdfs_domain_(X,@new(s36,X,rdfs_domain,1),"t*");rdfs_range_(X,@new(s36,X,rdfs_range,1),"t*")} 1:-s36_(X,"f"),not notEquals(s36,X,rdfs_domain,rdfs_range) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12594
s37_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
rdfs_domain_(X,@new(s38,X,rdfs_domain,1..1),"t"):-choose(s38,X,rdfs_domain,1) .
choose(s38,X,rdfs_domain,1);choose(s38,X,rdfs_domain,0):-s38_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s39_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s38_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s39_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s38_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .


s34_(X,"f");s36_(X,"f");s37_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12594_(X,"f") .
s41_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s41_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s41_(X,"f") .
s42_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12595_(X,"t*"):-s42_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12595_(X,"f"):-s42_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12595
s43_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12595_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*");s44_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"f") .
0 {s44_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t**")} 0:-s43_(X,"t*") .

owl_SymmetricProperty_(X,"t"):-s44_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s44_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12595
s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12595_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s46,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s46,X,rdfs_subPropertyOf,1) .
choose(s46,X,rdfs_subPropertyOf,1);choose(s46,X,rdfs_subPropertyOf,0):-s46_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*");s47_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .

owl_SymmetricProperty_(X,"t"):-s48_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s48_(X,"f") .

s43_(X,"f");s45_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12595_(X,"f") .
s33_(X,"f");s41_(X,"f");s42_(X,"f"):-d_SymmetricPropertyShape_(X,"f") .
s49_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*"):-s49_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"f"):-s49_(X,"f") .



rdf_rest_star_(X,Y,"f");rdf_rest_(Y,Z,"f"):-rdf_rest_star_(X,Z,"f"),rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*"),X!=Y .
rdf_rest_(X,Y,"f"):-rdf_rest_star_(X,Y,"f"),rdf_rest_(X,Y,"t*") .

rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12561
s50_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X,rdfs_domain,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X,rdfs_domain,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t") .
rdfs_domain_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X,rdfs_domain,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X,rdfs_domain,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X0,owl_unionOf,0):-rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,X0,owl_unionOf,1),rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*");s51_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f")} (C-0):-s50_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,X3,"f") .
0 {s51_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t**")} 0:-s50_(X,"t*") .

s52_(X,"t*"):-s51_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s52_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s52_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f") .
s53_(X,"t*"):-s51_(X,"t*") .
owl_Class_(X,"t"):-s53_(X,"t*") .
owl_Class_(X,"f"):-s53_(X,"f") .
s52_(X,"f");s53_(X,"f"):-s51_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12561
s54_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,@new(s55,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1..1),"t"):-choose(s55,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1) .
choose(s55,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1);choose(s55,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,0):-s55_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*");s56_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f")} (C-0):-s55_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*")}=C,C>0 .
1 {s56_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t**")} 1:-s55_(X,"t*") .
s57_(X,"f"):-s56_(X,"t*") .
s57_(X,"t*"):-s56_(X,"f") .

s58_(X,"t*"):-s57_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s58_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s58_(X,"f") .
s59_(X,"t*"):-s57_(X,"t*") .
owl_Class_(X,"t"):-s59_(X,"t*") .
owl_Class_(X,"f"):-s59_(X,"f") .
s58_(X,"f");s59_(X,"f"):-s57_(X,"f") .

s50_(X,"f");s54_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"f") .
s60_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"f"):-s60_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"t*"):-s60_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"f") .
s61_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*"):-s61_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f"):-s61_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12560
s62_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s63_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s62_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s63_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s62_(X,"t*") .

s64_(X,"t*"):-s63_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s64_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s64_(X,"f") .
s65_(X,"t*"):-s63_(X,"t*") .
owl_Class_(X,"t"):-s65_(X,"t*") .
owl_Class_(X,"f"):-s65_(X,"f") .
s64_(X,"f");s65_(X,"f"):-s63_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12560
s66_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .
rdfs_domain_(X,@new(s67,X,rdfs_domain,1..1),"t"):-choose(s67,X,rdfs_domain,1) .
choose(s67,X,rdfs_domain,1);choose(s67,X,rdfs_domain,0):-s67_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s68_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s68_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s67_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .

s70_(X,"t*"):-s69_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s70_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s70_(X,"f") .
s71_(X,"t*"):-s69_(X,"t*") .
owl_Class_(X,"t"):-s71_(X,"t*") .
owl_Class_(X,"f"):-s71_(X,"f") .
s70_(X,"f");s71_(X,"f"):-s69_(X,"f") .

s62_(X,"f");s66_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f") .
s72_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*"):-s72_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f"):-s72_(X,"f") .

s73_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s74_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s73_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s74_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s73_(X,"t*") .

s75_(X,"t*"):-s74_(X,"t*") .
owl_Class_(X,"t"):-s75_(X,"t*") .
owl_Class_(X,"f"):-s75_(X,"f") .
s76_(X,"t*"):-s74_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s76_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s76_(X,"f") .
s75_(X,"f");s76_(X,"f"):-s74_(X,"f") .

s77_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s78_(X,"f"):-s77_(X,"t*") .
s78_(X,"t*"):-s77_(X,"f") .
rdfs_domain_(X,@new(s78,X,rdfs_domain,1..1),"t"):-choose(s78,X,rdfs_domain,1) .
choose(s78,X,rdfs_domain,1);choose(s78,X,rdfs_domain,0):-s78_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s79_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s78_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s79_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s78_(X,"t*") .
s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .

s81_(X,"t*"):-s80_(X,"t*") .
owl_Class_(X,"t"):-s81_(X,"t*") .
owl_Class_(X,"f"):-s81_(X,"f") .
s82_(X,"t*"):-s80_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s82_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s82_(X,"f") .
s81_(X,"f");s82_(X,"f"):-s80_(X,"f") .

s73_(X,"f");s77_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f") .
s83_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*"):-s83_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f"):-s83_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd12560
s84_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s85_(X,"f"):-s84_(X,"t*") .
s85_(X,"t*"):-s84_(X,"f") .
rdfs_domain_(X,@new(s85,X,rdfs_domain,1..1),"t"):-choose(s85,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s85,X,rdfs_domain,1..2),"t"):-choose(s85,X,rdfs_domain,2) .
choose(s85,X,rdfs_domain,2);choose(s85,X,rdfs_domain,1);choose(s85,X,rdfs_domain,0):-s85_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s86_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s85_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s86_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s85_(X,"t*") .


s87_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s88_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s87_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s88_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s87_(X,"t*") .


s89_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s90_(X,"f"):-s89_(X,"t*") .
s90_(X,"t*"):-s89_(X,"f") .
rdfs_domain_(X,@new(s90,X,rdfs_domain,1..1),"t"):-choose(s90,X,rdfs_domain,1) .
choose(s90,X,rdfs_domain,1);choose(s90,X,rdfs_domain,0):-s90_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s91_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s91_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s90_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .


s84_(X,"f");s87_(X,"f");s89_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f") .
s93_(X,"t*"):-d_PropertyShape_(X,"t*") .
s94_(X,"f"):-s93_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*"):-s94_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12585
s95_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*");s96_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f")} (C-0):-s95_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,X3,"f") .
0 {s96_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t**")} 0:-s95_(X,"t*") .

s97_(X,"t*"):-s96_(X,"t*") .
rdfs_Datatype_(X,"t"):-s97_(X,"t*") .
rdfs_Datatype_(X,"f"):-s97_(X,"f") .
s98_(X,"t*"):-s96_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s98_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s98_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f") .
s97_(X,"f");s98_(X,"f"):-s96_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12585
s99_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*") .
s100_(X,"f"):-s99_(X,"t*") .
s100_(X,"t*"):-s99_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,@new(s100,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1..1),"t"):-choose(s100,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1) .
choose(s100,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1);choose(s100,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,0):-s100_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*");s101_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f")} (C-0):-s100_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*")}=C,C>0 .
1 {s101_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t**")} 1:-s100_(X,"t*") .
s102_(X,"f"):-s101_(X,"t*") .
s102_(X,"t*"):-s101_(X,"f") .

s103_(X,"t*"):-s102_(X,"t*") .
rdfs_Datatype_(X,"t"):-s103_(X,"t*") .
rdfs_Datatype_(X,"f"):-s103_(X,"f") .
s104_(X,"t*"):-s102_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s104_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s104_(X,"f") .
s103_(X,"f");s104_(X,"f"):-s102_(X,"f") .

s95_(X,"f");s99_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*"):-s94_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12582
s105_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s106_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s105_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s106_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s105_(X,"t*") .

s107_(X,"t*"):-s106_(X,"t*") .
rdfs_Datatype_(X,"t"):-s107_(X,"t*") .
rdfs_Datatype_(X,"f"):-s107_(X,"f") .
s108_(X,"t*"):-s106_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s108_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s108_(X,"f") .
s107_(X,"f");s108_(X,"f"):-s106_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12582
s109_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*") .
s110_(X,"f"):-s109_(X,"t*") .
s110_(X,"t*"):-s109_(X,"f") .
rdfs_range_(X,@new(s110,X,rdfs_range,1..1),"t"):-choose(s110,X,rdfs_range,1) .
choose(s110,X,rdfs_range,1);choose(s110,X,rdfs_range,0):-s110_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s111_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s110_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s111_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s110_(X,"t*") .
s112_(X,"f"):-s111_(X,"t*") .
s112_(X,"t*"):-s111_(X,"f") .

s113_(X,"t*"):-s112_(X,"t*") .
rdfs_Datatype_(X,"t"):-s113_(X,"t*") .
rdfs_Datatype_(X,"f"):-s113_(X,"f") .
s114_(X,"t*"):-s112_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s114_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s114_(X,"f") .
s113_(X,"f");s114_(X,"f"):-s112_(X,"f") .

s105_(X,"f");s109_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*"):-s94_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12591
s115_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s116_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s115_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s116_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s115_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s116_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s116_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12591
s117_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*") .
s118_(X,"f"):-s117_(X,"t*") .
s118_(X,"t*"):-s117_(X,"f") .
rdfs_subPropertyOf_(X,@new(s118,X,rdfs_subPropertyOf,1..1),"t"):-choose(s118,X,rdfs_subPropertyOf,1) .
choose(s118,X,rdfs_subPropertyOf,1);choose(s118,X,rdfs_subPropertyOf,0):-s118_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s119_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s118_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s119_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s118_(X,"t*") .
s120_(X,"f"):-s119_(X,"t*") .
s120_(X,"t*"):-s119_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s120_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s120_(X,"f") .

s115_(X,"f");s117_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"f") .
s121_(X,"t*"):-s94_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s121_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s121_(X,"f") .
s122_(X,"t*"):-s94_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"f"):-s122_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"t*"):-s122_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12584
s123_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s124_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s123_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s124_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s123_(X,"t*") .

s125_(X,"t*"):-s124_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s125_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s125_(X,"f") .
s126_(X,"t*"):-s124_(X,"t*") .
owl_Class_(X,"t"):-s126_(X,"t*") .
owl_Class_(X,"f"):-s126_(X,"f") .
s125_(X,"f");s126_(X,"f"):-s124_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12584
s127_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*") .
s128_(X,"f"):-s127_(X,"t*") .
s128_(X,"t*"):-s127_(X,"f") .
rdfs_range_(X,@new(s128,X,rdfs_range,1..1),"t"):-choose(s128,X,rdfs_range,1) .
choose(s128,X,rdfs_range,1);choose(s128,X,rdfs_range,0):-s128_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s129_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s128_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s129_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s128_(X,"t*") .
s130_(X,"f"):-s129_(X,"t*") .
s130_(X,"t*"):-s129_(X,"f") .

s131_(X,"t*"):-s130_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s131_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s131_(X,"f") .
s132_(X,"t*"):-s130_(X,"t*") .
owl_Class_(X,"t"):-s132_(X,"t*") .
owl_Class_(X,"f"):-s132_(X,"f") .
s131_(X,"f");s132_(X,"f"):-s130_(X,"f") .

s123_(X,"f");s127_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"f") .
s133_(X,"t*"):-s94_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"f"):-s133_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"t*"):-s133_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"f");s121_(X,"f");s122_(X,"f");s133_(X,"f"):-s94_(X,"f") .
s134_(X,"f"):-s93_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*"):-s134_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12574
s135_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*");s136_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f")} (C-0):-s135_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,X3,"f") .
0 {s136_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t**")} 0:-s135_(X,"t*") .

s137_(X,"t*"):-s136_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s137_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s137_(X,"f") .
s138_(X,"t*"):-s136_(X,"t*") .
owl_Class_(X,"t"):-s138_(X,"t*") .
owl_Class_(X,"f"):-s138_(X,"f") .
s137_(X,"f");s138_(X,"f"):-s136_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12574
s139_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*") .
s140_(X,"f"):-s139_(X,"t*") .
s140_(X,"t*"):-s139_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,@new(s140,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1..1),"t"):-choose(s140,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1) .
choose(s140,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1);choose(s140,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,0):-s140_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*");s141_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f")} (C-0):-s140_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*")}=C,C>0 .
1 {s141_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t**")} 1:-s140_(X,"t*") .
s142_(X,"f"):-s141_(X,"t*") .
s142_(X,"t*"):-s141_(X,"f") .

s143_(X,"t*"):-s142_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s143_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s143_(X,"f") .
s144_(X,"t*"):-s142_(X,"t*") .
owl_Class_(X,"t"):-s144_(X,"t*") .
owl_Class_(X,"f"):-s144_(X,"f") .
s143_(X,"f");s144_(X,"f"):-s142_(X,"f") .

s135_(X,"f");s139_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*"):-s134_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12573
s145_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s146_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s145_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s146_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s145_(X,"t*") .

s147_(X,"t*"):-s146_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s147_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s147_(X,"f") .
s148_(X,"t*"):-s146_(X,"t*") .
owl_Class_(X,"t"):-s148_(X,"t*") .
owl_Class_(X,"f"):-s148_(X,"f") .
s147_(X,"f");s148_(X,"f"):-s146_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12573
s149_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*") .
s150_(X,"f"):-s149_(X,"t*") .
s150_(X,"t*"):-s149_(X,"f") .
rdfs_range_(X,@new(s150,X,rdfs_range,1..1),"t"):-choose(s150,X,rdfs_range,1) .
choose(s150,X,rdfs_range,1);choose(s150,X,rdfs_range,0):-s150_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s151_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s150_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s151_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s150_(X,"t*") .
s152_(X,"f"):-s151_(X,"t*") .
s152_(X,"t*"):-s151_(X,"f") .

s153_(X,"t*"):-s152_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s153_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s153_(X,"f") .
s154_(X,"t*"):-s152_(X,"t*") .
owl_Class_(X,"t"):-s154_(X,"t*") .
owl_Class_(X,"f"):-s154_(X,"f") .
s153_(X,"f");s154_(X,"f"):-s152_(X,"f") .

s145_(X,"f");s149_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*"):-s134_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12580
s155_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s156_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s155_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s156_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s155_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s156_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s156_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12580
s157_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*") .
s158_(X,"f"):-s157_(X,"t*") .
s158_(X,"t*"):-s157_(X,"f") .
rdfs_subPropertyOf_(X,@new(s158,X,rdfs_subPropertyOf,1..1),"t"):-choose(s158,X,rdfs_subPropertyOf,1) .
choose(s158,X,rdfs_subPropertyOf,1);choose(s158,X,rdfs_subPropertyOf,0):-s158_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s159_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s158_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s159_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s158_(X,"t*") .
s160_(X,"f"):-s159_(X,"t*") .
s160_(X,"t*"):-s159_(X,"f") .

owl_ObjectProperty_(X,"t"):-s160_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s160_(X,"f") .

s155_(X,"f");s157_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"f") .
s161_(X,"t*"):-s134_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"f"):-s161_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"t*"):-s161_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"f") .
s162_(X,"t*"):-s134_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s162_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s162_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"f");s161_(X,"f");s162_(X,"f"):-s134_(X,"f") .
s94_(X,"t*");s134_(X,"t*"):-s93_(X,"t*") .
s163_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*"):-s163_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"f"):-s163_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12567
s164_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s165_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s164_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s165_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s164_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd12567
s166_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
s167_(X,"f"):-s166_(X,"t*") .
s167_(X,"t*"):-s166_(X,"f") .
rdfs_range_(X,@new(s167,X,rdfs_range,1..1),"t"):-choose(s167,X,rdfs_range,1) .
rdfs_range_(X,@new(s167,X,rdfs_range,1..2),"t"):-choose(s167,X,rdfs_range,2) .
choose(s167,X,rdfs_range,2);choose(s167,X,rdfs_range,1);choose(s167,X,rdfs_range,0):-s167_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s168_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s167_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s168_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s167_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12567
s169_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
s170_(X,"f"):-s169_(X,"t*") .
s170_(X,"t*"):-s169_(X,"f") .
rdfs_range_(X,@new(s170,X,rdfs_range,1..1),"t"):-choose(s170,X,rdfs_range,1) .
choose(s170,X,rdfs_range,1);choose(s170,X,rdfs_range,0):-s170_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s171_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s170_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s171_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s170_(X,"t*") .
s172_(X,"f"):-s171_(X,"t*") .
s172_(X,"t*"):-s171_(X,"f") .


s164_(X,"f");s166_(X,"f");s169_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"f") .
s173_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*"):-s173_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"f"):-s173_(X,"f") .




s174_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*");s175_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f")} (C-0):-s174_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*")}=C,C>0 .
0 {s175_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t**")} 0:-s174_(X,"t*") .

s176_(X,"t*"):-s175_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s176_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s176_(X,"f") .
s177_(X,"t*"):-s175_(X,"t*") .
owl_Class_(X,"t"):-s177_(X,"t*") .
owl_Class_(X,"f"):-s177_(X,"f") .
s176_(X,"f");s177_(X,"f"):-s175_(X,"f") .

s178_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*") .
s179_(X,"f"):-s178_(X,"t*") .
s179_(X,"t*"):-s178_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,@new(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1..1),"t"):-choose(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1) .
choose(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1);choose(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,0):-s179_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*");s180_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f")} (C-0):-s179_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*")}=C,C>0 .
1 {s180_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t**")} 1:-s179_(X,"t*") .
s181_(X,"f"):-s180_(X,"t*") .
s181_(X,"t*"):-s180_(X,"f") .

s182_(X,"t*"):-s181_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s182_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s182_(X,"f") .
s183_(X,"t*"):-s181_(X,"t*") .
owl_Class_(X,"t"):-s183_(X,"t*") .
owl_Class_(X,"f"):-s183_(X,"f") .
s182_(X,"f");s183_(X,"f"):-s181_(X,"f") .

s174_(X,"f");s178_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"f") .
s184_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*"):-s184_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"f"):-s184_(X,"f") .

s185_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
s186_(X,"f"):-s185_(X,"t*") .
s186_(X,"t*"):-s185_(X,"f") .
rdfs_range_(X,@new(s186,X,rdfs_range,1..1),"t"):-choose(s186,X,rdfs_range,1) .
rdfs_range_(X,@new(s186,X,rdfs_range,1..2),"t"):-choose(s186,X,rdfs_range,2) .
choose(s186,X,rdfs_range,2);choose(s186,X,rdfs_range,1);choose(s186,X,rdfs_range,0):-s186_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s187_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s186_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s187_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s186_(X,"t*") .


s188_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s189_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s188_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s189_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s188_(X,"t*") .


s190_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
s191_(X,"f"):-s190_(X,"t*") .
s191_(X,"t*"):-s190_(X,"f") .
rdfs_range_(X,@new(s191,X,rdfs_range,1..1),"t"):-choose(s191,X,rdfs_range,1) .
choose(s191,X,rdfs_range,1);choose(s191,X,rdfs_range,0):-s191_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s192_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s191_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s192_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s191_(X,"t*") .
s193_(X,"f"):-s192_(X,"t*") .
s193_(X,"t*"):-s192_(X,"f") .


s185_(X,"f");s188_(X,"f");s190_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"f") .
s194_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"f"):-s194_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"t*"):-s194_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"f") .
s195_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*"):-s195_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f"):-s195_(X,"f") .

s196_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s197_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s196_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s197_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s196_(X,"t*") .


s198_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s199_(X,"f"):-s198_(X,"t*") .
s199_(X,"t*"):-s198_(X,"f") .
rdfs_domain_(X,@new(s199,X,rdfs_domain,1..1),"t"):-choose(s199,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s199,X,rdfs_domain,1..2),"t"):-choose(s199,X,rdfs_domain,2) .
choose(s199,X,rdfs_domain,2);choose(s199,X,rdfs_domain,1);choose(s199,X,rdfs_domain,0):-s199_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s200_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s199_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s200_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s199_(X,"t*") .


s201_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s202_(X,"f"):-s201_(X,"t*") .
s202_(X,"t*"):-s201_(X,"f") .
rdfs_domain_(X,@new(s202,X,rdfs_domain,1..1),"t"):-choose(s202,X,rdfs_domain,1) .
choose(s202,X,rdfs_domain,1);choose(s202,X,rdfs_domain,0):-s202_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s203_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s202_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s203_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s202_(X,"t*") .
s204_(X,"f"):-s203_(X,"t*") .
s204_(X,"t*"):-s203_(X,"f") .


s196_(X,"f");s198_(X,"f");s201_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f") .
s205_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"f"):-s205_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"t*"):-s205_(X,"f") .
s206_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*"):-s206_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f"):-s206_(X,"f") .

s207_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s208_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s207_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s208_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s207_(X,"t*") .


s209_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s210_(X,"f"):-s209_(X,"t*") .
s210_(X,"t*"):-s209_(X,"f") .
rdfs_domain_(X,@new(s210,X,rdfs_domain,1..1),"t"):-choose(s210,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s210,X,rdfs_domain,1..2),"t"):-choose(s210,X,rdfs_domain,2) .
choose(s210,X,rdfs_domain,2);choose(s210,X,rdfs_domain,1);choose(s210,X,rdfs_domain,0):-s210_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s211_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s210_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s211_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s210_(X,"t*") .


s212_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s213_(X,"f"):-s212_(X,"t*") .
s213_(X,"t*"):-s212_(X,"f") .
rdfs_domain_(X,@new(s213,X,rdfs_domain,1..1),"t"):-choose(s213,X,rdfs_domain,1) .
choose(s213,X,rdfs_domain,1);choose(s213,X,rdfs_domain,0):-s213_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s214_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s213_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s214_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s213_(X,"t*") .
s215_(X,"f"):-s214_(X,"t*") .
s215_(X,"t*"):-s214_(X,"f") .


s207_(X,"f");s209_(X,"f");s212_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f") .
s216_(X,"t*"):-d_PropertyShape_(X,"t*") .
s217_(X,"f"):-s216_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*"):-s217_(X,"t*") .




s218_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*");s219_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f")} (C-0):-s218_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*")}=C,C>0 .
0 {s219_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t**")} 0:-s218_(X,"t*") .

s220_(X,"t*"):-s219_(X,"t*") .
rdfs_Datatype_(X,"t"):-s220_(X,"t*") .
rdfs_Datatype_(X,"f"):-s220_(X,"f") .
s221_(X,"t*"):-s219_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s221_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s221_(X,"f") .
s220_(X,"f");s221_(X,"f"):-s219_(X,"f") .

s222_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*") .
s223_(X,"f"):-s222_(X,"t*") .
s223_(X,"t*"):-s222_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,@new(s223,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1..1),"t"):-choose(s223,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1) .
choose(s223,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1);choose(s223,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,0):-s223_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*");s224_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f")} (C-0):-s223_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*")}=C,C>0 .
1 {s224_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t**")} 1:-s223_(X,"t*") .
s225_(X,"f"):-s224_(X,"t*") .
s225_(X,"t*"):-s224_(X,"f") .

s226_(X,"t*"):-s225_(X,"t*") .
rdfs_Datatype_(X,"t"):-s226_(X,"t*") .
rdfs_Datatype_(X,"f"):-s226_(X,"f") .
s227_(X,"t*"):-s225_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s227_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s227_(X,"f") .
s226_(X,"f");s227_(X,"f"):-s225_(X,"f") .

s218_(X,"f");s222_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*"):-s217_(X,"t*") .

s228_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s229_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s228_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s229_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s228_(X,"t*") .

s230_(X,"t*"):-s229_(X,"t*") .
rdfs_Datatype_(X,"t"):-s230_(X,"t*") .
rdfs_Datatype_(X,"f"):-s230_(X,"f") .
s231_(X,"t*"):-s229_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s231_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s231_(X,"f") .
s230_(X,"f");s231_(X,"f"):-s229_(X,"f") .

s232_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*") .
s233_(X,"f"):-s232_(X,"t*") .
s233_(X,"t*"):-s232_(X,"f") .
rdfs_range_(X,@new(s233,X,rdfs_range,1..1),"t"):-choose(s233,X,rdfs_range,1) .
choose(s233,X,rdfs_range,1);choose(s233,X,rdfs_range,0):-s233_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s234_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s233_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s234_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s233_(X,"t*") .
s235_(X,"f"):-s234_(X,"t*") .
s235_(X,"t*"):-s234_(X,"f") .

s236_(X,"t*"):-s235_(X,"t*") .
rdfs_Datatype_(X,"t"):-s236_(X,"t*") .
rdfs_Datatype_(X,"f"):-s236_(X,"f") .
s237_(X,"t*"):-s235_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s237_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s237_(X,"f") .
s236_(X,"f");s237_(X,"f"):-s235_(X,"f") .

s228_(X,"f");s232_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*"):-s217_(X,"t*") .

s238_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s239_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s238_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s239_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s238_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s239_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s239_(X,"f") .

s240_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*") .
s241_(X,"f"):-s240_(X,"t*") .
s241_(X,"t*"):-s240_(X,"f") .
rdfs_subPropertyOf_(X,@new(s241,X,rdfs_subPropertyOf,1..1),"t"):-choose(s241,X,rdfs_subPropertyOf,1) .
choose(s241,X,rdfs_subPropertyOf,1);choose(s241,X,rdfs_subPropertyOf,0):-s241_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s242_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s241_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s242_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s241_(X,"t*") .
s243_(X,"f"):-s242_(X,"t*") .
s243_(X,"t*"):-s242_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s243_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s243_(X,"f") .

s238_(X,"f");s240_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"f") .
s244_(X,"t*"):-s217_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s244_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s244_(X,"f") .
s245_(X,"t*"):-s217_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"f"):-s245_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"t*"):-s245_(X,"f") .

s246_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s247_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s246_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s247_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s246_(X,"t*") .

s248_(X,"t*"):-s247_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s248_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s248_(X,"f") .
s249_(X,"t*"):-s247_(X,"t*") .
owl_Class_(X,"t"):-s249_(X,"t*") .
owl_Class_(X,"f"):-s249_(X,"f") .
s248_(X,"f");s249_(X,"f"):-s247_(X,"f") .

s250_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*") .
s251_(X,"f"):-s250_(X,"t*") .
s251_(X,"t*"):-s250_(X,"f") .
rdfs_range_(X,@new(s251,X,rdfs_range,1..1),"t"):-choose(s251,X,rdfs_range,1) .
choose(s251,X,rdfs_range,1);choose(s251,X,rdfs_range,0):-s251_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s252_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s251_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s252_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s251_(X,"t*") .
s253_(X,"f"):-s252_(X,"t*") .
s253_(X,"t*"):-s252_(X,"f") .

s254_(X,"t*"):-s253_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s254_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s254_(X,"f") .
s255_(X,"t*"):-s253_(X,"t*") .
owl_Class_(X,"t"):-s255_(X,"t*") .
owl_Class_(X,"f"):-s255_(X,"f") .
s254_(X,"f");s255_(X,"f"):-s253_(X,"f") .

s246_(X,"f");s250_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"f") .
s256_(X,"t*"):-s217_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"f"):-s256_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"t*"):-s256_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"f");s244_(X,"f");s245_(X,"f");s256_(X,"f"):-s217_(X,"f") .
s257_(X,"f"):-s216_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*"):-s257_(X,"t*") .




s258_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*");s259_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f")} (C-0):-s258_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*")}=C,C>0 .
0 {s259_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t**")} 0:-s258_(X,"t*") .

s260_(X,"t*"):-s259_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s260_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s260_(X,"f") .
s261_(X,"t*"):-s259_(X,"t*") .
owl_Class_(X,"t"):-s261_(X,"t*") .
owl_Class_(X,"f"):-s261_(X,"f") .
s260_(X,"f");s261_(X,"f"):-s259_(X,"f") .

s262_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*") .
s263_(X,"f"):-s262_(X,"t*") .
s263_(X,"t*"):-s262_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,@new(s263,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1..1),"t"):-choose(s263,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1) .
choose(s263,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1);choose(s263,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,0):-s263_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*");s264_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f")} (C-0):-s263_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*")}=C,C>0 .
1 {s264_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t**")} 1:-s263_(X,"t*") .
s265_(X,"f"):-s264_(X,"t*") .
s265_(X,"t*"):-s264_(X,"f") .

s266_(X,"t*"):-s265_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s266_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s266_(X,"f") .
s267_(X,"t*"):-s265_(X,"t*") .
owl_Class_(X,"t"):-s267_(X,"t*") .
owl_Class_(X,"f"):-s267_(X,"f") .
s266_(X,"f");s267_(X,"f"):-s265_(X,"f") .

s258_(X,"f");s262_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*"):-s257_(X,"t*") .

s268_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s269_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s268_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s269_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s268_(X,"t*") .

s270_(X,"t*"):-s269_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s270_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s270_(X,"f") .
s271_(X,"t*"):-s269_(X,"t*") .
owl_Class_(X,"t"):-s271_(X,"t*") .
owl_Class_(X,"f"):-s271_(X,"f") .
s270_(X,"f");s271_(X,"f"):-s269_(X,"f") .

s272_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*") .
s273_(X,"f"):-s272_(X,"t*") .
s273_(X,"t*"):-s272_(X,"f") .
rdfs_range_(X,@new(s273,X,rdfs_range,1..1),"t"):-choose(s273,X,rdfs_range,1) .
choose(s273,X,rdfs_range,1);choose(s273,X,rdfs_range,0):-s273_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s274_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s273_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s274_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s273_(X,"t*") .
s275_(X,"f"):-s274_(X,"t*") .
s275_(X,"t*"):-s274_(X,"f") .

s276_(X,"t*"):-s275_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s276_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s276_(X,"f") .
s277_(X,"t*"):-s275_(X,"t*") .
owl_Class_(X,"t"):-s277_(X,"t*") .
owl_Class_(X,"f"):-s277_(X,"f") .
s276_(X,"f");s277_(X,"f"):-s275_(X,"f") .

s268_(X,"f");s272_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*"):-s257_(X,"t*") .

s278_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s279_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s278_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s279_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s278_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s279_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s279_(X,"f") .

s280_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*") .
s281_(X,"f"):-s280_(X,"t*") .
s281_(X,"t*"):-s280_(X,"f") .
rdfs_subPropertyOf_(X,@new(s281,X,rdfs_subPropertyOf,1..1),"t"):-choose(s281,X,rdfs_subPropertyOf,1) .
choose(s281,X,rdfs_subPropertyOf,1);choose(s281,X,rdfs_subPropertyOf,0):-s281_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s282_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s281_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s282_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s281_(X,"t*") .
s283_(X,"f"):-s282_(X,"t*") .
s283_(X,"t*"):-s282_(X,"f") .

owl_ObjectProperty_(X,"t"):-s283_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s283_(X,"f") .

s278_(X,"f");s280_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"f") .
s284_(X,"t*"):-s257_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"f"):-s284_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"t*"):-s284_(X,"f") .
s285_(X,"t*"):-s257_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s285_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s285_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"f");s284_(X,"f");s285_(X,"f"):-s257_(X,"f") .
s217_(X,"t*");s257_(X,"t*"):-s216_(X,"t*") .
s286_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"f"):-s286_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"t*"):-s286_(X,"f") .
owl_OntologyProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"t*") .
owl_OntologyProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"f") .
s287_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"f"):-s287_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"t*"):-s287_(X,"f") .
s288_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"f"):-s288_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"t*"):-s288_(X,"f") .
s289_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"f"):-s289_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"t*"):-s289_(X,"f") .
owl_AnnotationProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"t*") .
owl_AnnotationProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"f") .
s290_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"f"):-s290_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12571_(X,"t*"):-s290_(X,"f") .
s291_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"f"):-s291_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"t*"):-s291_(X,"f") .
s292_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*"):-s292_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"f"):-s292_(X,"f") .

s293_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s294_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s293_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s294_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s293_(X,"t*") .


s295_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
s296_(X,"f"):-s295_(X,"t*") .
s296_(X,"t*"):-s295_(X,"f") .
rdfs_range_(X,@new(s296,X,rdfs_range,1..1),"t"):-choose(s296,X,rdfs_range,1) .
rdfs_range_(X,@new(s296,X,rdfs_range,1..2),"t"):-choose(s296,X,rdfs_range,2) .
choose(s296,X,rdfs_range,2);choose(s296,X,rdfs_range,1);choose(s296,X,rdfs_range,0):-s296_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s297_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s296_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s297_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s296_(X,"t*") .


s298_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"t*") .
s299_(X,"f"):-s298_(X,"t*") .
s299_(X,"t*"):-s298_(X,"f") .
rdfs_range_(X,@new(s299,X,rdfs_range,1..1),"t"):-choose(s299,X,rdfs_range,1) .
choose(s299,X,rdfs_range,1);choose(s299,X,rdfs_range,0):-s299_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s300_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s299_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s300_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s299_(X,"t*") .
s301_(X,"f"):-s300_(X,"t*") .
s301_(X,"t*"):-s300_(X,"f") .


s293_(X,"f");s295_(X,"f");s298_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12567_(X,"f") .
s302_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*"):-s302_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"f"):-s302_(X,"f") .




s303_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*");s304_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f")} (C-0):-s303_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*")}=C,C>0 .
0 {s304_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t**")} 0:-s303_(X,"t*") .

s305_(X,"t*"):-s304_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s305_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s305_(X,"f") .
s306_(X,"t*"):-s304_(X,"t*") .
owl_Class_(X,"t"):-s306_(X,"t*") .
owl_Class_(X,"f"):-s306_(X,"f") .
s305_(X,"f");s306_(X,"f"):-s304_(X,"f") .

s307_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"t*") .
s308_(X,"f"):-s307_(X,"t*") .
s308_(X,"t*"):-s307_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,@new(s308,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1..1),"t"):-choose(s308,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1) .
choose(s308,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,1);choose(s308,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st,0):-s308_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*");s309_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f")} (C-0):-s308_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t*")}=C,C>0 .
1 {s309_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t**")} 1:-s308_(X,"t*") .
s310_(X,"f"):-s309_(X,"t*") .
s310_(X,"t*"):-s309_(X,"f") .

s311_(X,"t*"):-s310_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s311_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s311_(X,"f") .
s312_(X,"t*"):-s310_(X,"t*") .
owl_Class_(X,"t"):-s312_(X,"t*") .
owl_Class_(X,"f"):-s312_(X,"f") .
s311_(X,"f");s312_(X,"f"):-s310_(X,"f") .

s303_(X,"f");s307_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_(X,"f") .
s313_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*"):-s313_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f"):-s313_(X,"f") .

s314_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s315_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s314_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s315_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s314_(X,"t*") .

s316_(X,"t*"):-s315_(X,"t*") .
owl_Class_(X,"t"):-s316_(X,"t*") .
owl_Class_(X,"f"):-s316_(X,"f") .
s317_(X,"t*"):-s315_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s317_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s317_(X,"f") .
s316_(X,"f");s317_(X,"f"):-s315_(X,"f") .

s318_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"t*") .
s319_(X,"f"):-s318_(X,"t*") .
s319_(X,"t*"):-s318_(X,"f") .
rdfs_domain_(X,@new(s319,X,rdfs_domain,1..1),"t"):-choose(s319,X,rdfs_domain,1) .
choose(s319,X,rdfs_domain,1);choose(s319,X,rdfs_domain,0):-s319_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s320_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s319_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s320_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s319_(X,"t*") .
s321_(X,"f"):-s320_(X,"t*") .
s321_(X,"t*"):-s320_(X,"f") .

s322_(X,"t*"):-s321_(X,"t*") .
owl_Class_(X,"t"):-s322_(X,"t*") .
owl_Class_(X,"f"):-s322_(X,"f") .
s323_(X,"t*"):-s321_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s323_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s323_(X,"f") .
s322_(X,"f");s323_(X,"f"):-s321_(X,"f") .

s314_(X,"f");s318_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12560_(X,"f") .
s324_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"f"):-s324_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12569_(X,"t*"):-s324_(X,"f") .
s325_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"f"):-s325_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12568_(X,"t*"):-s325_(X,"f") .
s326_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"f"):-s326_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12570_(X,"t*"):-s326_(X,"f") .
s327_(X,"t*"):-d_PropertyShape_(X,"t*") .
s328_(X,"f"):-s327_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*"):-s328_(X,"t*") .




s329_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*");s330_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f")} (C-0):-s329_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*")}=C,C>0 .
0 {s330_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t**")} 0:-s329_(X,"t*") .

s331_(X,"t*"):-s330_(X,"t*") .
rdfs_Datatype_(X,"t"):-s331_(X,"t*") .
rdfs_Datatype_(X,"f"):-s331_(X,"f") .
s332_(X,"t*"):-s330_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s332_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s332_(X,"f") .
s331_(X,"f");s332_(X,"f"):-s330_(X,"f") .

s333_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"t*") .
s334_(X,"f"):-s333_(X,"t*") .
s334_(X,"t*"):-s333_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,@new(s334,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1..1),"t"):-choose(s334,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1) .
choose(s334,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,1);choose(s334,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st,0):-s334_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*");s335_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f")} (C-0):-s334_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t*")}=C,C>0 .
1 {s335_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t**")} 1:-s334_(X,"t*") .
s336_(X,"f"):-s335_(X,"t*") .
s336_(X,"t*"):-s335_(X,"f") .

s337_(X,"t*"):-s336_(X,"t*") .
rdfs_Datatype_(X,"t"):-s337_(X,"t*") .
rdfs_Datatype_(X,"f"):-s337_(X,"f") .
s338_(X,"t*"):-s336_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s338_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s338_(X,"f") .
s337_(X,"f");s338_(X,"f"):-s336_(X,"f") .

s329_(X,"f");s333_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*"):-s328_(X,"t*") .

s339_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s340_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s339_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s340_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s339_(X,"t*") .

s341_(X,"t*"):-s340_(X,"t*") .
rdfs_Datatype_(X,"t"):-s341_(X,"t*") .
rdfs_Datatype_(X,"f"):-s341_(X,"f") .
s342_(X,"t*"):-s340_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s342_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s342_(X,"f") .
s341_(X,"f");s342_(X,"f"):-s340_(X,"f") .

s343_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"t*") .
s344_(X,"f"):-s343_(X,"t*") .
s344_(X,"t*"):-s343_(X,"f") .
rdfs_range_(X,@new(s344,X,rdfs_range,1..1),"t"):-choose(s344,X,rdfs_range,1) .
choose(s344,X,rdfs_range,1);choose(s344,X,rdfs_range,0):-s344_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s345_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s344_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s345_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s344_(X,"t*") .
s346_(X,"f"):-s345_(X,"t*") .
s346_(X,"t*"):-s345_(X,"f") .

s347_(X,"t*"):-s346_(X,"t*") .
rdfs_Datatype_(X,"t"):-s347_(X,"t*") .
rdfs_Datatype_(X,"f"):-s347_(X,"f") .
s348_(X,"t*"):-s346_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"f"):-s348_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12555_(X,"t*"):-s348_(X,"f") .
s347_(X,"f");s348_(X,"f"):-s346_(X,"f") .

s339_(X,"f");s343_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*"):-s328_(X,"t*") .

s349_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s350_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s349_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s350_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s349_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s350_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s350_(X,"f") .

s351_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"t*") .
s352_(X,"f"):-s351_(X,"t*") .
s352_(X,"t*"):-s351_(X,"f") .
rdfs_subPropertyOf_(X,@new(s352,X,rdfs_subPropertyOf,1..1),"t"):-choose(s352,X,rdfs_subPropertyOf,1) .
choose(s352,X,rdfs_subPropertyOf,1);choose(s352,X,rdfs_subPropertyOf,0):-s352_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s353_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s352_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s353_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s352_(X,"t*") .
s354_(X,"f"):-s353_(X,"t*") .
s354_(X,"t*"):-s353_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s354_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s354_(X,"f") .

s349_(X,"f");s351_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"f") .
s355_(X,"t*"):-s328_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s355_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s355_(X,"f") .
s356_(X,"t*"):-s328_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"f"):-s356_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12583_(X,"t*"):-s356_(X,"f") .

s357_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s358_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s357_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s358_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s357_(X,"t*") .

s359_(X,"t*"):-s358_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s359_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s359_(X,"f") .
s360_(X,"t*"):-s358_(X,"t*") .
owl_Class_(X,"t"):-s360_(X,"t*") .
owl_Class_(X,"f"):-s360_(X,"f") .
s359_(X,"f");s360_(X,"f"):-s358_(X,"f") .

s361_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"t*") .
s362_(X,"f"):-s361_(X,"t*") .
s362_(X,"t*"):-s361_(X,"f") .
rdfs_range_(X,@new(s362,X,rdfs_range,1..1),"t"):-choose(s362,X,rdfs_range,1) .
choose(s362,X,rdfs_range,1);choose(s362,X,rdfs_range,0):-s362_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s363_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s362_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s363_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s362_(X,"t*") .
s364_(X,"f"):-s363_(X,"t*") .
s364_(X,"t*"):-s363_(X,"f") .

s365_(X,"t*"):-s364_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s365_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s365_(X,"f") .
s366_(X,"t*"):-s364_(X,"t*") .
owl_Class_(X,"t"):-s366_(X,"t*") .
owl_Class_(X,"f"):-s366_(X,"f") .
s365_(X,"f");s366_(X,"f"):-s364_(X,"f") .

s357_(X,"f");s361_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12584_(X,"f") .
s367_(X,"t*"):-s328_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"f"):-s367_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12581_(X,"t*"):-s367_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12582_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12591_(X,"f");s355_(X,"f");s356_(X,"f");s367_(X,"f"):-s328_(X,"f") .
s368_(X,"f"):-s327_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*"):-s368_(X,"t*") .




s369_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*");s370_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f")} (C-0):-s369_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*")}=C,C>0 .
0 {s370_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t**")} 0:-s369_(X,"t*") .

s371_(X,"t*"):-s370_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s371_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s371_(X,"f") .
s372_(X,"t*"):-s370_(X,"t*") .
owl_Class_(X,"t"):-s372_(X,"t*") .
owl_Class_(X,"f"):-s372_(X,"f") .
s371_(X,"f");s372_(X,"f"):-s370_(X,"f") .

s373_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"t*") .
s374_(X,"f"):-s373_(X,"t*") .
s374_(X,"t*"):-s373_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,@new(s374,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1..1),"t"):-choose(s374,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1) .
choose(s374,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,1);choose(s374,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st,0):-s374_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*");s375_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f")} (C-0):-s374_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t*")}=C,C>0 .
1 {s375_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t**")} 1:-s374_(X,"t*") .
s376_(X,"f"):-s375_(X,"t*") .
s376_(X,"t*"):-s375_(X,"f") .

s377_(X,"t*"):-s376_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s377_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s377_(X,"f") .
s378_(X,"t*"):-s376_(X,"t*") .
owl_Class_(X,"t"):-s378_(X,"t*") .
owl_Class_(X,"f"):-s378_(X,"f") .
s377_(X,"f");s378_(X,"f"):-s376_(X,"f") .

s369_(X,"f");s373_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*"):-s368_(X,"t*") .

s379_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s380_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s379_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s380_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s379_(X,"t*") .

s381_(X,"t*"):-s380_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s381_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s381_(X,"f") .
s382_(X,"t*"):-s380_(X,"t*") .
owl_Class_(X,"t"):-s382_(X,"t*") .
owl_Class_(X,"f"):-s382_(X,"f") .
s381_(X,"f");s382_(X,"f"):-s380_(X,"f") .

s383_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"t*") .
s384_(X,"f"):-s383_(X,"t*") .
s384_(X,"t*"):-s383_(X,"f") .
rdfs_range_(X,@new(s384,X,rdfs_range,1..1),"t"):-choose(s384,X,rdfs_range,1) .
choose(s384,X,rdfs_range,1);choose(s384,X,rdfs_range,0):-s384_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s385_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s384_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s385_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s384_(X,"t*") .
s386_(X,"f"):-s385_(X,"t*") .
s386_(X,"t*"):-s385_(X,"f") .

s387_(X,"t*"):-s386_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s387_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s387_(X,"f") .
s388_(X,"t*"):-s386_(X,"t*") .
owl_Class_(X,"t"):-s388_(X,"t*") .
owl_Class_(X,"f"):-s388_(X,"f") .
s387_(X,"f");s388_(X,"f"):-s386_(X,"f") .

s379_(X,"f");s383_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*"):-s368_(X,"t*") .

s389_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s390_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s389_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s390_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s389_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s390_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s390_(X,"f") .

s391_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"t*") .
s392_(X,"f"):-s391_(X,"t*") .
s392_(X,"t*"):-s391_(X,"f") .
rdfs_subPropertyOf_(X,@new(s392,X,rdfs_subPropertyOf,1..1),"t"):-choose(s392,X,rdfs_subPropertyOf,1) .
choose(s392,X,rdfs_subPropertyOf,1);choose(s392,X,rdfs_subPropertyOf,0):-s392_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s393_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s392_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s393_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s392_(X,"t*") .
s394_(X,"f"):-s393_(X,"t*") .
s394_(X,"t*"):-s393_(X,"f") .

owl_ObjectProperty_(X,"t"):-s394_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s394_(X,"f") .

s389_(X,"f");s391_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"f") .
s395_(X,"t*"):-s368_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"f"):-s395_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12572_(X,"t*"):-s395_(X,"f") .
s396_(X,"t*"):-s368_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s396_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s396_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12573_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd12580_(X,"f");s395_(X,"f");s396_(X,"f"):-s368_(X,"f") .
s328_(X,"t*");s368_(X,"t*"):-s327_(X,"t*") .
s49_(X,"f");s60_(X,"f");s61_(X,"f");s72_(X,"f");s83_(X,"f");s93_(X,"f");s163_(X,"f");s173_(X,"f");s184_(X,"f");s194_(X,"f");s195_(X,"f");s205_(X,"f");s206_(X,"f");s216_(X,"f");s286_(X,"f");s287_(X,"f");s288_(X,"f");s289_(X,"f");s290_(X,"f");s291_(X,"f");s292_(X,"f");s302_(X,"f");s313_(X,"f");s324_(X,"f");s325_(X,"f");s326_(X,"f");s327_(X,"f"):-d_PropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12592_(X,"t*"):-d_FunctionalPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12592_(X,"f"):-d_FunctionalPropertyShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12592
s397_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12592_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*");s398_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"f")} (C-0):-s397_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"f") .
0 {s398_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t**")} 0:-s397_(X,"t*") .

owl_FunctionalProperty_(X,"t"):-s398_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s398_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12592
s399_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12592_(X,"t*") .
s400_(X,"f"):-s399_(X,"t*") .
s400_(X,"t*"):-s399_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s400,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s400,X,rdfs_subPropertyOf,1) .
choose(s400,X,rdfs_subPropertyOf,1);choose(s400,X,rdfs_subPropertyOf,0):-s400_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*");s401_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"f")} (C-0):-s400_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*")}=C,C>0 .
1 {s401_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t**")} 1:-s400_(X,"t*") .
s402_(X,"f"):-s401_(X,"t*") .
s402_(X,"t*"):-s401_(X,"f") .

owl_FunctionalProperty_(X,"t"):-s402_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s402_(X,"f") .

s397_(X,"f");s399_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12592_(X,"f") .
s403_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,"t*"):-s403_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,"f"):-s403_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12606
s404_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*");s405_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f")} (C-0):-s404_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,X1,"f") .
0 {s405_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t**")} 0:-s404_(X,"t*") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12606
s406_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,"t*") .
s407_(X,"f"):-s406_(X,"t*") .
s407_(X,"t*"):-s406_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,@new(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,1..1),"t"):-choose(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,1) .
choose(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,1);choose(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,0):-s407_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*");s408_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f")} (C-0):-s407_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*")}=C,C>0 .
1 {s408_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t**")} 1:-s407_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12606
s409_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,"t*") .
s410_(X,"f"):-s409_(X,"t*") .
s410_(X,"t*"):-s409_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,@new(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,1..1),"t"):-choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,1) .
choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,1);choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st,0):-s410_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*");s411_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f")} (C-0):-s410_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t*")}=C,C>0 .
1 {s411_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t**")} 1:-s410_(X,"t*") .
s412_(X,"f"):-s411_(X,"t*") .
s412_(X,"t*"):-s411_(X,"f") .


s404_(X,"f");s406_(X,"f");s409_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_(X,"f") .
s413_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,"t*"):-s413_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,"f"):-s413_(X,"f") .


s414_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f"):-s414_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s414_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s414_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd12611
s415_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,@new(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,1..1),"t"):-choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,1) .
choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,1);choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,0):-s415_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*");s416_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f")} (C-0):-s415_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,X1,"f") .
1 {s416_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t**")} 1:-s415_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12611
s417_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,"t*") .
s418_(X,"f"):-s417_(X,"t*") .
s418_(X,"t*"):-s417_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,@new(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,1..1),"t"):-choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,1) .
choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,1);choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st,0):-s418_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*");s419_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f")} (C-0):-s418_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t*")}=C,C>0 .
1 {s419_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t**")} 1:-s418_(X,"t*") .
s420_(X,"f"):-s419_(X,"t*") .
s420_(X,"t*"):-s419_(X,"f") .


s414_(X,"f");s415_(X,"f");s417_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_(X,"f") .
s403_(X,"t*");s413_(X,"t*"):-d_DomainConsistencyShape_(X,"t*") .
s421_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,"t*"):-s421_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,"f"):-s421_(X,"f") .


% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd12621
s422_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,@new(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,1..1),"t"):-choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,1) .
choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,1);choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,0):-s422_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*");s423_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f")} (C-0):-s422_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,X1,"f") .
1 {s423_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t**")} 1:-s422_(X,"t*") .


s424_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f"):-s424_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s424_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s424_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12621
s425_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,"t*") .
s426_(X,"f"):-s425_(X,"t*") .
s426_(X,"t*"):-s425_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,@new(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,1..1),"t"):-choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,1) .
choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,1);choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st,0):-s426_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*");s427_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f")} (C-0):-s426_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t*")}=C,C>0 .
1 {s427_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t**")} 1:-s426_(X,"t*") .
s428_(X,"f"):-s427_(X,"t*") .
s428_(X,"t*"):-s427_(X,"f") .


s422_(X,"f");s424_(X,"f");s425_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_(X,"f") .
s429_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,"t*"):-s429_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,"f"):-s429_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12616
s430_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*");s431_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f")} (C-0):-s430_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,X1,"f") .
0 {s431_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t**")} 0:-s430_(X,"t*") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd12616
s432_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,"t*") .
s433_(X,"f"):-s432_(X,"t*") .
s433_(X,"t*"):-s432_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,@new(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,1..1),"t"):-choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,1) .
choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,1);choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,0):-s433_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*");s434_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f")} (C-0):-s433_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*")}=C,C>0 .
1 {s434_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t**")} 1:-s433_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd12616
s435_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,"t*") .
s436_(X,"f"):-s435_(X,"t*") .
s436_(X,"t*"):-s435_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,@new(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,1..1),"t"):-choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,1) .
choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,1);choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st,0):-s436_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*");s437_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f")} (C-0):-s436_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t*")}=C,C>0 .
1 {s437_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t**")} 1:-s436_(X,"t*") .
s438_(X,"f"):-s437_(X,"t*") .
s438_(X,"t*"):-s437_(X,"f") .


s430_(X,"f");s432_(X,"f");s435_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_(X,"f") .
s421_(X,"t*");s429_(X,"t*"):-d_RangeConsistencyShape_(X,"t*") .
s439_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s439_(X,"t*") .
owl_Class_(X,"f"):-s439_(X,"f") .
s440_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s440_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s440_(X,"f") .
s441_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s441_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s441_(X,"f") .
s442_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"f"):-s442_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12554_(X,"t*"):-s442_(X,"f") .
s443_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s443_(X,"t*") .
owl_Class_(X,"f"):-s443_(X,"f") .
s444_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s444_(X,"t*") .
owl_Class_(X,"f"):-s444_(X,"f") .
s439_(X,"f");s440_(X,"f");s441_(X,"f");s442_(X,"f");s443_(X,"f");s444_(X,"f"):-d_ClassShape_(X,"f") .

% Interpretation Rules

owl_inverseOf_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
rdfs_domain_(X,Y,"t**"):-rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12597_st_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12597_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12597_st_(X,Y,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
dc_contributor_(X,Y,"t**"):-dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12624_st_(X,Y,"t**"):-dc_contributor_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12624_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12624_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12594_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12594_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12594_st_(X,Y,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),not rdfs_subPropertyOf_inv_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12595_st_(X,Y,"f") .
owl_SymmetricProperty_(X,"t**"):-owl_SymmetricProperty_(X,"t*"),not owl_SymmetricProperty_(X,"f") .
owl_unionOf_(X,Y,"t**"):-owl_unionOf_(X,Y,"t*"),not owl_unionOf_(X,Y,"f") .
rdf_rest_(X,Y,"t**"):-rdf_rest_(X,Y,"t*"),not rdf_rest_(X,Y,"f") .
rdf_rest_star_(X,Y,"t**"):-rdf_rest_star_(X,Y,"t*"),not rdf_rest_star_(X,Y,"f") .
rdf_first_(X,Y,"t**"):-rdf_first_(X,Y,"t*"),not rdf_first_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,X3,"f"),rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12560_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12560_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12560_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12582_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12582_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12582_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12591_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12591_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12591_st_(X,Y,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12584_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12584_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12584_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12573_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12573_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12573_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12580_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12580_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12580_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12567_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12567_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12567_st_(X,Y,"f") .
owl_OntologyProperty_(X,"t**"):-owl_OntologyProperty_(X,"t*"),not owl_OntologyProperty_(X,"f") .
owl_AnnotationProperty_(X,"t**"):-owl_AnnotationProperty_(X,"t*"),not owl_AnnotationProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12592_st_(X,Y,"f") .
owl_FunctionalProperty_(X,"t**"):-owl_FunctionalProperty_(X,"t*"),not owl_FunctionalProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .

% Program Constraints

:-owl_inverseOf_(X,Y,"t"),owl_inverseOf_(X,Y,"f") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s3_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t**") .
:-s3_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12601_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-rdfs_domain_(X,Y,"t"),rdfs_domain_(X,Y,"f") .
:-s7_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-s16_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t**") .
:-s16_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12598_st_(X,Y,"f") .
:-s18_(X,"f") .
:-s22_(X,"f") .
:-dc_contributor_(X,Y,"t"),dc_contributor_(X,Y,"f") .
:-s26_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-s35_(X,"f") .
:-s36_(X,"t*"),rdfs_range_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s36_(X,"t*"),rdfs_domain_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s40_(X,"f") .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .
:-rdfs_subPropertyOf_inv_(X,Y,"t"),rdfs_subPropertyOf_inv_(X,Y,"f") .
:-owl_SymmetricProperty_(X,"t"),owl_SymmetricProperty_(X,"f") .
:-owl_unionOf_(X,Y,"t"),owl_unionOf_(X,Y,"f") .
:-rdf_rest_(X,Y,"t"),rdf_rest_(X,Y,"f") .
:-rdf_rest_star_(X,Y,"t"),rdf_rest_star_(X,Y,"f") .
:-rdf_rest_star_(X,X,"f") .
:-rdf_first_(X,Y,"t"),rdf_first_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12561_st_(X,Y,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-s86_(X,"f") .
:-s88_(X,"f") .
:-s92_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12585_st_(X,Y,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12574_st_(X,Y,"f") .
:-s165_(X,"f") .
:-s168_(X,"f") .
:-s172_(X,"f") .
:-s187_(X,"f") .
:-s189_(X,"f") .
:-s193_(X,"f") .
:-s197_(X,"f") .
:-s200_(X,"f") .
:-s204_(X,"f") .
:-s208_(X,"f") .
:-s211_(X,"f") .
:-s215_(X,"f") .
:-owl_OntologyProperty_(X,"t"),owl_OntologyProperty_(X,"f") .
:-owl_AnnotationProperty_(X,"t"),owl_AnnotationProperty_(X,"f") .
:-s294_(X,"f") .
:-s297_(X,"f") .
:-s301_(X,"f") .
:-owl_FunctionalProperty_(X,"t"),owl_FunctionalProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12606_st_(X,Y,"f") .
:-s405_(X,"f") .
:-s408_(X,"f") .
:-s412_(X,"f") .
:-s414_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t**") .
:-s414_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12611_st_(X,Y,"f") .
:-s416_(X,"f") .
:-s420_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"f") .
:-s423_(X,"f") .
:-s424_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t**") .
:-s424_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd12621_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s428_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd12616_st_(X,Y,"f") .
:-s431_(X,"f") .
:-s434_(X,"f") .
:-s438_(X,"f") .

% Change Set Rules

add(owl_inverseOf(X,Y)):-owl_inverseOf_(X,Y,"t**"),not owl_inverseOf(X,Y) .
del(owl_inverseOf(X,Y)):-owl_inverseOf_(X,Y,"f"),owl_inverseOf(X,Y) .
add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
add(rdfs_domain(X,Y)):-rdfs_domain_(X,Y,"t**"),not rdfs_domain(X,Y) .
del(rdfs_domain(X,Y)):-rdfs_domain_(X,Y,"f"),rdfs_domain(X,Y) .
add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(dc_contributor(X,Y)):-dc_contributor_(X,Y,"t**"),not dc_contributor(X,Y) .
del(dc_contributor(X,Y)):-dc_contributor_(X,Y,"f"),dc_contributor(X,Y) .
add(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"t**"),not rdfs_subPropertyOf(X,Y) .
del(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"f"),rdfs_subPropertyOf(X,Y) .
add(owl_SymmetricProperty(X)):-owl_SymmetricProperty_(X,"t**"),not owl_SymmetricProperty(X) .
del(owl_SymmetricProperty(X)):-owl_SymmetricProperty_(X,"f"),owl_SymmetricProperty(X) .
add(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"t**"),not owl_unionOf(X,Y) .
del(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"f"),owl_unionOf(X,Y) .
add(rdf_rest(X,Y)):-rdf_rest_(X,Y,"t**"),not rdf_rest(X,Y) .
del(rdf_rest(X,Y)):-rdf_rest_(X,Y,"f"),rdf_rest(X,Y) .
add(rdf_first(X,Y)):-rdf_first_(X,Y,"t**"),not rdf_first(X,Y) .
del(rdf_first(X,Y)):-rdf_first_(X,Y,"f"),rdf_first(X,Y) .
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
add(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"t**"),not owl_OntologyProperty(X) .
del(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"f"),owl_OntologyProperty(X) .
add(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"t**"),not owl_AnnotationProperty(X) .
del(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"f"),owl_AnnotationProperty(X) .
add(owl_FunctionalProperty(X)):-owl_FunctionalProperty_(X,"t**"),not owl_FunctionalProperty(X) .
del(owl_FunctionalProperty(X)):-owl_FunctionalProperty_(X,"f"),owl_FunctionalProperty(X) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@4,X,S: skipTarget(X,S) } .

% Repair Strategy Rules

:-add(rdfs_subClassOf(X,Y)) .
#minimize { 5@3,X,Y: del(rdfs_subClassOfD(X,Y)) } .
:-add(rdfs_subPropertyOf(X,Y)) .
#minimize { 5@3,X,Y: del(rdfs_subPropertyOf(X,Y)) } .
#minimize { 2@3,X,Y: del(rdfs_domain(X,Y)) } .
#maximize { 1@3,X: add(owl_ObjectProperty(X)),rdf_Property(X) } .
:-add(owl_unionOf(X,Y)) .
:-del(rdf_rest(X,Y)) .
:-del(owl_unionOf(X,Y)) .
:-del(rdf_first(X,Y)) .
:-add(rdf_first(X,Y)) .
:-add(rdf_rest(X,Y)) .
:-del(rdfs_Datatype(X)) .
#maximize { 1@3,X: add(owl_DatatypeProperty(X)),owl_AnnotationProperty(X) } .
#minimize { 2@3,X,Y: del(rdfs_range(X,Y)) } .

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
