
% Graph Data

owl_ObjectProperty("d_p1") .
owl_ObjectProperty("d_p2") .
owl_Class("d_A") .
rdfs_domain("d_p1","xsd_int") .
rdfs_subPropertyOf("d_p1","d_p2") .
rdfs_range("d_p1","xsd_string") .
rdfs_range("d_p2","d_A") .
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
targetNode("d_A",d_ClassShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PropertyShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyShape) .
d_DomainConsistencyShape_("d_p1","t*"):-actualTarget("d_p1",d_DomainConsistencyShape) .
d_RangeConsistencyShape_("d_p1","t*"):-actualTarget("d_p1",d_RangeConsistencyShape) .
d_PropertyShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyShape) .
d_ClassShape_("d_A","t*"):-actualTarget("d_A",d_ClassShape) .

% Annotation Rules

owl_inverseOf_(X,Y,"t*"):-owl_inverseOf(X,Y) .
owl_inverseOf_(X,Y,"t*"):-owl_inverseOf_(X,Y,"t") .
rdfs_domain_(X,Y,"t*"):-rdfs_domain(X,Y) .
rdfs_domain_(X,Y,"t*"):-rdfs_domain_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14238_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14238_(X,_),owl_inverseOf_(X,Y,"t*") .
dc_contributor_(X,Y,"t*"):-dc_contributor(X,Y) .
dc_contributor_(X,Y,"t*"):-dc_contributor_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14265_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,_),dc_contributor_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14235_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,_),rdfs_domain_(X,Y,"t*") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .
rdfs_subPropertyOf_(Y,X,"t"):-rdfs_subPropertyOf_inv_(X,Y,"t") .
rdfs_subPropertyOf_inv_(X,Y,"t*"):-rdfs_subPropertyOf_(Y,X,"t*") .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"f"):-rdfs_subPropertyOf_(Y,X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14236_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty(X) .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,_),rdfs_domain_(X,Y,"t*") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,_),rdfs_range_(X,Y,"t*") .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty(X) .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty_(X,"t") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty(X) .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty_(X,"t") .
owl_unionOf_(X,Y,"t*"):-owl_unionOf(X,Y) .
owl_unionOf_(X,Y,"t*"):-owl_unionOf_(X,Y,"t") .
rdf_rest_(X,Y,"t*"):-rdf_rest(X,Y) .
rdf_rest_(X,Y,"t*"):-rdf_rest_(X,Y,"t") .
rdf_rest_star_(X,Y,"t*"):-rdf_rest_(X,Y,"t*") .
rdf_rest_star_(X,Z,"t*"):-rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*") .
rdf_first_(X,Y,"t*"):-rdf_first(X,Y) .
rdf_first_(X,Y,"t*"):-rdf_first_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14214_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14221_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14223_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14232_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14225_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14233_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty(X) .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,"t*"):-s0_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,"f"):-s0_(X,"f") .


s1_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f"):-s1_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s1_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s1_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14239
s2_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*");s3_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,X1,"f") .
0 {s3_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t**")} 0:-s2_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14239
s4_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,@new(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,1..1),"t"):-choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,1) .
choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,1);choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st,0):-s5_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*");s6_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s2_(X,"f");s4_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_(X,"f") .
s8_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,"t*"):-s8_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,"f"):-s8_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14242
s9_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*");s10_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,X1,"f") .
0 {s10_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t**")} 0:-s9_(X,"t*") .


s11_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f"):-s11_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s11_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s11_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14242
s12_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,@new(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,1..1),"t"):-choose(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,1) .
choose(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,1);choose(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st,0):-s13_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*");s14_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s9_(X,"f");s11_(X,"f");s12_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_(X,"f") .
s16_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s16_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s16_(X,"f") .
s17_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14238_(X,"t*"):-s17_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14238_(X,"f"):-s17_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14238
s18_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14238_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s19_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,Y,"f"):-owl_inverseOf_(X,Y,"t*"),owl_inverseOf_(X,Y,"f") .
0 {s19_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 0:-s18_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s19_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s19_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14238
s20_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14238_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
owl_inverseOf_(X,@new(s21,X,owl_inverseOf,1..1),"t"):-choose(s21,X,owl_inverseOf,1) .
choose(s21,X,owl_inverseOf,1);choose(s21,X,owl_inverseOf,0):-s21_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s22_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .

owl_ObjectProperty_(X,"t"):-s23_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s23_(X,"f") .

s18_(X,"f");s20_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14238_(X,"f") .
s0_(X,"f");s8_(X,"f");s16_(X,"f");s17_(X,"f"):-d_InversePropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,"t*"):-d_UniqueContributorShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,"f"):-d_UniqueContributorShape_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd14265
s24_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
dc_contributor_(X,@new(s25,X,dc_contributor,1..1),"t"):-choose(s25,X,dc_contributor,1) .
dc_contributor_(X,@new(s25,X,dc_contributor,1..2),"t"):-choose(s25,X,dc_contributor,2) .
choose(s25,X,dc_contributor,2);choose(s25,X,dc_contributor,1);choose(s25,X,dc_contributor,0):-s25_(X,"t*") .
(C-1) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s26_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>1 .
dc_contributor_(X,Y,"f"):-dc_contributor_(X,Y,"t*"),dc_contributor_(X,Y,"f") .
2 {s26_(Y,"t*"):dc_contributor_(X,Y,"t**")} 2:-s25_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14265
s27_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s28_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
0 {s28_(Y,"t*"):dc_contributor_(X,Y,"t**")} 0:-s27_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14265
s29_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
dc_contributor_(X,@new(s30,X,dc_contributor,1..1),"t"):-choose(s30,X,dc_contributor,1) .
choose(s30,X,dc_contributor,1);choose(s30,X,dc_contributor,0):-s30_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s31_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):dc_contributor_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s24_(X,"f");s27_(X,"f");s29_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14265_(X,"f") .
s33_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,"t*"):-s33_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,"f"):-s33_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14235
s34_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s35_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,Y,"f"):-rdfs_domain_(X,Y,"t*"),rdfs_domain_(X,Y,"f") .
0 {s35_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s34_(X,"t*") .


s36_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,"t*") .
rdfs_range_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s36_(X,"t*"),rdfs_domain_(X,Y,"t*") .
rdfs_domain_(X,Y,"t");rdfs_range_(X,Y,"f"):-s36_(X,"t*"),rdfs_range_(X,Y,"t*") .
notEquals(s36,X,rdfs_domain,rdfs_range):-s36_(X,"f"),rdfs_domain_(X,Y,"t*"),not rdfs_range_(X,Y,"t*") .
notEquals(s36,X,rdfs_domain,rdfs_range):-s36_(X,"f"),not rdfs_domain_(X,Y,"t*"),rdfs_range_(X,Y,"t*") .
1 {rdfs_domain_(X,Y,"f"):rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):rdfs_domain_(X,Y,"t*");rdfs_domain_(X,@new(s36,X,rdfs_domain,1),"t*");rdfs_range_(X,@new(s36,X,rdfs_range,1),"t*")} 1:-s36_(X,"f"),not notEquals(s36,X,rdfs_domain,rdfs_range) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14235
s37_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
rdfs_domain_(X,@new(s38,X,rdfs_domain,1..1),"t"):-choose(s38,X,rdfs_domain,1) .
choose(s38,X,rdfs_domain,1);choose(s38,X,rdfs_domain,0):-s38_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s39_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s38_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s39_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s38_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .


s34_(X,"f");s36_(X,"f");s37_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14235_(X,"f") .
s41_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s41_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s41_(X,"f") .
s42_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14236_(X,"t*"):-s42_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14236_(X,"f"):-s42_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14236
s43_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14236_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*");s44_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"f") .
0 {s44_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t**")} 0:-s43_(X,"t*") .

owl_SymmetricProperty_(X,"t"):-s44_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s44_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14236
s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14236_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s46,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s46,X,rdfs_subPropertyOf,1) .
choose(s46,X,rdfs_subPropertyOf,1);choose(s46,X,rdfs_subPropertyOf,0):-s46_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*");s47_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .

owl_SymmetricProperty_(X,"t"):-s48_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s48_(X,"f") .

s43_(X,"f");s45_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14236_(X,"f") .
s33_(X,"f");s41_(X,"f");s42_(X,"f"):-d_SymmetricPropertyShape_(X,"f") .
s49_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*"):-s49_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f"):-s49_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd14201
s50_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s51_(X,"f"):-s50_(X,"t*") .
s51_(X,"t*"):-s50_(X,"f") .
rdfs_domain_(X,@new(s51,X,rdfs_domain,1..1),"t"):-choose(s51,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s51,X,rdfs_domain,1..2),"t"):-choose(s51,X,rdfs_domain,2) .
choose(s51,X,rdfs_domain,2);choose(s51,X,rdfs_domain,1);choose(s51,X,rdfs_domain,0):-s51_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s52_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s51_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s52_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s51_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14201
s53_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s54_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s54_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s53_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14201
s55_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
rdfs_domain_(X,@new(s56,X,rdfs_domain,1..1),"t"):-choose(s56,X,rdfs_domain,1) .
choose(s56,X,rdfs_domain,1);choose(s56,X,rdfs_domain,0):-s56_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s57_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s56_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s57_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s56_(X,"t*") .
s58_(X,"f"):-s57_(X,"t*") .
s58_(X,"t*"):-s57_(X,"f") .


s50_(X,"f");s53_(X,"f");s55_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f") .
s59_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"f"):-s59_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"t*"):-s59_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"f") .
s60_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*"):-s60_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"f"):-s60_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14208
s61_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s62_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s62_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s61_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd14208
s63_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
s64_(X,"f"):-s63_(X,"t*") .
s64_(X,"t*"):-s63_(X,"f") .
rdfs_range_(X,@new(s64,X,rdfs_range,1..1),"t"):-choose(s64,X,rdfs_range,1) .
rdfs_range_(X,@new(s64,X,rdfs_range,1..2),"t"):-choose(s64,X,rdfs_range,2) .
choose(s64,X,rdfs_range,2);choose(s64,X,rdfs_range,1);choose(s64,X,rdfs_range,0):-s64_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s65_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s64_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s65_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s64_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14208
s66_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .
rdfs_range_(X,@new(s67,X,rdfs_range,1..1),"t"):-choose(s67,X,rdfs_range,1) .
choose(s67,X,rdfs_range,1);choose(s67,X,rdfs_range,0):-s67_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s68_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s68_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s67_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .


s61_(X,"f");s63_(X,"f");s66_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"f") .
s70_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"f"):-s70_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"t*"):-s70_(X,"f") .
owl_OntologyProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"t*") .
owl_OntologyProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"f") .
s71_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"f"):-s71_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"t*"):-s71_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"f") .
s72_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*"):-s72_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f"):-s72_(X,"f") .

s73_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s74_(X,"f"):-s73_(X,"t*") .
s74_(X,"t*"):-s73_(X,"f") .
rdfs_domain_(X,@new(s74,X,rdfs_domain,1..1),"t"):-choose(s74,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s74,X,rdfs_domain,1..2),"t"):-choose(s74,X,rdfs_domain,2) .
choose(s74,X,rdfs_domain,2);choose(s74,X,rdfs_domain,1);choose(s74,X,rdfs_domain,0):-s74_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s75_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s74_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s75_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s74_(X,"t*") .


s76_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s77_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s76_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s77_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s76_(X,"t*") .


s78_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s79_(X,"f"):-s78_(X,"t*") .
s79_(X,"t*"):-s78_(X,"f") .
rdfs_domain_(X,@new(s79,X,rdfs_domain,1..1),"t"):-choose(s79,X,rdfs_domain,1) .
choose(s79,X,rdfs_domain,1);choose(s79,X,rdfs_domain,0):-s79_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s80_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s79_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s80_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s79_(X,"t*") .
s81_(X,"f"):-s80_(X,"t*") .
s81_(X,"t*"):-s80_(X,"f") .


s73_(X,"f");s76_(X,"f");s78_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f") .
s82_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"f"):-s82_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"t*"):-s82_(X,"f") .
s83_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"f"):-s83_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"t*"):-s83_(X,"f") .
owl_AnnotationProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"t*") .
owl_AnnotationProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"f") .
s84_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"f"):-s84_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"t*"):-s84_(X,"f") .
s85_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*"):-s85_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"f"):-s85_(X,"f") .



rdf_rest_star_(X,Y,"f");rdf_rest_(Y,Z,"f"):-rdf_rest_star_(X,Z,"f"),rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*"),X!=Y .
rdf_rest_(X,Y,"f"):-rdf_rest_star_(X,Y,"f"),rdf_rest_(X,Y,"t*") .

rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14202
s86_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X,rdfs_domain,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X,rdfs_domain,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t") .
rdfs_domain_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X,rdfs_domain,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X,rdfs_domain,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X0,owl_unionOf,0):-rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,X0,owl_unionOf,1),rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*");s87_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f")} (C-0):-s86_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,X3,"f") .
0 {s87_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t**")} 0:-s86_(X,"t*") .

s88_(X,"t*"):-s87_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s88_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s88_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f") .
s89_(X,"t*"):-s87_(X,"t*") .
owl_Class_(X,"t"):-s89_(X,"t*") .
owl_Class_(X,"f"):-s89_(X,"f") .
s88_(X,"f");s89_(X,"f"):-s87_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14202
s90_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*") .
s91_(X,"f"):-s90_(X,"t*") .
s91_(X,"t*"):-s90_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,@new(s91,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1..1),"t"):-choose(s91,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1) .
choose(s91,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1);choose(s91,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,0):-s91_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*");s92_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f")} (C-0):-s91_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*")}=C,C>0 .
1 {s92_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t**")} 1:-s91_(X,"t*") .
s93_(X,"f"):-s92_(X,"t*") .
s93_(X,"t*"):-s92_(X,"f") .

s94_(X,"t*"):-s93_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s94_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s94_(X,"f") .
s95_(X,"t*"):-s93_(X,"t*") .
owl_Class_(X,"t"):-s95_(X,"t*") .
owl_Class_(X,"f"):-s95_(X,"f") .
s94_(X,"f");s95_(X,"f"):-s93_(X,"f") .

s86_(X,"f");s90_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"f") .
s96_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"f"):-s96_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"t*"):-s96_(X,"f") .
s97_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"f"):-s97_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14210_(X,"t*"):-s97_(X,"f") .
s98_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*"):-s98_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f"):-s98_(X,"f") .

s99_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s100_(X,"f"):-s99_(X,"t*") .
s100_(X,"t*"):-s99_(X,"f") .
rdfs_domain_(X,@new(s100,X,rdfs_domain,1..1),"t"):-choose(s100,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s100,X,rdfs_domain,1..2),"t"):-choose(s100,X,rdfs_domain,2) .
choose(s100,X,rdfs_domain,2);choose(s100,X,rdfs_domain,1);choose(s100,X,rdfs_domain,0):-s100_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s101_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s100_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s101_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s100_(X,"t*") .


s102_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s103_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s102_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s103_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s102_(X,"t*") .


s104_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s105_(X,"f"):-s104_(X,"t*") .
s105_(X,"t*"):-s104_(X,"f") .
rdfs_domain_(X,@new(s105,X,rdfs_domain,1..1),"t"):-choose(s105,X,rdfs_domain,1) .
choose(s105,X,rdfs_domain,1);choose(s105,X,rdfs_domain,0):-s105_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s106_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s105_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s106_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s105_(X,"t*") .
s107_(X,"f"):-s106_(X,"t*") .
s107_(X,"t*"):-s106_(X,"f") .


s99_(X,"f");s102_(X,"f");s104_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f") .
s108_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*"):-s108_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"f"):-s108_(X,"f") .




s109_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*");s110_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f")} (C-0):-s109_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*")}=C,C>0 .
0 {s110_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t**")} 0:-s109_(X,"t*") .

s111_(X,"t*"):-s110_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s111_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s111_(X,"f") .
s112_(X,"t*"):-s110_(X,"t*") .
owl_Class_(X,"t"):-s112_(X,"t*") .
owl_Class_(X,"f"):-s112_(X,"f") .
s111_(X,"f");s112_(X,"f"):-s110_(X,"f") .

s113_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*") .
s114_(X,"f"):-s113_(X,"t*") .
s114_(X,"t*"):-s113_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,@new(s114,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1..1),"t"):-choose(s114,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1) .
choose(s114,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1);choose(s114,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,0):-s114_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*");s115_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f")} (C-0):-s114_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*")}=C,C>0 .
1 {s115_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t**")} 1:-s114_(X,"t*") .
s116_(X,"f"):-s115_(X,"t*") .
s116_(X,"t*"):-s115_(X,"f") .

s117_(X,"t*"):-s116_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s117_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s117_(X,"f") .
s118_(X,"t*"):-s116_(X,"t*") .
owl_Class_(X,"t"):-s118_(X,"t*") .
owl_Class_(X,"f"):-s118_(X,"f") .
s117_(X,"f");s118_(X,"f"):-s116_(X,"f") .

s109_(X,"f");s113_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"f") .
s119_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*"):-s119_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f"):-s119_(X,"f") .

s120_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s121_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s120_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s121_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s120_(X,"t*") .

s122_(X,"t*"):-s121_(X,"t*") .
owl_Class_(X,"t"):-s122_(X,"t*") .
owl_Class_(X,"f"):-s122_(X,"f") .
s123_(X,"t*"):-s121_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s123_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s123_(X,"f") .
s122_(X,"f");s123_(X,"f"):-s121_(X,"f") .

s124_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s125_(X,"f"):-s124_(X,"t*") .
s125_(X,"t*"):-s124_(X,"f") .
rdfs_domain_(X,@new(s125,X,rdfs_domain,1..1),"t"):-choose(s125,X,rdfs_domain,1) .
choose(s125,X,rdfs_domain,1);choose(s125,X,rdfs_domain,0):-s125_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s126_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s125_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s126_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s125_(X,"t*") .
s127_(X,"f"):-s126_(X,"t*") .
s127_(X,"t*"):-s126_(X,"f") .

s128_(X,"t*"):-s127_(X,"t*") .
owl_Class_(X,"t"):-s128_(X,"t*") .
owl_Class_(X,"f"):-s128_(X,"f") .
s129_(X,"t*"):-s127_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s129_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s129_(X,"f") .
s128_(X,"f");s129_(X,"f"):-s127_(X,"f") .

s120_(X,"f");s124_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f") .
s130_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*"):-s130_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f"):-s130_(X,"f") .

s131_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s132_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s131_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s132_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s131_(X,"t*") .

s133_(X,"t*"):-s132_(X,"t*") .
owl_Class_(X,"t"):-s133_(X,"t*") .
owl_Class_(X,"f"):-s133_(X,"f") .
s134_(X,"t*"):-s132_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s134_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s134_(X,"f") .
s133_(X,"f");s134_(X,"f"):-s132_(X,"f") .

s135_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s136_(X,"f"):-s135_(X,"t*") .
s136_(X,"t*"):-s135_(X,"f") .
rdfs_domain_(X,@new(s136,X,rdfs_domain,1..1),"t"):-choose(s136,X,rdfs_domain,1) .
choose(s136,X,rdfs_domain,1);choose(s136,X,rdfs_domain,0):-s136_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s137_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s136_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s137_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s136_(X,"t*") .
s138_(X,"f"):-s137_(X,"t*") .
s138_(X,"t*"):-s137_(X,"f") .

s139_(X,"t*"):-s138_(X,"t*") .
owl_Class_(X,"t"):-s139_(X,"t*") .
owl_Class_(X,"f"):-s139_(X,"f") .
s140_(X,"t*"):-s138_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s140_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s140_(X,"f") .
s139_(X,"f");s140_(X,"f"):-s138_(X,"f") .

s131_(X,"f");s135_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f") .
s141_(X,"t*"):-d_PropertyShape_(X,"t*") .
s142_(X,"f"):-s141_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*"):-s142_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14215
s143_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*");s144_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f")} (C-0):-s143_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,X3,"f") .
0 {s144_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t**")} 0:-s143_(X,"t*") .

s145_(X,"t*"):-s144_(X,"t*") .
owl_Class_(X,"t"):-s145_(X,"t*") .
owl_Class_(X,"f"):-s145_(X,"f") .
s146_(X,"t*"):-s144_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s146_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s146_(X,"f") .
s145_(X,"f");s146_(X,"f"):-s144_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14215
s147_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*") .
s148_(X,"f"):-s147_(X,"t*") .
s148_(X,"t*"):-s147_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,@new(s148,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1..1),"t"):-choose(s148,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1) .
choose(s148,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1);choose(s148,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,0):-s148_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*");s149_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f")} (C-0):-s148_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*")}=C,C>0 .
1 {s149_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t**")} 1:-s148_(X,"t*") .
s150_(X,"f"):-s149_(X,"t*") .
s150_(X,"t*"):-s149_(X,"f") .

s151_(X,"t*"):-s150_(X,"t*") .
owl_Class_(X,"t"):-s151_(X,"t*") .
owl_Class_(X,"f"):-s151_(X,"f") .
s152_(X,"t*"):-s150_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s152_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s152_(X,"f") .
s151_(X,"f");s152_(X,"f"):-s150_(X,"f") .

s143_(X,"f");s147_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*"):-s142_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14214
s153_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s154_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s153_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s154_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s153_(X,"t*") .

s155_(X,"t*"):-s154_(X,"t*") .
owl_Class_(X,"t"):-s155_(X,"t*") .
owl_Class_(X,"f"):-s155_(X,"f") .
s156_(X,"t*"):-s154_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s156_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s156_(X,"f") .
s155_(X,"f");s156_(X,"f"):-s154_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14214
s157_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*") .
s158_(X,"f"):-s157_(X,"t*") .
s158_(X,"t*"):-s157_(X,"f") .
rdfs_range_(X,@new(s158,X,rdfs_range,1..1),"t"):-choose(s158,X,rdfs_range,1) .
choose(s158,X,rdfs_range,1);choose(s158,X,rdfs_range,0):-s158_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s159_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s158_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s159_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s158_(X,"t*") .
s160_(X,"f"):-s159_(X,"t*") .
s160_(X,"t*"):-s159_(X,"f") .

s161_(X,"t*"):-s160_(X,"t*") .
owl_Class_(X,"t"):-s161_(X,"t*") .
owl_Class_(X,"f"):-s161_(X,"f") .
s162_(X,"t*"):-s160_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s162_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s162_(X,"f") .
s161_(X,"f");s162_(X,"f"):-s160_(X,"f") .

s153_(X,"f");s157_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*"):-s142_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14221
s163_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s164_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s163_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s164_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s163_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s164_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s164_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14221
s165_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*") .
s166_(X,"f"):-s165_(X,"t*") .
s166_(X,"t*"):-s165_(X,"f") .
rdfs_subPropertyOf_(X,@new(s166,X,rdfs_subPropertyOf,1..1),"t"):-choose(s166,X,rdfs_subPropertyOf,1) .
choose(s166,X,rdfs_subPropertyOf,1);choose(s166,X,rdfs_subPropertyOf,0):-s166_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s167_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s166_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s167_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s166_(X,"t*") .
s168_(X,"f"):-s167_(X,"t*") .
s168_(X,"t*"):-s167_(X,"f") .

owl_ObjectProperty_(X,"t"):-s168_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s168_(X,"f") .

s163_(X,"f");s165_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"f") .
s169_(X,"t*"):-s142_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s169_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s169_(X,"f") .
s170_(X,"t*"):-s142_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"f"):-s170_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"t*"):-s170_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"f");s169_(X,"f");s170_(X,"f"):-s142_(X,"f") .
s171_(X,"f"):-s141_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*"):-s171_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14226
s172_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*");s173_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f")} (C-0):-s172_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,X3,"f") .
0 {s173_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t**")} 0:-s172_(X,"t*") .

s174_(X,"t*"):-s173_(X,"t*") .
rdfs_Datatype_(X,"t"):-s174_(X,"t*") .
rdfs_Datatype_(X,"f"):-s174_(X,"f") .
s175_(X,"t*"):-s173_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s175_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s175_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f") .
s174_(X,"f");s175_(X,"f"):-s173_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14226
s176_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*") .
s177_(X,"f"):-s176_(X,"t*") .
s177_(X,"t*"):-s176_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,@new(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1..1),"t"):-choose(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1) .
choose(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1);choose(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,0):-s177_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*");s178_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f")} (C-0):-s177_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*")}=C,C>0 .
1 {s178_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t**")} 1:-s177_(X,"t*") .
s179_(X,"f"):-s178_(X,"t*") .
s179_(X,"t*"):-s178_(X,"f") .

s180_(X,"t*"):-s179_(X,"t*") .
rdfs_Datatype_(X,"t"):-s180_(X,"t*") .
rdfs_Datatype_(X,"f"):-s180_(X,"f") .
s181_(X,"t*"):-s179_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s181_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s181_(X,"f") .
s180_(X,"f");s181_(X,"f"):-s179_(X,"f") .

s172_(X,"f");s176_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*"):-s171_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14223
s182_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s183_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s182_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s183_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s182_(X,"t*") .

s184_(X,"t*"):-s183_(X,"t*") .
rdfs_Datatype_(X,"t"):-s184_(X,"t*") .
rdfs_Datatype_(X,"f"):-s184_(X,"f") .
s185_(X,"t*"):-s183_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s185_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s185_(X,"f") .
s184_(X,"f");s185_(X,"f"):-s183_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14223
s186_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*") .
s187_(X,"f"):-s186_(X,"t*") .
s187_(X,"t*"):-s186_(X,"f") .
rdfs_range_(X,@new(s187,X,rdfs_range,1..1),"t"):-choose(s187,X,rdfs_range,1) .
choose(s187,X,rdfs_range,1);choose(s187,X,rdfs_range,0):-s187_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s188_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s187_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s188_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s187_(X,"t*") .
s189_(X,"f"):-s188_(X,"t*") .
s189_(X,"t*"):-s188_(X,"f") .

s190_(X,"t*"):-s189_(X,"t*") .
rdfs_Datatype_(X,"t"):-s190_(X,"t*") .
rdfs_Datatype_(X,"f"):-s190_(X,"f") .
s191_(X,"t*"):-s189_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s191_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s191_(X,"f") .
s190_(X,"f");s191_(X,"f"):-s189_(X,"f") .

s182_(X,"f");s186_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*"):-s171_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14232
s192_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s193_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s192_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s193_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s192_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s193_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s193_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14232
s194_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*") .
s195_(X,"f"):-s194_(X,"t*") .
s195_(X,"t*"):-s194_(X,"f") .
rdfs_subPropertyOf_(X,@new(s195,X,rdfs_subPropertyOf,1..1),"t"):-choose(s195,X,rdfs_subPropertyOf,1) .
choose(s195,X,rdfs_subPropertyOf,1);choose(s195,X,rdfs_subPropertyOf,0):-s195_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s196_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s195_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s196_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s195_(X,"t*") .
s197_(X,"f"):-s196_(X,"t*") .
s197_(X,"t*"):-s196_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s197_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s197_(X,"f") .

s192_(X,"f");s194_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"f") .
s198_(X,"t*"):-s171_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"f"):-s198_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"t*"):-s198_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"f") .
s199_(X,"t*"):-s171_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s199_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s199_(X,"f") .
s200_(X,"t*"):-s171_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"f"):-s200_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"t*"):-s200_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14225
s201_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s202_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s201_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s202_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s201_(X,"t*") .

s203_(X,"t*"):-s202_(X,"t*") .
owl_Class_(X,"t"):-s203_(X,"t*") .
owl_Class_(X,"f"):-s203_(X,"f") .
s204_(X,"t*"):-s202_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s204_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s204_(X,"f") .
s203_(X,"f");s204_(X,"f"):-s202_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14225
s205_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*") .
s206_(X,"f"):-s205_(X,"t*") .
s206_(X,"t*"):-s205_(X,"f") .
rdfs_range_(X,@new(s206,X,rdfs_range,1..1),"t"):-choose(s206,X,rdfs_range,1) .
choose(s206,X,rdfs_range,1);choose(s206,X,rdfs_range,0):-s206_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s207_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s206_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s207_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s206_(X,"t*") .
s208_(X,"f"):-s207_(X,"t*") .
s208_(X,"t*"):-s207_(X,"f") .

s209_(X,"t*"):-s208_(X,"t*") .
owl_Class_(X,"t"):-s209_(X,"t*") .
owl_Class_(X,"f"):-s209_(X,"f") .
s210_(X,"t*"):-s208_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s210_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s210_(X,"f") .
s209_(X,"f");s210_(X,"f"):-s208_(X,"f") .

s201_(X,"f");s205_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"f");s198_(X,"f");s199_(X,"f");s200_(X,"f"):-s171_(X,"f") .
s142_(X,"t*");s171_(X,"t*"):-s141_(X,"t*") .
s211_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"f"):-s211_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14209_(X,"t*"):-s211_(X,"f") .
s212_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"f"):-s212_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14212_(X,"t*"):-s212_(X,"f") .
s213_(X,"t*"):-d_PropertyShape_(X,"t*") .
s214_(X,"f"):-s213_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*"):-s214_(X,"t*") .




s215_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*");s216_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f")} (C-0):-s215_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*")}=C,C>0 .
0 {s216_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t**")} 0:-s215_(X,"t*") .

s217_(X,"t*"):-s216_(X,"t*") .
owl_Class_(X,"t"):-s217_(X,"t*") .
owl_Class_(X,"f"):-s217_(X,"f") .
s218_(X,"t*"):-s216_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s218_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s218_(X,"f") .
s217_(X,"f");s218_(X,"f"):-s216_(X,"f") .

s219_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*") .
s220_(X,"f"):-s219_(X,"t*") .
s220_(X,"t*"):-s219_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,@new(s220,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1..1),"t"):-choose(s220,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1) .
choose(s220,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1);choose(s220,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,0):-s220_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*");s221_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f")} (C-0):-s220_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*")}=C,C>0 .
1 {s221_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t**")} 1:-s220_(X,"t*") .
s222_(X,"f"):-s221_(X,"t*") .
s222_(X,"t*"):-s221_(X,"f") .

s223_(X,"t*"):-s222_(X,"t*") .
owl_Class_(X,"t"):-s223_(X,"t*") .
owl_Class_(X,"f"):-s223_(X,"f") .
s224_(X,"t*"):-s222_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s224_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s224_(X,"f") .
s223_(X,"f");s224_(X,"f"):-s222_(X,"f") .

s215_(X,"f");s219_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*"):-s214_(X,"t*") .

s225_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s226_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s225_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s226_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s225_(X,"t*") .

s227_(X,"t*"):-s226_(X,"t*") .
owl_Class_(X,"t"):-s227_(X,"t*") .
owl_Class_(X,"f"):-s227_(X,"f") .
s228_(X,"t*"):-s226_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s228_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s228_(X,"f") .
s227_(X,"f");s228_(X,"f"):-s226_(X,"f") .

s229_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*") .
s230_(X,"f"):-s229_(X,"t*") .
s230_(X,"t*"):-s229_(X,"f") .
rdfs_range_(X,@new(s230,X,rdfs_range,1..1),"t"):-choose(s230,X,rdfs_range,1) .
choose(s230,X,rdfs_range,1);choose(s230,X,rdfs_range,0):-s230_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s231_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s230_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s231_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s230_(X,"t*") .
s232_(X,"f"):-s231_(X,"t*") .
s232_(X,"t*"):-s231_(X,"f") .

s233_(X,"t*"):-s232_(X,"t*") .
owl_Class_(X,"t"):-s233_(X,"t*") .
owl_Class_(X,"f"):-s233_(X,"f") .
s234_(X,"t*"):-s232_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s234_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s234_(X,"f") .
s233_(X,"f");s234_(X,"f"):-s232_(X,"f") .

s225_(X,"f");s229_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*"):-s214_(X,"t*") .

s235_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s236_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s235_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s236_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s235_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s236_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s236_(X,"f") .

s237_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*") .
s238_(X,"f"):-s237_(X,"t*") .
s238_(X,"t*"):-s237_(X,"f") .
rdfs_subPropertyOf_(X,@new(s238,X,rdfs_subPropertyOf,1..1),"t"):-choose(s238,X,rdfs_subPropertyOf,1) .
choose(s238,X,rdfs_subPropertyOf,1);choose(s238,X,rdfs_subPropertyOf,0):-s238_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s239_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s238_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s239_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s238_(X,"t*") .
s240_(X,"f"):-s239_(X,"t*") .
s240_(X,"t*"):-s239_(X,"f") .

owl_ObjectProperty_(X,"t"):-s240_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s240_(X,"f") .

s235_(X,"f");s237_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"f") .
s241_(X,"t*"):-s214_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s241_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s241_(X,"f") .
s242_(X,"t*"):-s214_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"f"):-s242_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"t*"):-s242_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"f");s241_(X,"f");s242_(X,"f"):-s214_(X,"f") .
s243_(X,"f"):-s213_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*"):-s243_(X,"t*") .




s244_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*");s245_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f")} (C-0):-s244_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*")}=C,C>0 .
0 {s245_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t**")} 0:-s244_(X,"t*") .

s246_(X,"t*"):-s245_(X,"t*") .
rdfs_Datatype_(X,"t"):-s246_(X,"t*") .
rdfs_Datatype_(X,"f"):-s246_(X,"f") .
s247_(X,"t*"):-s245_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s247_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s247_(X,"f") .
s246_(X,"f");s247_(X,"f"):-s245_(X,"f") .

s248_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*") .
s249_(X,"f"):-s248_(X,"t*") .
s249_(X,"t*"):-s248_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,@new(s249,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1..1),"t"):-choose(s249,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1) .
choose(s249,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1);choose(s249,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,0):-s249_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*");s250_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f")} (C-0):-s249_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*")}=C,C>0 .
1 {s250_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t**")} 1:-s249_(X,"t*") .
s251_(X,"f"):-s250_(X,"t*") .
s251_(X,"t*"):-s250_(X,"f") .

s252_(X,"t*"):-s251_(X,"t*") .
rdfs_Datatype_(X,"t"):-s252_(X,"t*") .
rdfs_Datatype_(X,"f"):-s252_(X,"f") .
s253_(X,"t*"):-s251_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s253_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s253_(X,"f") .
s252_(X,"f");s253_(X,"f"):-s251_(X,"f") .

s244_(X,"f");s248_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*"):-s243_(X,"t*") .

s254_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s255_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s254_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s255_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s254_(X,"t*") .

s256_(X,"t*"):-s255_(X,"t*") .
rdfs_Datatype_(X,"t"):-s256_(X,"t*") .
rdfs_Datatype_(X,"f"):-s256_(X,"f") .
s257_(X,"t*"):-s255_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s257_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s257_(X,"f") .
s256_(X,"f");s257_(X,"f"):-s255_(X,"f") .

s258_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*") .
s259_(X,"f"):-s258_(X,"t*") .
s259_(X,"t*"):-s258_(X,"f") .
rdfs_range_(X,@new(s259,X,rdfs_range,1..1),"t"):-choose(s259,X,rdfs_range,1) .
choose(s259,X,rdfs_range,1);choose(s259,X,rdfs_range,0):-s259_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s260_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s259_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s260_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s259_(X,"t*") .
s261_(X,"f"):-s260_(X,"t*") .
s261_(X,"t*"):-s260_(X,"f") .

s262_(X,"t*"):-s261_(X,"t*") .
rdfs_Datatype_(X,"t"):-s262_(X,"t*") .
rdfs_Datatype_(X,"f"):-s262_(X,"f") .
s263_(X,"t*"):-s261_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s263_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s263_(X,"f") .
s262_(X,"f");s263_(X,"f"):-s261_(X,"f") .

s254_(X,"f");s258_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*"):-s243_(X,"t*") .

s264_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s265_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s264_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s265_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s264_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s265_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s265_(X,"f") .

s266_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*") .
s267_(X,"f"):-s266_(X,"t*") .
s267_(X,"t*"):-s266_(X,"f") .
rdfs_subPropertyOf_(X,@new(s267,X,rdfs_subPropertyOf,1..1),"t"):-choose(s267,X,rdfs_subPropertyOf,1) .
choose(s267,X,rdfs_subPropertyOf,1);choose(s267,X,rdfs_subPropertyOf,0):-s267_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s268_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s267_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s268_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s267_(X,"t*") .
s269_(X,"f"):-s268_(X,"t*") .
s269_(X,"t*"):-s268_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s269_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s269_(X,"f") .

s264_(X,"f");s266_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"f") .
s270_(X,"t*"):-s243_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"f"):-s270_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"t*"):-s270_(X,"f") .
s271_(X,"t*"):-s243_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s271_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s271_(X,"f") .
s272_(X,"t*"):-s243_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"f"):-s272_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"t*"):-s272_(X,"f") .

s273_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s274_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s273_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s274_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s273_(X,"t*") .

s275_(X,"t*"):-s274_(X,"t*") .
owl_Class_(X,"t"):-s275_(X,"t*") .
owl_Class_(X,"f"):-s275_(X,"f") .
s276_(X,"t*"):-s274_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s276_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s276_(X,"f") .
s275_(X,"f");s276_(X,"f"):-s274_(X,"f") .

s277_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*") .
s278_(X,"f"):-s277_(X,"t*") .
s278_(X,"t*"):-s277_(X,"f") .
rdfs_range_(X,@new(s278,X,rdfs_range,1..1),"t"):-choose(s278,X,rdfs_range,1) .
choose(s278,X,rdfs_range,1);choose(s278,X,rdfs_range,0):-s278_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s279_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s278_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s279_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s278_(X,"t*") .
s280_(X,"f"):-s279_(X,"t*") .
s280_(X,"t*"):-s279_(X,"f") .

s281_(X,"t*"):-s280_(X,"t*") .
owl_Class_(X,"t"):-s281_(X,"t*") .
owl_Class_(X,"f"):-s281_(X,"f") .
s282_(X,"t*"):-s280_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s282_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s282_(X,"f") .
s281_(X,"f");s282_(X,"f"):-s280_(X,"f") .

s273_(X,"f");s277_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"f");s270_(X,"f");s271_(X,"f");s272_(X,"f"):-s243_(X,"f") .
s214_(X,"t*");s243_(X,"t*"):-s213_(X,"t*") .
s283_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*"):-s283_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"f"):-s283_(X,"f") .

s284_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
s285_(X,"f"):-s284_(X,"t*") .
s285_(X,"t*"):-s284_(X,"f") .
rdfs_range_(X,@new(s285,X,rdfs_range,1..1),"t"):-choose(s285,X,rdfs_range,1) .
rdfs_range_(X,@new(s285,X,rdfs_range,1..2),"t"):-choose(s285,X,rdfs_range,2) .
choose(s285,X,rdfs_range,2);choose(s285,X,rdfs_range,1);choose(s285,X,rdfs_range,0):-s285_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s286_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s285_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s286_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s285_(X,"t*") .


s287_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s288_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s287_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s288_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s287_(X,"t*") .


s289_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
s290_(X,"f"):-s289_(X,"t*") .
s290_(X,"t*"):-s289_(X,"f") .
rdfs_range_(X,@new(s290,X,rdfs_range,1..1),"t"):-choose(s290,X,rdfs_range,1) .
choose(s290,X,rdfs_range,1);choose(s290,X,rdfs_range,0):-s290_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s291_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s290_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s291_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s290_(X,"t*") .
s292_(X,"f"):-s291_(X,"t*") .
s292_(X,"t*"):-s291_(X,"f") .


s284_(X,"f");s287_(X,"f");s289_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"f") .
s293_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*"):-s293_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"f"):-s293_(X,"f") .

s294_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s295_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s294_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s295_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s294_(X,"t*") .


s296_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
s297_(X,"f"):-s296_(X,"t*") .
s297_(X,"t*"):-s296_(X,"f") .
rdfs_range_(X,@new(s297,X,rdfs_range,1..1),"t"):-choose(s297,X,rdfs_range,1) .
rdfs_range_(X,@new(s297,X,rdfs_range,1..2),"t"):-choose(s297,X,rdfs_range,2) .
choose(s297,X,rdfs_range,2);choose(s297,X,rdfs_range,1);choose(s297,X,rdfs_range,0):-s297_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s298_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s297_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s298_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s297_(X,"t*") .


s299_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"t*") .
s300_(X,"f"):-s299_(X,"t*") .
s300_(X,"t*"):-s299_(X,"f") .
rdfs_range_(X,@new(s300,X,rdfs_range,1..1),"t"):-choose(s300,X,rdfs_range,1) .
choose(s300,X,rdfs_range,1);choose(s300,X,rdfs_range,0):-s300_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s301_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s300_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s301_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s300_(X,"t*") .
s302_(X,"f"):-s301_(X,"t*") .
s302_(X,"t*"):-s301_(X,"f") .


s294_(X,"f");s296_(X,"f");s299_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14208_(X,"f") .
s303_(X,"t*"):-d_PropertyShape_(X,"t*") .
s304_(X,"f"):-s303_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*"):-s304_(X,"t*") .




s305_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*");s306_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f")} (C-0):-s305_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*")}=C,C>0 .
0 {s306_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t**")} 0:-s305_(X,"t*") .

s307_(X,"t*"):-s306_(X,"t*") .
owl_Class_(X,"t"):-s307_(X,"t*") .
owl_Class_(X,"f"):-s307_(X,"f") .
s308_(X,"t*"):-s306_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s308_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s308_(X,"f") .
s307_(X,"f");s308_(X,"f"):-s306_(X,"f") .

s309_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"t*") .
s310_(X,"f"):-s309_(X,"t*") .
s310_(X,"t*"):-s309_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,@new(s310,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1..1),"t"):-choose(s310,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1) .
choose(s310,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,1);choose(s310,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st,0):-s310_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*");s311_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f")} (C-0):-s310_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t*")}=C,C>0 .
1 {s311_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t**")} 1:-s310_(X,"t*") .
s312_(X,"f"):-s311_(X,"t*") .
s312_(X,"t*"):-s311_(X,"f") .

s313_(X,"t*"):-s312_(X,"t*") .
owl_Class_(X,"t"):-s313_(X,"t*") .
owl_Class_(X,"f"):-s313_(X,"f") .
s314_(X,"t*"):-s312_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s314_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s314_(X,"f") .
s313_(X,"f");s314_(X,"f"):-s312_(X,"f") .

s305_(X,"f");s309_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*"):-s304_(X,"t*") .

s315_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s316_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s315_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s316_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s315_(X,"t*") .

s317_(X,"t*"):-s316_(X,"t*") .
owl_Class_(X,"t"):-s317_(X,"t*") .
owl_Class_(X,"f"):-s317_(X,"f") .
s318_(X,"t*"):-s316_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s318_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s318_(X,"f") .
s317_(X,"f");s318_(X,"f"):-s316_(X,"f") .

s319_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"t*") .
s320_(X,"f"):-s319_(X,"t*") .
s320_(X,"t*"):-s319_(X,"f") .
rdfs_range_(X,@new(s320,X,rdfs_range,1..1),"t"):-choose(s320,X,rdfs_range,1) .
choose(s320,X,rdfs_range,1);choose(s320,X,rdfs_range,0):-s320_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s321_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s320_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s321_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s320_(X,"t*") .
s322_(X,"f"):-s321_(X,"t*") .
s322_(X,"t*"):-s321_(X,"f") .

s323_(X,"t*"):-s322_(X,"t*") .
owl_Class_(X,"t"):-s323_(X,"t*") .
owl_Class_(X,"f"):-s323_(X,"f") .
s324_(X,"t*"):-s322_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s324_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s324_(X,"f") .
s323_(X,"f");s324_(X,"f"):-s322_(X,"f") .

s315_(X,"f");s319_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*"):-s304_(X,"t*") .

s325_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s326_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s325_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s326_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s325_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s326_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s326_(X,"f") .

s327_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"t*") .
s328_(X,"f"):-s327_(X,"t*") .
s328_(X,"t*"):-s327_(X,"f") .
rdfs_subPropertyOf_(X,@new(s328,X,rdfs_subPropertyOf,1..1),"t"):-choose(s328,X,rdfs_subPropertyOf,1) .
choose(s328,X,rdfs_subPropertyOf,1);choose(s328,X,rdfs_subPropertyOf,0):-s328_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s329_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s328_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s329_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s328_(X,"t*") .
s330_(X,"f"):-s329_(X,"t*") .
s330_(X,"t*"):-s329_(X,"f") .

owl_ObjectProperty_(X,"t"):-s330_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s330_(X,"f") .

s325_(X,"f");s327_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"f") .
s331_(X,"t*"):-s304_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s331_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s331_(X,"f") .
s332_(X,"t*"):-s304_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"f"):-s332_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14213_(X,"t*"):-s332_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14214_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14221_(X,"f");s331_(X,"f");s332_(X,"f"):-s304_(X,"f") .
s333_(X,"f"):-s303_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*"):-s333_(X,"t*") .




s334_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*");s335_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f")} (C-0):-s334_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*")}=C,C>0 .
0 {s335_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t**")} 0:-s334_(X,"t*") .

s336_(X,"t*"):-s335_(X,"t*") .
rdfs_Datatype_(X,"t"):-s336_(X,"t*") .
rdfs_Datatype_(X,"f"):-s336_(X,"f") .
s337_(X,"t*"):-s335_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s337_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s337_(X,"f") .
s336_(X,"f");s337_(X,"f"):-s335_(X,"f") .

s338_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"t*") .
s339_(X,"f"):-s338_(X,"t*") .
s339_(X,"t*"):-s338_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,@new(s339,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1..1),"t"):-choose(s339,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1) .
choose(s339,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,1);choose(s339,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st,0):-s339_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*");s340_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f")} (C-0):-s339_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t*")}=C,C>0 .
1 {s340_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t**")} 1:-s339_(X,"t*") .
s341_(X,"f"):-s340_(X,"t*") .
s341_(X,"t*"):-s340_(X,"f") .

s342_(X,"t*"):-s341_(X,"t*") .
rdfs_Datatype_(X,"t"):-s342_(X,"t*") .
rdfs_Datatype_(X,"f"):-s342_(X,"f") .
s343_(X,"t*"):-s341_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s343_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s343_(X,"f") .
s342_(X,"f");s343_(X,"f"):-s341_(X,"f") .

s334_(X,"f");s338_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*"):-s333_(X,"t*") .

s344_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s345_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s344_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s345_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s344_(X,"t*") .

s346_(X,"t*"):-s345_(X,"t*") .
rdfs_Datatype_(X,"t"):-s346_(X,"t*") .
rdfs_Datatype_(X,"f"):-s346_(X,"f") .
s347_(X,"t*"):-s345_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s347_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s347_(X,"f") .
s346_(X,"f");s347_(X,"f"):-s345_(X,"f") .

s348_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"t*") .
s349_(X,"f"):-s348_(X,"t*") .
s349_(X,"t*"):-s348_(X,"f") .
rdfs_range_(X,@new(s349,X,rdfs_range,1..1),"t"):-choose(s349,X,rdfs_range,1) .
choose(s349,X,rdfs_range,1);choose(s349,X,rdfs_range,0):-s349_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s350_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s349_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s350_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s349_(X,"t*") .
s351_(X,"f"):-s350_(X,"t*") .
s351_(X,"t*"):-s350_(X,"f") .

s352_(X,"t*"):-s351_(X,"t*") .
rdfs_Datatype_(X,"t"):-s352_(X,"t*") .
rdfs_Datatype_(X,"f"):-s352_(X,"f") .
s353_(X,"t*"):-s351_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"f"):-s353_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14196_(X,"t*"):-s353_(X,"f") .
s352_(X,"f");s353_(X,"f"):-s351_(X,"f") .

s344_(X,"f");s348_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*"):-s333_(X,"t*") .

s354_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s355_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s354_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s355_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s354_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s355_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s355_(X,"f") .

s356_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"t*") .
s357_(X,"f"):-s356_(X,"t*") .
s357_(X,"t*"):-s356_(X,"f") .
rdfs_subPropertyOf_(X,@new(s357,X,rdfs_subPropertyOf,1..1),"t"):-choose(s357,X,rdfs_subPropertyOf,1) .
choose(s357,X,rdfs_subPropertyOf,1);choose(s357,X,rdfs_subPropertyOf,0):-s357_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s358_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s357_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s358_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s357_(X,"t*") .
s359_(X,"f"):-s358_(X,"t*") .
s359_(X,"t*"):-s358_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s359_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s359_(X,"f") .

s354_(X,"f");s356_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"f") .
s360_(X,"t*"):-s333_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"f"):-s360_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14222_(X,"t*"):-s360_(X,"f") .
s361_(X,"t*"):-s333_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s361_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s361_(X,"f") .
s362_(X,"t*"):-s333_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"f"):-s362_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14224_(X,"t*"):-s362_(X,"f") .

s363_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s364_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s363_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s364_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s363_(X,"t*") .

s365_(X,"t*"):-s364_(X,"t*") .
owl_Class_(X,"t"):-s365_(X,"t*") .
owl_Class_(X,"f"):-s365_(X,"f") .
s366_(X,"t*"):-s364_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s366_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s366_(X,"f") .
s365_(X,"f");s366_(X,"f"):-s364_(X,"f") .

s367_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"t*") .
s368_(X,"f"):-s367_(X,"t*") .
s368_(X,"t*"):-s367_(X,"f") .
rdfs_range_(X,@new(s368,X,rdfs_range,1..1),"t"):-choose(s368,X,rdfs_range,1) .
choose(s368,X,rdfs_range,1);choose(s368,X,rdfs_range,0):-s368_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s369_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s368_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s369_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s368_(X,"t*") .
s370_(X,"f"):-s369_(X,"t*") .
s370_(X,"t*"):-s369_(X,"f") .

s371_(X,"t*"):-s370_(X,"t*") .
owl_Class_(X,"t"):-s371_(X,"t*") .
owl_Class_(X,"f"):-s371_(X,"f") .
s372_(X,"t*"):-s370_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s372_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s372_(X,"f") .
s371_(X,"f");s372_(X,"f"):-s370_(X,"f") .

s363_(X,"f");s367_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14225_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14223_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd14232_(X,"f");s360_(X,"f");s361_(X,"f");s362_(X,"f"):-s333_(X,"f") .
s304_(X,"t*");s333_(X,"t*"):-s303_(X,"t*") .
s373_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*"):-s373_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"f"):-s373_(X,"f") .




s374_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*");s375_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f")} (C-0):-s374_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*")}=C,C>0 .
0 {s375_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t**")} 0:-s374_(X,"t*") .

s376_(X,"t*"):-s375_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s376_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s376_(X,"f") .
s377_(X,"t*"):-s375_(X,"t*") .
owl_Class_(X,"t"):-s377_(X,"t*") .
owl_Class_(X,"f"):-s377_(X,"f") .
s376_(X,"f");s377_(X,"f"):-s375_(X,"f") .

s378_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"t*") .
s379_(X,"f"):-s378_(X,"t*") .
s379_(X,"t*"):-s378_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,@new(s379,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1..1),"t"):-choose(s379,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1) .
choose(s379,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,1);choose(s379,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st,0):-s379_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*");s380_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f")} (C-0):-s379_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t*")}=C,C>0 .
1 {s380_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t**")} 1:-s379_(X,"t*") .
s381_(X,"f"):-s380_(X,"t*") .
s381_(X,"t*"):-s380_(X,"f") .

s382_(X,"t*"):-s381_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s382_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s382_(X,"f") .
s383_(X,"t*"):-s381_(X,"t*") .
owl_Class_(X,"t"):-s383_(X,"t*") .
owl_Class_(X,"f"):-s383_(X,"f") .
s382_(X,"f");s383_(X,"f"):-s381_(X,"f") .

s374_(X,"f");s378_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_(X,"f") .
s384_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"f"):-s384_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"t*"):-s384_(X,"f") .
s385_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*"):-s385_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f"):-s385_(X,"f") .

s386_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s387_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s386_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s387_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s386_(X,"t*") .

s388_(X,"t*"):-s387_(X,"t*") .
owl_Class_(X,"t"):-s388_(X,"t*") .
owl_Class_(X,"f"):-s388_(X,"f") .
s389_(X,"t*"):-s387_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s389_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s389_(X,"f") .
s388_(X,"f");s389_(X,"f"):-s387_(X,"f") .

s390_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"t*") .
s391_(X,"f"):-s390_(X,"t*") .
s391_(X,"t*"):-s390_(X,"f") .
rdfs_domain_(X,@new(s391,X,rdfs_domain,1..1),"t"):-choose(s391,X,rdfs_domain,1) .
choose(s391,X,rdfs_domain,1);choose(s391,X,rdfs_domain,0):-s391_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s392_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s391_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s392_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s391_(X,"t*") .
s393_(X,"f"):-s392_(X,"t*") .
s393_(X,"t*"):-s392_(X,"f") .

s394_(X,"t*"):-s393_(X,"t*") .
owl_Class_(X,"t"):-s394_(X,"t*") .
owl_Class_(X,"f"):-s394_(X,"f") .
s395_(X,"t*"):-s393_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s395_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s395_(X,"f") .
s394_(X,"f");s395_(X,"f"):-s393_(X,"f") .

s386_(X,"f");s390_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14201_(X,"f") .
s396_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"f"):-s396_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14211_(X,"t*"):-s396_(X,"f") .
s49_(X,"f");s59_(X,"f");s60_(X,"f");s70_(X,"f");s71_(X,"f");s72_(X,"f");s82_(X,"f");s83_(X,"f");s84_(X,"f");s85_(X,"f");s96_(X,"f");s97_(X,"f");s98_(X,"f");s108_(X,"f");s119_(X,"f");s130_(X,"f");s141_(X,"f");s211_(X,"f");s212_(X,"f");s213_(X,"f");s283_(X,"f");s293_(X,"f");s303_(X,"f");s373_(X,"f");s384_(X,"f");s385_(X,"f");s396_(X,"f"):-d_PropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14233_(X,"t*"):-d_FunctionalPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14233_(X,"f"):-d_FunctionalPropertyShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14233
s397_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14233_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*");s398_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"f")} (C-0):-s397_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"f") .
0 {s398_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t**")} 0:-s397_(X,"t*") .

owl_FunctionalProperty_(X,"t"):-s398_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s398_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14233
s399_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14233_(X,"t*") .
s400_(X,"f"):-s399_(X,"t*") .
s400_(X,"t*"):-s399_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s400,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s400,X,rdfs_subPropertyOf,1) .
choose(s400,X,rdfs_subPropertyOf,1);choose(s400,X,rdfs_subPropertyOf,0):-s400_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*");s401_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"f")} (C-0):-s400_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*")}=C,C>0 .
1 {s401_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t**")} 1:-s400_(X,"t*") .
s402_(X,"f"):-s401_(X,"t*") .
s402_(X,"t*"):-s401_(X,"f") .

owl_FunctionalProperty_(X,"t"):-s402_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s402_(X,"f") .

s397_(X,"f");s399_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14233_(X,"f") .
s403_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,"t*"):-s403_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,"f"):-s403_(X,"f") .


s404_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f"):-s404_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s404_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s404_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd14252
s405_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,@new(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,1..1),"t"):-choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,1) .
choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,1);choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,0):-s405_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*");s406_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f")} (C-0):-s405_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,X1,"f") .
1 {s406_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t**")} 1:-s405_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14252
s407_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,"t*") .
s408_(X,"f"):-s407_(X,"t*") .
s408_(X,"t*"):-s407_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,@new(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,1..1),"t"):-choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,1) .
choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,1);choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st,0):-s408_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*");s409_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f")} (C-0):-s408_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t*")}=C,C>0 .
1 {s409_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t**")} 1:-s408_(X,"t*") .
s410_(X,"f"):-s409_(X,"t*") .
s410_(X,"t*"):-s409_(X,"f") .


s404_(X,"f");s405_(X,"f");s407_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_(X,"f") .
s411_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,"t*"):-s411_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,"f"):-s411_(X,"f") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14247
s412_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,"t*") .
s413_(X,"f"):-s412_(X,"t*") .
s413_(X,"t*"):-s412_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,@new(s413,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,1..1),"t"):-choose(s413,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,1) .
choose(s413,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,1);choose(s413,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,0):-s413_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*");s414_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f")} (C-0):-s413_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,X1,"f") .
1 {s414_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t**")} 1:-s413_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14247
s415_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*");s416_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f")} (C-0):-s415_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*")}=C,C>0 .
0 {s416_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t**")} 0:-s415_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14247
s417_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,"t*") .
s418_(X,"f"):-s417_(X,"t*") .
s418_(X,"t*"):-s417_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,@new(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,1..1),"t"):-choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,1) .
choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,1);choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st,0):-s418_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*");s419_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f")} (C-0):-s418_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t*")}=C,C>0 .
1 {s419_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t**")} 1:-s418_(X,"t*") .
s420_(X,"f"):-s419_(X,"t*") .
s420_(X,"t*"):-s419_(X,"f") .


s412_(X,"f");s415_(X,"f");s417_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_(X,"f") .
s403_(X,"t*");s411_(X,"t*"):-d_DomainConsistencyShape_(X,"t*") .
s421_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,"t*"):-s421_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,"f"):-s421_(X,"f") .


% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd14262
s422_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,@new(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,1..1),"t"):-choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,1) .
choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,1);choose(s422,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,0):-s422_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*");s423_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f")} (C-0):-s422_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,X1,"f") .
1 {s423_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t**")} 1:-s422_(X,"t*") .


s424_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f"):-s424_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s424_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s424_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14262
s425_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,"t*") .
s426_(X,"f"):-s425_(X,"t*") .
s426_(X,"t*"):-s425_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,@new(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,1..1),"t"):-choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,1) .
choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,1);choose(s426,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st,0):-s426_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*");s427_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f")} (C-0):-s426_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t*")}=C,C>0 .
1 {s427_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t**")} 1:-s426_(X,"t*") .
s428_(X,"f"):-s427_(X,"t*") .
s428_(X,"t*"):-s427_(X,"f") .


s422_(X,"f");s424_(X,"f");s425_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_(X,"f") .
s429_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,"t*"):-s429_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,"f"):-s429_(X,"f") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14257
s430_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,"t*") .
s431_(X,"f"):-s430_(X,"t*") .
s431_(X,"t*"):-s430_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,@new(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,1..1),"t"):-choose(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,1) .
choose(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,1);choose(s431,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,0):-s431_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*");s432_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f")} (C-0):-s431_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,X1,"f") .
1 {s432_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t**")} 1:-s431_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd14257
s433_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*");s434_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f")} (C-0):-s433_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*")}=C,C>0 .
0 {s434_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t**")} 0:-s433_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd14257
s435_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,"t*") .
s436_(X,"f"):-s435_(X,"t*") .
s436_(X,"t*"):-s435_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,@new(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,1..1),"t"):-choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,1) .
choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,1);choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st,0):-s436_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*");s437_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f")} (C-0):-s436_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t*")}=C,C>0 .
1 {s437_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t**")} 1:-s436_(X,"t*") .
s438_(X,"f"):-s437_(X,"t*") .
s438_(X,"t*"):-s437_(X,"f") .


s430_(X,"f");s433_(X,"f");s435_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_(X,"f") .
s421_(X,"t*");s429_(X,"t*"):-d_RangeConsistencyShape_(X,"t*") .
s439_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s439_(X,"t*") .
owl_Class_(X,"f"):-s439_(X,"f") .
s440_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s440_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s440_(X,"f") .
s441_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s441_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s441_(X,"f") .
s442_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"f"):-s442_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14195_(X,"t*"):-s442_(X,"f") .
s443_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s443_(X,"t*") .
owl_Class_(X,"f"):-s443_(X,"f") .
s444_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s444_(X,"t*") .
owl_Class_(X,"f"):-s444_(X,"f") .
s439_(X,"f");s440_(X,"f");s441_(X,"f");s442_(X,"f");s443_(X,"f");s444_(X,"f"):-d_ClassShape_(X,"f") .

% Interpretation Rules

owl_inverseOf_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f") .
rdfs_domain_(X,Y,"t**"):-rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14238_st_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14238_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14238_st_(X,Y,"f") .
dc_contributor_(X,Y,"t**"):-dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14265_st_(X,Y,"t**"):-dc_contributor_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14265_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14265_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14235_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14235_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14235_st_(X,Y,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),not rdfs_subPropertyOf_inv_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14236_st_(X,Y,"f") .
owl_SymmetricProperty_(X,"t**"):-owl_SymmetricProperty_(X,"t*"),not owl_SymmetricProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14201_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14201_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14201_st_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14208_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14208_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14208_st_(X,Y,"f") .
owl_OntologyProperty_(X,"t**"):-owl_OntologyProperty_(X,"t*"),not owl_OntologyProperty_(X,"f") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
owl_AnnotationProperty_(X,"t**"):-owl_AnnotationProperty_(X,"t*"),not owl_AnnotationProperty_(X,"f") .
owl_unionOf_(X,Y,"t**"):-owl_unionOf_(X,Y,"t*"),not owl_unionOf_(X,Y,"f") .
rdf_rest_(X,Y,"t**"):-rdf_rest_(X,Y,"t*"),not rdf_rest_(X,Y,"f") .
rdf_rest_star_(X,Y,"t**"):-rdf_rest_star_(X,Y,"t*"),not rdf_rest_star_(X,Y,"f") .
rdf_first_(X,Y,"t**"):-rdf_first_(X,Y,"t*"),not rdf_first_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,X3,"f"),rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14214_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14214_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14214_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14221_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14221_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14221_st_(X,Y,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14223_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14223_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14223_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14232_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14232_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14232_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14225_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14225_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14225_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14233_st_(X,Y,"f") .
owl_FunctionalProperty_(X,"t**"):-owl_FunctionalProperty_(X,"t*"),not owl_FunctionalProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .

% Program Constraints

:-owl_inverseOf_(X,Y,"t"),owl_inverseOf_(X,Y,"f") .
:-rdfs_domain_(X,Y,"t"),rdfs_domain_(X,Y,"f") .
:-s1_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t**") .
:-s1_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14239_st_(X,Y,"f") .
:-s3_(X,"f") .
:-s7_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"f") .
:-s10_(X,"f") .
:-s11_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t**") .
:-s11_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14242_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s15_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
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
:-s52_(X,"f") .
:-s54_(X,"f") .
:-s58_(X,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-s62_(X,"f") .
:-s65_(X,"f") .
:-s69_(X,"f") .
:-owl_OntologyProperty_(X,"t"),owl_OntologyProperty_(X,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-s75_(X,"f") .
:-s77_(X,"f") .
:-s81_(X,"f") .
:-owl_AnnotationProperty_(X,"t"),owl_AnnotationProperty_(X,"f") .
:-owl_unionOf_(X,Y,"t"),owl_unionOf_(X,Y,"f") .
:-rdf_rest_(X,Y,"t"),rdf_rest_(X,Y,"f") .
:-rdf_rest_star_(X,Y,"t"),rdf_rest_star_(X,Y,"f") .
:-rdf_rest_star_(X,X,"f") .
:-rdf_first_(X,Y,"t"),rdf_first_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14202_st_(X,Y,"f") .
:-s101_(X,"f") .
:-s103_(X,"f") .
:-s107_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14215_st_(X,Y,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14226_st_(X,Y,"f") .
:-s286_(X,"f") .
:-s288_(X,"f") .
:-s292_(X,"f") .
:-s295_(X,"f") .
:-s298_(X,"f") .
:-s302_(X,"f") .
:-owl_FunctionalProperty_(X,"t"),owl_FunctionalProperty_(X,"f") .
:-s404_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t**") .
:-s404_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14252_st_(X,Y,"f") .
:-s406_(X,"f") .
:-s410_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14247_st_(X,Y,"f") .
:-s414_(X,"f") .
:-s416_(X,"f") .
:-s420_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"f") .
:-s423_(X,"f") .
:-s424_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t**") .
:-s424_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd14262_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s428_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd14257_st_(X,Y,"f") .
:-s432_(X,"f") .
:-s434_(X,"f") .
:-s438_(X,"f") .

% Change Set Rules

add(owl_inverseOf(X,Y)):-owl_inverseOf_(X,Y,"t**"),not owl_inverseOf(X,Y) .
del(owl_inverseOf(X,Y)):-owl_inverseOf_(X,Y,"f"),owl_inverseOf(X,Y) .
add(rdfs_domain(X,Y)):-rdfs_domain_(X,Y,"t**"),not rdfs_domain(X,Y) .
del(rdfs_domain(X,Y)):-rdfs_domain_(X,Y,"f"),rdfs_domain(X,Y) .
add(rdfs_range(X,Y)):-rdfs_range_(X,Y,"t**"),not rdfs_range(X,Y) .
del(rdfs_range(X,Y)):-rdfs_range_(X,Y,"f"),rdfs_range(X,Y) .
add(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"t**"),not owl_ObjectProperty(X) .
del(owl_ObjectProperty(X)):-owl_ObjectProperty_(X,"f"),owl_ObjectProperty(X) .
add(dc_contributor(X,Y)):-dc_contributor_(X,Y,"t**"),not dc_contributor(X,Y) .
del(dc_contributor(X,Y)):-dc_contributor_(X,Y,"f"),dc_contributor(X,Y) .
add(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"t**"),not rdfs_subPropertyOf(X,Y) .
del(rdfs_subPropertyOf(X,Y)):-rdfs_subPropertyOf_(X,Y,"f"),rdfs_subPropertyOf(X,Y) .
add(owl_SymmetricProperty(X)):-owl_SymmetricProperty_(X,"t**"),not owl_SymmetricProperty(X) .
del(owl_SymmetricProperty(X)):-owl_SymmetricProperty_(X,"f"),owl_SymmetricProperty(X) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"t**"),not owl_OntologyProperty(X) .
del(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"f"),owl_OntologyProperty(X) .
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"t**"),not owl_AnnotationProperty(X) .
del(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"f"),owl_AnnotationProperty(X) .
add(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"t**"),not owl_unionOf(X,Y) .
del(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"f"),owl_unionOf(X,Y) .
add(rdf_rest(X,Y)):-rdf_rest_(X,Y,"t**"),not rdf_rest(X,Y) .
del(rdf_rest(X,Y)):-rdf_rest_(X,Y,"f"),rdf_rest(X,Y) .
add(rdf_first(X,Y)):-rdf_first_(X,Y,"t**"),not rdf_first(X,Y) .
del(rdf_first(X,Y)):-rdf_first_(X,Y,"f"),rdf_first(X,Y) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
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
:-add(rdf_first(X,Y)) .
:-del(rdf_first(X,Y)) .
:-del(owl_unionOf(X,Y)) .
:-del(rdf_rest(X,Y)) .
:-add(owl_unionOf(X,Y)) .
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
