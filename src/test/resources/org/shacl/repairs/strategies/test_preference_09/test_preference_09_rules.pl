
% Graph Data

owl_DatatypeProperty("d_p1") .
rdf_Property("d_p2") .
owl_Class("d_A") .
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
bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15332_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15332_(X,_),owl_inverseOf_(X,Y,"t*") .
dc_contributor_(X,Y,"t*"):-dc_contributor(X,Y) .
dc_contributor_(X,Y,"t*"):-dc_contributor_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15359_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,_),dc_contributor_(X,Y,"t*") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .
rdfs_subPropertyOf_(Y,X,"t"):-rdfs_subPropertyOf_inv_(X,Y,"t") .
rdfs_subPropertyOf_inv_(X,Y,"t*"):-rdfs_subPropertyOf_(Y,X,"t*") .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"f"):-rdfs_subPropertyOf_(Y,X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15330_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty(X) .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15329_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,_),rdfs_domain_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,_),rdfs_domain_(X,Y,"t*") .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty(X) .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty_(X,"t") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
owl_unionOf_(X,Y,"t*"):-owl_unionOf(X,Y) .
owl_unionOf_(X,Y,"t*"):-owl_unionOf_(X,Y,"t") .
rdf_rest_(X,Y,"t*"):-rdf_rest(X,Y) .
rdf_rest_(X,Y,"t*"):-rdf_rest_(X,Y,"t") .
rdf_rest_star_(X,Y,"t*"):-rdf_rest_(X,Y,"t*") .
rdf_rest_star_(X,Z,"t*"):-rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*") .
rdf_first_(X,Y,"t*"):-rdf_first(X,Y) .
rdf_first_(X,Y,"t*"):-rdf_first_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15308_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,_),rdfs_range_(X,Y,"t*") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15317_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15319_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,_),rdfs_range_(X,Y,"t*") .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty(X) .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15327_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty(X) .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,"t*"):-s0_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,"f"):-s0_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15333
s1_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*");s2_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,X1,"f") .
0 {s2_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t**")} 0:-s1_(X,"t*") .


s3_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f"):-s3_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s3_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s3_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15333
s4_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,@new(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,1..1),"t"):-choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,1) .
choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,1);choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st,0):-s5_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*");s6_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s3_(X,"f");s4_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_(X,"f") .
s8_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,"t*"):-s8_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,"f"):-s8_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15336
s9_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*");s10_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,X1,"f") .
0 {s10_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t**")} 0:-s9_(X,"t*") .


s11_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f"):-s11_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s11_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s11_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15336
s12_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,@new(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,1..1),"t"):-choose(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,1) .
choose(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,1);choose(s13,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st,0):-s13_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*");s14_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f")} (C-0):-s13_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t*")}=C,C>0 .
1 {s14_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t**")} 1:-s13_(X,"t*") .
s15_(X,"f"):-s14_(X,"t*") .
s15_(X,"t*"):-s14_(X,"f") .


s9_(X,"f");s11_(X,"f");s12_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_(X,"f") .
s16_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s16_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s16_(X,"f") .
s17_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15332_(X,"t*"):-s17_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15332_(X,"f"):-s17_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15332
s18_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15332_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s19_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,Y,"f"):-owl_inverseOf_(X,Y,"t*"),owl_inverseOf_(X,Y,"f") .
0 {s19_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 0:-s18_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s19_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s19_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15332
s20_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15332_(X,"t*") .
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

s18_(X,"f");s20_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15332_(X,"f") .
s0_(X,"f");s8_(X,"f");s16_(X,"f");s17_(X,"f"):-d_InversePropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,"t*"):-d_UniqueContributorShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,"f"):-d_UniqueContributorShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15359
s24_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s25_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s24_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
dc_contributor_(X,Y,"f"):-dc_contributor_(X,Y,"t*"),dc_contributor_(X,Y,"f") .
0 {s25_(Y,"t*"):dc_contributor_(X,Y,"t**")} 0:-s24_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd15359
s26_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,"t*") .
s27_(X,"f"):-s26_(X,"t*") .
s27_(X,"t*"):-s26_(X,"f") .
dc_contributor_(X,@new(s27,X,dc_contributor,1..1),"t"):-choose(s27,X,dc_contributor,1) .
dc_contributor_(X,@new(s27,X,dc_contributor,1..2),"t"):-choose(s27,X,dc_contributor,2) .
choose(s27,X,dc_contributor,2);choose(s27,X,dc_contributor,1);choose(s27,X,dc_contributor,0):-s27_(X,"t*") .
(C-1) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s28_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-1):-s27_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>1 .
2 {s28_(Y,"t*"):dc_contributor_(X,Y,"t**")} 2:-s27_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15359
s29_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
dc_contributor_(X,@new(s30,X,dc_contributor,1..1),"t"):-choose(s30,X,dc_contributor,1) .
choose(s30,X,dc_contributor,1);choose(s30,X,dc_contributor,0):-s30_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s31_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):dc_contributor_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s24_(X,"f");s26_(X,"f");s29_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15359_(X,"f") .
s33_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s33_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s33_(X,"f") .
s34_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15330_(X,"t*"):-s34_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15330_(X,"f"):-s34_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15330
s35_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15330_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*");s36_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"f") .
0 {s36_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t**")} 0:-s35_(X,"t*") .

owl_SymmetricProperty_(X,"t"):-s36_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s36_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15330
s37_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15330_(X,"t*") .
s38_(X,"f"):-s37_(X,"t*") .
s38_(X,"t*"):-s37_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s38,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s38,X,rdfs_subPropertyOf,1) .
choose(s38,X,rdfs_subPropertyOf,1);choose(s38,X,rdfs_subPropertyOf,0):-s38_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*");s39_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"f")} (C-0):-s38_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*")}=C,C>0 .
1 {s39_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t**")} 1:-s38_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .

owl_SymmetricProperty_(X,"t"):-s40_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s40_(X,"f") .

s35_(X,"f");s37_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15330_(X,"f") .
s41_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,"t*"):-s41_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,"f"):-s41_(X,"f") .

s42_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,"t*") .
rdfs_range_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s42_(X,"t*"),rdfs_domain_(X,Y,"t*") .
rdfs_domain_(X,Y,"t");rdfs_range_(X,Y,"f"):-s42_(X,"t*"),rdfs_range_(X,Y,"t*") .
notEquals(s42,X,rdfs_domain,rdfs_range):-s42_(X,"f"),rdfs_domain_(X,Y,"t*"),not rdfs_range_(X,Y,"t*") .
notEquals(s42,X,rdfs_domain,rdfs_range):-s42_(X,"f"),not rdfs_domain_(X,Y,"t*"),rdfs_range_(X,Y,"t*") .
1 {rdfs_domain_(X,Y,"f"):rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):rdfs_domain_(X,Y,"t*");rdfs_domain_(X,@new(s42,X,rdfs_domain,1),"t*");rdfs_range_(X,@new(s42,X,rdfs_range,1),"t*")} 1:-s42_(X,"f"),not notEquals(s42,X,rdfs_domain,rdfs_range) .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15329
s43_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s44_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,Y,"f"):-rdfs_domain_(X,Y,"t*"),rdfs_domain_(X,Y,"f") .
0 {s44_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s43_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15329
s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
rdfs_domain_(X,@new(s46,X,rdfs_domain,1..1),"t"):-choose(s46,X,rdfs_domain,1) .
choose(s46,X,rdfs_domain,1);choose(s46,X,rdfs_domain,0):-s46_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s47_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .


s42_(X,"f");s43_(X,"f");s45_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15329_(X,"f") .
s33_(X,"f");s34_(X,"f");s41_(X,"f"):-d_SymmetricPropertyShape_(X,"f") .
s49_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*"):-s49_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f"):-s49_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd15295
s50_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s51_(X,"f"):-s50_(X,"t*") .
s51_(X,"t*"):-s50_(X,"f") .
rdfs_domain_(X,@new(s51,X,rdfs_domain,1..1),"t"):-choose(s51,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s51,X,rdfs_domain,1..2),"t"):-choose(s51,X,rdfs_domain,2) .
choose(s51,X,rdfs_domain,2);choose(s51,X,rdfs_domain,1);choose(s51,X,rdfs_domain,0):-s51_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s52_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s51_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s52_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s51_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15295
s53_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s54_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s54_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s53_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15295
s55_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
rdfs_domain_(X,@new(s56,X,rdfs_domain,1..1),"t"):-choose(s56,X,rdfs_domain,1) .
choose(s56,X,rdfs_domain,1);choose(s56,X,rdfs_domain,0):-s56_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s57_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s56_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s57_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s56_(X,"t*") .
s58_(X,"f"):-s57_(X,"t*") .
s58_(X,"t*"):-s57_(X,"f") .


s50_(X,"f");s53_(X,"f");s55_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f") .
s59_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"f"):-s59_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"t*"):-s59_(X,"f") .
owl_OntologyProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"t*") .
owl_OntologyProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"f") .
s60_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*"):-s60_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f"):-s60_(X,"f") .

s61_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s62_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s62_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s61_(X,"t*") .

s63_(X,"t*"):-s62_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s63_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s63_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f") .
s64_(X,"t*"):-s62_(X,"t*") .
owl_Class_(X,"t"):-s64_(X,"t*") .
owl_Class_(X,"f"):-s64_(X,"f") .
s63_(X,"f");s64_(X,"f"):-s62_(X,"f") .

s65_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s66_(X,"f"):-s65_(X,"t*") .
s66_(X,"t*"):-s65_(X,"f") .
rdfs_domain_(X,@new(s66,X,rdfs_domain,1..1),"t"):-choose(s66,X,rdfs_domain,1) .
choose(s66,X,rdfs_domain,1);choose(s66,X,rdfs_domain,0):-s66_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s67_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s66_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s67_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s66_(X,"t*") .
s68_(X,"f"):-s67_(X,"t*") .
s68_(X,"t*"):-s67_(X,"f") .

s69_(X,"t*"):-s68_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s69_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s69_(X,"f") .
s70_(X,"t*"):-s68_(X,"t*") .
owl_Class_(X,"t"):-s70_(X,"t*") .
owl_Class_(X,"f"):-s70_(X,"f") .
s69_(X,"f");s70_(X,"f"):-s68_(X,"f") .

s61_(X,"f");s65_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f") .
s71_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"f"):-s71_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"t*"):-s71_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"f") .
s72_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*"):-s72_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"f"):-s72_(X,"f") .



rdf_rest_star_(X,Y,"f");rdf_rest_(Y,Z,"f"):-rdf_rest_star_(X,Z,"f"),rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*"),X!=Y .
rdf_rest_(X,Y,"f"):-rdf_rest_star_(X,Y,"f"),rdf_rest_(X,Y,"t*") .

rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15296
s73_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X,rdfs_domain,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X,rdfs_domain,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t") .
rdfs_domain_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X,rdfs_domain,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X,rdfs_domain,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X0,owl_unionOf,0):-rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,X0,owl_unionOf,1),rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*");s74_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f")} (C-0):-s73_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,X3,"f") .
0 {s74_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t**")} 0:-s73_(X,"t*") .

s75_(X,"t*"):-s74_(X,"t*") .
owl_Class_(X,"t"):-s75_(X,"t*") .
owl_Class_(X,"f"):-s75_(X,"f") .
s76_(X,"t*"):-s74_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s76_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s76_(X,"f") .
s75_(X,"f");s76_(X,"f"):-s74_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15296
s77_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*") .
s78_(X,"f"):-s77_(X,"t*") .
s78_(X,"t*"):-s77_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,@new(s78,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1..1),"t"):-choose(s78,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1) .
choose(s78,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1);choose(s78,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,0):-s78_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*");s79_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f")} (C-0):-s78_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*")}=C,C>0 .
1 {s79_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t**")} 1:-s78_(X,"t*") .
s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .

s81_(X,"t*"):-s80_(X,"t*") .
owl_Class_(X,"t"):-s81_(X,"t*") .
owl_Class_(X,"f"):-s81_(X,"f") .
s82_(X,"t*"):-s80_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s82_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s82_(X,"f") .
s81_(X,"f");s82_(X,"f"):-s80_(X,"f") .

s73_(X,"f");s77_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"f") .
s83_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*"):-s83_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"f"):-s83_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15302
s84_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s85_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s84_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s85_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s84_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd15302
s86_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .
rdfs_range_(X,@new(s87,X,rdfs_range,1..1),"t"):-choose(s87,X,rdfs_range,1) .
rdfs_range_(X,@new(s87,X,rdfs_range,1..2),"t"):-choose(s87,X,rdfs_range,2) .
choose(s87,X,rdfs_range,2);choose(s87,X,rdfs_range,1);choose(s87,X,rdfs_range,0):-s87_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s88_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s87_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s88_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s87_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15302
s89_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
s90_(X,"f"):-s89_(X,"t*") .
s90_(X,"t*"):-s89_(X,"f") .
rdfs_range_(X,@new(s90,X,rdfs_range,1..1),"t"):-choose(s90,X,rdfs_range,1) .
choose(s90,X,rdfs_range,1);choose(s90,X,rdfs_range,0):-s90_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s91_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s91_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s90_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .


s84_(X,"f");s86_(X,"f");s89_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"f") .
s93_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*"):-s93_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"f"):-s93_(X,"f") .




s94_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*");s95_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f")} (C-0):-s94_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*")}=C,C>0 .
0 {s95_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t**")} 0:-s94_(X,"t*") .

s96_(X,"t*"):-s95_(X,"t*") .
owl_Class_(X,"t"):-s96_(X,"t*") .
owl_Class_(X,"f"):-s96_(X,"f") .
s97_(X,"t*"):-s95_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s97_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s97_(X,"f") .
s96_(X,"f");s97_(X,"f"):-s95_(X,"f") .

s98_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*") .
s99_(X,"f"):-s98_(X,"t*") .
s99_(X,"t*"):-s98_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,@new(s99,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1..1),"t"):-choose(s99,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1) .
choose(s99,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1);choose(s99,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,0):-s99_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*");s100_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f")} (C-0):-s99_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*")}=C,C>0 .
1 {s100_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t**")} 1:-s99_(X,"t*") .
s101_(X,"f"):-s100_(X,"t*") .
s101_(X,"t*"):-s100_(X,"f") .

s102_(X,"t*"):-s101_(X,"t*") .
owl_Class_(X,"t"):-s102_(X,"t*") .
owl_Class_(X,"f"):-s102_(X,"f") .
s103_(X,"t*"):-s101_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s103_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s103_(X,"f") .
s102_(X,"f");s103_(X,"f"):-s101_(X,"f") .

s94_(X,"f");s98_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"f") .
s104_(X,"t*"):-d_PropertyShape_(X,"t*") .
s105_(X,"f"):-s104_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*"):-s105_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15315
s106_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s107_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s106_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s107_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s106_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s107_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s107_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15315
s108_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*") .
s109_(X,"f"):-s108_(X,"t*") .
s109_(X,"t*"):-s108_(X,"f") .
rdfs_subPropertyOf_(X,@new(s109,X,rdfs_subPropertyOf,1..1),"t"):-choose(s109,X,rdfs_subPropertyOf,1) .
choose(s109,X,rdfs_subPropertyOf,1);choose(s109,X,rdfs_subPropertyOf,0):-s109_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s110_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s109_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s110_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s109_(X,"t*") .
s111_(X,"f"):-s110_(X,"t*") .
s111_(X,"t*"):-s110_(X,"f") .

owl_ObjectProperty_(X,"t"):-s111_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s111_(X,"f") .

s106_(X,"f");s108_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*"):-s105_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15309
s112_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*");s113_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f")} (C-0):-s112_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,X3,"f") .
0 {s113_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t**")} 0:-s112_(X,"t*") .

s114_(X,"t*"):-s113_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s114_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s114_(X,"f") .
s115_(X,"t*"):-s113_(X,"t*") .
owl_Class_(X,"t"):-s115_(X,"t*") .
owl_Class_(X,"f"):-s115_(X,"f") .
s114_(X,"f");s115_(X,"f"):-s113_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15309
s116_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*") .
s117_(X,"f"):-s116_(X,"t*") .
s117_(X,"t*"):-s116_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,@new(s117,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1..1),"t"):-choose(s117,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1) .
choose(s117,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1);choose(s117,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,0):-s117_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*");s118_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f")} (C-0):-s117_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*")}=C,C>0 .
1 {s118_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t**")} 1:-s117_(X,"t*") .
s119_(X,"f"):-s118_(X,"t*") .
s119_(X,"t*"):-s118_(X,"f") .

s120_(X,"t*"):-s119_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s120_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s120_(X,"f") .
s121_(X,"t*"):-s119_(X,"t*") .
owl_Class_(X,"t"):-s121_(X,"t*") .
owl_Class_(X,"f"):-s121_(X,"f") .
s120_(X,"f");s121_(X,"f"):-s119_(X,"f") .

s112_(X,"f");s116_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*"):-s105_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15308
s122_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s123_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s122_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s123_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s122_(X,"t*") .

s124_(X,"t*"):-s123_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s124_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s124_(X,"f") .
s125_(X,"t*"):-s123_(X,"t*") .
owl_Class_(X,"t"):-s125_(X,"t*") .
owl_Class_(X,"f"):-s125_(X,"f") .
s124_(X,"f");s125_(X,"f"):-s123_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15308
s126_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*") .
s127_(X,"f"):-s126_(X,"t*") .
s127_(X,"t*"):-s126_(X,"f") .
rdfs_range_(X,@new(s127,X,rdfs_range,1..1),"t"):-choose(s127,X,rdfs_range,1) .
choose(s127,X,rdfs_range,1);choose(s127,X,rdfs_range,0):-s127_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s128_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s127_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s128_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s127_(X,"t*") .
s129_(X,"f"):-s128_(X,"t*") .
s129_(X,"t*"):-s128_(X,"f") .

s130_(X,"t*"):-s129_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s130_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s130_(X,"f") .
s131_(X,"t*"):-s129_(X,"t*") .
owl_Class_(X,"t"):-s131_(X,"t*") .
owl_Class_(X,"f"):-s131_(X,"f") .
s130_(X,"f");s131_(X,"f"):-s129_(X,"f") .

s122_(X,"f");s126_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"f") .
s132_(X,"t*"):-s105_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"f"):-s132_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"t*"):-s132_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"f") .
s133_(X,"t*"):-s105_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s133_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s133_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"f");s132_(X,"f");s133_(X,"f"):-s105_(X,"f") .
s134_(X,"f"):-s104_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*"):-s134_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15326
s135_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s136_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s135_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s136_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s135_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s136_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s136_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15326
s137_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*") .
s138_(X,"f"):-s137_(X,"t*") .
s138_(X,"t*"):-s137_(X,"f") .
rdfs_subPropertyOf_(X,@new(s138,X,rdfs_subPropertyOf,1..1),"t"):-choose(s138,X,rdfs_subPropertyOf,1) .
choose(s138,X,rdfs_subPropertyOf,1);choose(s138,X,rdfs_subPropertyOf,0):-s138_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s139_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s138_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s139_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s138_(X,"t*") .
s140_(X,"f"):-s139_(X,"t*") .
s140_(X,"t*"):-s139_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s140_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s140_(X,"f") .

s135_(X,"f");s137_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*"):-s134_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15320
s141_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*");s142_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f")} (C-0):-s141_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,X3,"f") .
0 {s142_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t**")} 0:-s141_(X,"t*") .

s143_(X,"t*"):-s142_(X,"t*") .
rdfs_Datatype_(X,"t"):-s143_(X,"t*") .
rdfs_Datatype_(X,"f"):-s143_(X,"f") .
s144_(X,"t*"):-s142_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s144_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s144_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f") .
s143_(X,"f");s144_(X,"f"):-s142_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15320
s145_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*") .
s146_(X,"f"):-s145_(X,"t*") .
s146_(X,"t*"):-s145_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,@new(s146,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1..1),"t"):-choose(s146,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1) .
choose(s146,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1);choose(s146,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,0):-s146_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*");s147_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f")} (C-0):-s146_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*")}=C,C>0 .
1 {s147_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t**")} 1:-s146_(X,"t*") .
s148_(X,"f"):-s147_(X,"t*") .
s148_(X,"t*"):-s147_(X,"f") .

s149_(X,"t*"):-s148_(X,"t*") .
rdfs_Datatype_(X,"t"):-s149_(X,"t*") .
rdfs_Datatype_(X,"f"):-s149_(X,"f") .
s150_(X,"t*"):-s148_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s150_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s150_(X,"f") .
s149_(X,"f");s150_(X,"f"):-s148_(X,"f") .

s141_(X,"f");s145_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*"):-s134_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15317
s151_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s152_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s151_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s152_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s151_(X,"t*") .

s153_(X,"t*"):-s152_(X,"t*") .
rdfs_Datatype_(X,"t"):-s153_(X,"t*") .
rdfs_Datatype_(X,"f"):-s153_(X,"f") .
s154_(X,"t*"):-s152_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s154_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s154_(X,"f") .
s153_(X,"f");s154_(X,"f"):-s152_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15317
s155_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*") .
s156_(X,"f"):-s155_(X,"t*") .
s156_(X,"t*"):-s155_(X,"f") .
rdfs_range_(X,@new(s156,X,rdfs_range,1..1),"t"):-choose(s156,X,rdfs_range,1) .
choose(s156,X,rdfs_range,1);choose(s156,X,rdfs_range,0):-s156_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s157_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s156_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s157_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s156_(X,"t*") .
s158_(X,"f"):-s157_(X,"t*") .
s158_(X,"t*"):-s157_(X,"f") .

s159_(X,"t*"):-s158_(X,"t*") .
rdfs_Datatype_(X,"t"):-s159_(X,"t*") .
rdfs_Datatype_(X,"f"):-s159_(X,"f") .
s160_(X,"t*"):-s158_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s160_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s160_(X,"f") .
s159_(X,"f");s160_(X,"f"):-s158_(X,"f") .

s151_(X,"f");s155_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"f") .
s161_(X,"t*"):-s134_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s161_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s161_(X,"f") .
s162_(X,"t*"):-s134_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"f"):-s162_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"t*"):-s162_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"f") .
s163_(X,"t*"):-s134_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"f"):-s163_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"t*"):-s163_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15319
s164_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s165_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s164_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s165_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s164_(X,"t*") .

s166_(X,"t*"):-s165_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s166_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s166_(X,"f") .
s167_(X,"t*"):-s165_(X,"t*") .
owl_Class_(X,"t"):-s167_(X,"t*") .
owl_Class_(X,"f"):-s167_(X,"f") .
s166_(X,"f");s167_(X,"f"):-s165_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15319
s168_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*") .
s169_(X,"f"):-s168_(X,"t*") .
s169_(X,"t*"):-s168_(X,"f") .
rdfs_range_(X,@new(s169,X,rdfs_range,1..1),"t"):-choose(s169,X,rdfs_range,1) .
choose(s169,X,rdfs_range,1);choose(s169,X,rdfs_range,0):-s169_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s170_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s169_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s170_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s169_(X,"t*") .
s171_(X,"f"):-s170_(X,"t*") .
s171_(X,"t*"):-s170_(X,"f") .

s172_(X,"t*"):-s171_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s172_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s172_(X,"f") .
s173_(X,"t*"):-s171_(X,"t*") .
owl_Class_(X,"t"):-s173_(X,"t*") .
owl_Class_(X,"f"):-s173_(X,"f") .
s172_(X,"f");s173_(X,"f"):-s171_(X,"f") .

s164_(X,"f");s168_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"f");s161_(X,"f");s162_(X,"f");s163_(X,"f"):-s134_(X,"f") .
s105_(X,"t*");s134_(X,"t*"):-s104_(X,"t*") .
s174_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"f"):-s174_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"t*"):-s174_(X,"f") .
owl_AnnotationProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"t*") .
owl_AnnotationProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"f") .
s175_(X,"t*"):-d_PropertyShape_(X,"t*") .
s176_(X,"f"):-s175_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*"):-s176_(X,"t*") .

s177_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s178_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s177_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s178_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s177_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s178_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s178_(X,"f") .

s179_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*") .
s180_(X,"f"):-s179_(X,"t*") .
s180_(X,"t*"):-s179_(X,"f") .
rdfs_subPropertyOf_(X,@new(s180,X,rdfs_subPropertyOf,1..1),"t"):-choose(s180,X,rdfs_subPropertyOf,1) .
choose(s180,X,rdfs_subPropertyOf,1);choose(s180,X,rdfs_subPropertyOf,0):-s180_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s181_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s180_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s181_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s180_(X,"t*") .
s182_(X,"f"):-s181_(X,"t*") .
s182_(X,"t*"):-s181_(X,"f") .

owl_ObjectProperty_(X,"t"):-s182_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s182_(X,"f") .

s177_(X,"f");s179_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*"):-s176_(X,"t*") .




s183_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*");s184_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f")} (C-0):-s183_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*")}=C,C>0 .
0 {s184_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t**")} 0:-s183_(X,"t*") .

s185_(X,"t*"):-s184_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s185_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s185_(X,"f") .
s186_(X,"t*"):-s184_(X,"t*") .
owl_Class_(X,"t"):-s186_(X,"t*") .
owl_Class_(X,"f"):-s186_(X,"f") .
s185_(X,"f");s186_(X,"f"):-s184_(X,"f") .

s187_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*") .
s188_(X,"f"):-s187_(X,"t*") .
s188_(X,"t*"):-s187_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,@new(s188,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1..1),"t"):-choose(s188,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1) .
choose(s188,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1);choose(s188,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,0):-s188_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*");s189_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f")} (C-0):-s188_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*")}=C,C>0 .
1 {s189_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t**")} 1:-s188_(X,"t*") .
s190_(X,"f"):-s189_(X,"t*") .
s190_(X,"t*"):-s189_(X,"f") .

s191_(X,"t*"):-s190_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s191_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s191_(X,"f") .
s192_(X,"t*"):-s190_(X,"t*") .
owl_Class_(X,"t"):-s192_(X,"t*") .
owl_Class_(X,"f"):-s192_(X,"f") .
s191_(X,"f");s192_(X,"f"):-s190_(X,"f") .

s183_(X,"f");s187_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*"):-s176_(X,"t*") .

s193_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s194_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s193_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s194_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s193_(X,"t*") .

s195_(X,"t*"):-s194_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s195_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s195_(X,"f") .
s196_(X,"t*"):-s194_(X,"t*") .
owl_Class_(X,"t"):-s196_(X,"t*") .
owl_Class_(X,"f"):-s196_(X,"f") .
s195_(X,"f");s196_(X,"f"):-s194_(X,"f") .

s197_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*") .
s198_(X,"f"):-s197_(X,"t*") .
s198_(X,"t*"):-s197_(X,"f") .
rdfs_range_(X,@new(s198,X,rdfs_range,1..1),"t"):-choose(s198,X,rdfs_range,1) .
choose(s198,X,rdfs_range,1);choose(s198,X,rdfs_range,0):-s198_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s199_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s198_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s199_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s198_(X,"t*") .
s200_(X,"f"):-s199_(X,"t*") .
s200_(X,"t*"):-s199_(X,"f") .

s201_(X,"t*"):-s200_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s201_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s201_(X,"f") .
s202_(X,"t*"):-s200_(X,"t*") .
owl_Class_(X,"t"):-s202_(X,"t*") .
owl_Class_(X,"f"):-s202_(X,"f") .
s201_(X,"f");s202_(X,"f"):-s200_(X,"f") .

s193_(X,"f");s197_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"f") .
s203_(X,"t*"):-s176_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"f"):-s203_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"t*"):-s203_(X,"f") .
s204_(X,"t*"):-s176_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s204_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s204_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"f");s203_(X,"f");s204_(X,"f"):-s176_(X,"f") .
s205_(X,"f"):-s175_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*"):-s205_(X,"t*") .

s206_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s207_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s206_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s207_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s206_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s207_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s207_(X,"f") .

s208_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*") .
s209_(X,"f"):-s208_(X,"t*") .
s209_(X,"t*"):-s208_(X,"f") .
rdfs_subPropertyOf_(X,@new(s209,X,rdfs_subPropertyOf,1..1),"t"):-choose(s209,X,rdfs_subPropertyOf,1) .
choose(s209,X,rdfs_subPropertyOf,1);choose(s209,X,rdfs_subPropertyOf,0):-s209_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s210_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s209_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s210_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s209_(X,"t*") .
s211_(X,"f"):-s210_(X,"t*") .
s211_(X,"t*"):-s210_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s211_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s211_(X,"f") .

s206_(X,"f");s208_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*"):-s205_(X,"t*") .




s212_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*");s213_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f")} (C-0):-s212_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*")}=C,C>0 .
0 {s213_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t**")} 0:-s212_(X,"t*") .

s214_(X,"t*"):-s213_(X,"t*") .
rdfs_Datatype_(X,"t"):-s214_(X,"t*") .
rdfs_Datatype_(X,"f"):-s214_(X,"f") .
s215_(X,"t*"):-s213_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s215_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s215_(X,"f") .
s214_(X,"f");s215_(X,"f"):-s213_(X,"f") .

s216_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*") .
s217_(X,"f"):-s216_(X,"t*") .
s217_(X,"t*"):-s216_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,@new(s217,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1..1),"t"):-choose(s217,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1) .
choose(s217,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1);choose(s217,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,0):-s217_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*");s218_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f")} (C-0):-s217_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*")}=C,C>0 .
1 {s218_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t**")} 1:-s217_(X,"t*") .
s219_(X,"f"):-s218_(X,"t*") .
s219_(X,"t*"):-s218_(X,"f") .

s220_(X,"t*"):-s219_(X,"t*") .
rdfs_Datatype_(X,"t"):-s220_(X,"t*") .
rdfs_Datatype_(X,"f"):-s220_(X,"f") .
s221_(X,"t*"):-s219_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s221_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s221_(X,"f") .
s220_(X,"f");s221_(X,"f"):-s219_(X,"f") .

s212_(X,"f");s216_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*"):-s205_(X,"t*") .

s222_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s223_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s222_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s223_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s222_(X,"t*") .

s224_(X,"t*"):-s223_(X,"t*") .
rdfs_Datatype_(X,"t"):-s224_(X,"t*") .
rdfs_Datatype_(X,"f"):-s224_(X,"f") .
s225_(X,"t*"):-s223_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s225_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s225_(X,"f") .
s224_(X,"f");s225_(X,"f"):-s223_(X,"f") .

s226_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*") .
s227_(X,"f"):-s226_(X,"t*") .
s227_(X,"t*"):-s226_(X,"f") .
rdfs_range_(X,@new(s227,X,rdfs_range,1..1),"t"):-choose(s227,X,rdfs_range,1) .
choose(s227,X,rdfs_range,1);choose(s227,X,rdfs_range,0):-s227_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s228_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s227_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s228_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s227_(X,"t*") .
s229_(X,"f"):-s228_(X,"t*") .
s229_(X,"t*"):-s228_(X,"f") .

s230_(X,"t*"):-s229_(X,"t*") .
rdfs_Datatype_(X,"t"):-s230_(X,"t*") .
rdfs_Datatype_(X,"f"):-s230_(X,"f") .
s231_(X,"t*"):-s229_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s231_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s231_(X,"f") .
s230_(X,"f");s231_(X,"f"):-s229_(X,"f") .

s222_(X,"f");s226_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"f") .
s232_(X,"t*"):-s205_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s232_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s232_(X,"f") .
s233_(X,"t*"):-s205_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"f"):-s233_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"t*"):-s233_(X,"f") .
s234_(X,"t*"):-s205_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"f"):-s234_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"t*"):-s234_(X,"f") .

s235_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s236_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s235_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s236_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s235_(X,"t*") .

s237_(X,"t*"):-s236_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s237_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s237_(X,"f") .
s238_(X,"t*"):-s236_(X,"t*") .
owl_Class_(X,"t"):-s238_(X,"t*") .
owl_Class_(X,"f"):-s238_(X,"f") .
s237_(X,"f");s238_(X,"f"):-s236_(X,"f") .

s239_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*") .
s240_(X,"f"):-s239_(X,"t*") .
s240_(X,"t*"):-s239_(X,"f") .
rdfs_range_(X,@new(s240,X,rdfs_range,1..1),"t"):-choose(s240,X,rdfs_range,1) .
choose(s240,X,rdfs_range,1);choose(s240,X,rdfs_range,0):-s240_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s241_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s240_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s241_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s240_(X,"t*") .
s242_(X,"f"):-s241_(X,"t*") .
s242_(X,"t*"):-s241_(X,"f") .

s243_(X,"t*"):-s242_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s243_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s243_(X,"f") .
s244_(X,"t*"):-s242_(X,"t*") .
owl_Class_(X,"t"):-s244_(X,"t*") .
owl_Class_(X,"f"):-s244_(X,"f") .
s243_(X,"f");s244_(X,"f"):-s242_(X,"f") .

s235_(X,"f");s239_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"f");s232_(X,"f");s233_(X,"f");s234_(X,"f"):-s205_(X,"f") .
s176_(X,"t*");s205_(X,"t*"):-s175_(X,"t*") .
s245_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"f"):-s245_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"t*"):-s245_(X,"f") .
s246_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*"):-s246_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"f"):-s246_(X,"f") .




s247_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*");s248_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f")} (C-0):-s247_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*")}=C,C>0 .
0 {s248_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t**")} 0:-s247_(X,"t*") .

s249_(X,"t*"):-s248_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s249_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s249_(X,"f") .
s250_(X,"t*"):-s248_(X,"t*") .
owl_Class_(X,"t"):-s250_(X,"t*") .
owl_Class_(X,"f"):-s250_(X,"f") .
s249_(X,"f");s250_(X,"f"):-s248_(X,"f") .

s251_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"t*") .
s252_(X,"f"):-s251_(X,"t*") .
s252_(X,"t*"):-s251_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,@new(s252,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1..1),"t"):-choose(s252,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1) .
choose(s252,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,1);choose(s252,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st,0):-s252_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*");s253_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f")} (C-0):-s252_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t*")}=C,C>0 .
1 {s253_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t**")} 1:-s252_(X,"t*") .
s254_(X,"f"):-s253_(X,"t*") .
s254_(X,"t*"):-s253_(X,"f") .

s255_(X,"t*"):-s254_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s255_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s255_(X,"f") .
s256_(X,"t*"):-s254_(X,"t*") .
owl_Class_(X,"t"):-s256_(X,"t*") .
owl_Class_(X,"f"):-s256_(X,"f") .
s255_(X,"f");s256_(X,"f"):-s254_(X,"f") .

s247_(X,"f");s251_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_(X,"f") .
s257_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"f"):-s257_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"t*"):-s257_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"f") .
s258_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*"):-s258_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"f"):-s258_(X,"f") .

s259_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
s260_(X,"f"):-s259_(X,"t*") .
s260_(X,"t*"):-s259_(X,"f") .
rdfs_range_(X,@new(s260,X,rdfs_range,1..1),"t"):-choose(s260,X,rdfs_range,1) .
rdfs_range_(X,@new(s260,X,rdfs_range,1..2),"t"):-choose(s260,X,rdfs_range,2) .
choose(s260,X,rdfs_range,2);choose(s260,X,rdfs_range,1);choose(s260,X,rdfs_range,0):-s260_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s261_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s260_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s261_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s260_(X,"t*") .


s262_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s263_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s262_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s263_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s262_(X,"t*") .


s264_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
s265_(X,"f"):-s264_(X,"t*") .
s265_(X,"t*"):-s264_(X,"f") .
rdfs_range_(X,@new(s265,X,rdfs_range,1..1),"t"):-choose(s265,X,rdfs_range,1) .
choose(s265,X,rdfs_range,1);choose(s265,X,rdfs_range,0):-s265_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s266_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s265_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s266_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s265_(X,"t*") .
s267_(X,"f"):-s266_(X,"t*") .
s267_(X,"t*"):-s266_(X,"f") .


s259_(X,"f");s262_(X,"f");s264_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"f") .
s268_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"f"):-s268_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"t*"):-s268_(X,"f") .
s269_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*"):-s269_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f"):-s269_(X,"f") .

s270_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s271_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s270_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s271_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s270_(X,"t*") .

s272_(X,"t*"):-s271_(X,"t*") .
owl_Class_(X,"t"):-s272_(X,"t*") .
owl_Class_(X,"f"):-s272_(X,"f") .
s273_(X,"t*"):-s271_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s273_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s273_(X,"f") .
s272_(X,"f");s273_(X,"f"):-s271_(X,"f") .

s274_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s275_(X,"f"):-s274_(X,"t*") .
s275_(X,"t*"):-s274_(X,"f") .
rdfs_domain_(X,@new(s275,X,rdfs_domain,1..1),"t"):-choose(s275,X,rdfs_domain,1) .
choose(s275,X,rdfs_domain,1);choose(s275,X,rdfs_domain,0):-s275_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s276_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s275_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s276_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s275_(X,"t*") .
s277_(X,"f"):-s276_(X,"t*") .
s277_(X,"t*"):-s276_(X,"f") .

s278_(X,"t*"):-s277_(X,"t*") .
owl_Class_(X,"t"):-s278_(X,"t*") .
owl_Class_(X,"f"):-s278_(X,"f") .
s279_(X,"t*"):-s277_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s279_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s279_(X,"f") .
s278_(X,"f");s279_(X,"f"):-s277_(X,"f") .

s270_(X,"f");s274_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f") .
s280_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*"):-s280_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"f"):-s280_(X,"f") .

s281_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s282_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s281_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s282_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s281_(X,"t*") .


s283_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
s284_(X,"f"):-s283_(X,"t*") .
s284_(X,"t*"):-s283_(X,"f") .
rdfs_range_(X,@new(s284,X,rdfs_range,1..1),"t"):-choose(s284,X,rdfs_range,1) .
rdfs_range_(X,@new(s284,X,rdfs_range,1..2),"t"):-choose(s284,X,rdfs_range,2) .
choose(s284,X,rdfs_range,2);choose(s284,X,rdfs_range,1);choose(s284,X,rdfs_range,0):-s284_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s285_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s284_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s285_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s284_(X,"t*") .


s286_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"t*") .
s287_(X,"f"):-s286_(X,"t*") .
s287_(X,"t*"):-s286_(X,"f") .
rdfs_range_(X,@new(s287,X,rdfs_range,1..1),"t"):-choose(s287,X,rdfs_range,1) .
choose(s287,X,rdfs_range,1);choose(s287,X,rdfs_range,0):-s287_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s288_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s287_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s288_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s287_(X,"t*") .
s289_(X,"f"):-s288_(X,"t*") .
s289_(X,"t*"):-s288_(X,"f") .


s281_(X,"f");s283_(X,"f");s286_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15302_(X,"f") .
s290_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"f"):-s290_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"t*"):-s290_(X,"f") .
s291_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"f"):-s291_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15306_(X,"t*"):-s291_(X,"f") .
s292_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*"):-s292_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f"):-s292_(X,"f") .

s293_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s294_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s293_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s294_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s293_(X,"t*") .

s295_(X,"t*"):-s294_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s295_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s295_(X,"f") .
s296_(X,"t*"):-s294_(X,"t*") .
owl_Class_(X,"t"):-s296_(X,"t*") .
owl_Class_(X,"f"):-s296_(X,"f") .
s295_(X,"f");s296_(X,"f"):-s294_(X,"f") .

s297_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s298_(X,"f"):-s297_(X,"t*") .
s298_(X,"t*"):-s297_(X,"f") .
rdfs_domain_(X,@new(s298,X,rdfs_domain,1..1),"t"):-choose(s298,X,rdfs_domain,1) .
choose(s298,X,rdfs_domain,1);choose(s298,X,rdfs_domain,0):-s298_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s299_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s298_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s299_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s298_(X,"t*") .
s300_(X,"f"):-s299_(X,"t*") .
s300_(X,"t*"):-s299_(X,"f") .

s301_(X,"t*"):-s300_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s301_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s301_(X,"f") .
s302_(X,"t*"):-s300_(X,"t*") .
owl_Class_(X,"t"):-s302_(X,"t*") .
owl_Class_(X,"f"):-s302_(X,"f") .
s301_(X,"f");s302_(X,"f"):-s300_(X,"f") .

s293_(X,"f");s297_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f") .
s303_(X,"t*"):-d_PropertyShape_(X,"t*") .
s304_(X,"f"):-s303_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*"):-s304_(X,"t*") .

s305_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s306_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s305_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s306_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s305_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s306_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s306_(X,"f") .

s307_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"t*") .
s308_(X,"f"):-s307_(X,"t*") .
s308_(X,"t*"):-s307_(X,"f") .
rdfs_subPropertyOf_(X,@new(s308,X,rdfs_subPropertyOf,1..1),"t"):-choose(s308,X,rdfs_subPropertyOf,1) .
choose(s308,X,rdfs_subPropertyOf,1);choose(s308,X,rdfs_subPropertyOf,0):-s308_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s309_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s308_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s309_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s308_(X,"t*") .
s310_(X,"f"):-s309_(X,"t*") .
s310_(X,"t*"):-s309_(X,"f") .

owl_ObjectProperty_(X,"t"):-s310_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s310_(X,"f") .

s305_(X,"f");s307_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*"):-s304_(X,"t*") .




s311_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*");s312_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f")} (C-0):-s311_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*")}=C,C>0 .
0 {s312_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t**")} 0:-s311_(X,"t*") .

s313_(X,"t*"):-s312_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s313_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s313_(X,"f") .
s314_(X,"t*"):-s312_(X,"t*") .
owl_Class_(X,"t"):-s314_(X,"t*") .
owl_Class_(X,"f"):-s314_(X,"f") .
s313_(X,"f");s314_(X,"f"):-s312_(X,"f") .

s315_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"t*") .
s316_(X,"f"):-s315_(X,"t*") .
s316_(X,"t*"):-s315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,@new(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1..1),"t"):-choose(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1) .
choose(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,1);choose(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st,0):-s316_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*");s317_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f")} (C-0):-s316_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t*")}=C,C>0 .
1 {s317_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t**")} 1:-s316_(X,"t*") .
s318_(X,"f"):-s317_(X,"t*") .
s318_(X,"t*"):-s317_(X,"f") .

s319_(X,"t*"):-s318_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s319_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s319_(X,"f") .
s320_(X,"t*"):-s318_(X,"t*") .
owl_Class_(X,"t"):-s320_(X,"t*") .
owl_Class_(X,"f"):-s320_(X,"f") .
s319_(X,"f");s320_(X,"f"):-s318_(X,"f") .

s311_(X,"f");s315_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*"):-s304_(X,"t*") .

s321_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s322_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s321_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s322_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s321_(X,"t*") .

s323_(X,"t*"):-s322_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s323_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s323_(X,"f") .
s324_(X,"t*"):-s322_(X,"t*") .
owl_Class_(X,"t"):-s324_(X,"t*") .
owl_Class_(X,"f"):-s324_(X,"f") .
s323_(X,"f");s324_(X,"f"):-s322_(X,"f") .

s325_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"t*") .
s326_(X,"f"):-s325_(X,"t*") .
s326_(X,"t*"):-s325_(X,"f") .
rdfs_range_(X,@new(s326,X,rdfs_range,1..1),"t"):-choose(s326,X,rdfs_range,1) .
choose(s326,X,rdfs_range,1);choose(s326,X,rdfs_range,0):-s326_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s327_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s326_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s327_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s326_(X,"t*") .
s328_(X,"f"):-s327_(X,"t*") .
s328_(X,"t*"):-s327_(X,"f") .

s329_(X,"t*"):-s328_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s329_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s329_(X,"f") .
s330_(X,"t*"):-s328_(X,"t*") .
owl_Class_(X,"t"):-s330_(X,"t*") .
owl_Class_(X,"f"):-s330_(X,"f") .
s329_(X,"f");s330_(X,"f"):-s328_(X,"f") .

s321_(X,"f");s325_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"f") .
s331_(X,"t*"):-s304_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"f"):-s331_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15307_(X,"t*"):-s331_(X,"f") .
s332_(X,"t*"):-s304_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s332_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s332_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15309_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15308_(X,"f");s331_(X,"f");s332_(X,"f"):-s304_(X,"f") .
s333_(X,"f"):-s303_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*"):-s333_(X,"t*") .

s334_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s335_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s334_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s335_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s334_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s335_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s335_(X,"f") .

s336_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"t*") .
s337_(X,"f"):-s336_(X,"t*") .
s337_(X,"t*"):-s336_(X,"f") .
rdfs_subPropertyOf_(X,@new(s337,X,rdfs_subPropertyOf,1..1),"t"):-choose(s337,X,rdfs_subPropertyOf,1) .
choose(s337,X,rdfs_subPropertyOf,1);choose(s337,X,rdfs_subPropertyOf,0):-s337_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s338_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s337_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s338_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s337_(X,"t*") .
s339_(X,"f"):-s338_(X,"t*") .
s339_(X,"t*"):-s338_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s339_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s339_(X,"f") .

s334_(X,"f");s336_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*"):-s333_(X,"t*") .




s340_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*");s341_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f")} (C-0):-s340_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*")}=C,C>0 .
0 {s341_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t**")} 0:-s340_(X,"t*") .

s342_(X,"t*"):-s341_(X,"t*") .
rdfs_Datatype_(X,"t"):-s342_(X,"t*") .
rdfs_Datatype_(X,"f"):-s342_(X,"f") .
s343_(X,"t*"):-s341_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s343_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s343_(X,"f") .
s342_(X,"f");s343_(X,"f"):-s341_(X,"f") .

s344_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"t*") .
s345_(X,"f"):-s344_(X,"t*") .
s345_(X,"t*"):-s344_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,@new(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1..1),"t"):-choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1) .
choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,1);choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st,0):-s345_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*");s346_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f")} (C-0):-s345_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t*")}=C,C>0 .
1 {s346_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t**")} 1:-s345_(X,"t*") .
s347_(X,"f"):-s346_(X,"t*") .
s347_(X,"t*"):-s346_(X,"f") .

s348_(X,"t*"):-s347_(X,"t*") .
rdfs_Datatype_(X,"t"):-s348_(X,"t*") .
rdfs_Datatype_(X,"f"):-s348_(X,"f") .
s349_(X,"t*"):-s347_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s349_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s349_(X,"f") .
s348_(X,"f");s349_(X,"f"):-s347_(X,"f") .

s340_(X,"f");s344_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*"):-s333_(X,"t*") .

s350_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s351_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s350_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s351_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s350_(X,"t*") .

s352_(X,"t*"):-s351_(X,"t*") .
rdfs_Datatype_(X,"t"):-s352_(X,"t*") .
rdfs_Datatype_(X,"f"):-s352_(X,"f") .
s353_(X,"t*"):-s351_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s353_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s353_(X,"f") .
s352_(X,"f");s353_(X,"f"):-s351_(X,"f") .

s354_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"t*") .
s355_(X,"f"):-s354_(X,"t*") .
s355_(X,"t*"):-s354_(X,"f") .
rdfs_range_(X,@new(s355,X,rdfs_range,1..1),"t"):-choose(s355,X,rdfs_range,1) .
choose(s355,X,rdfs_range,1);choose(s355,X,rdfs_range,0):-s355_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s356_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s355_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s356_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s355_(X,"t*") .
s357_(X,"f"):-s356_(X,"t*") .
s357_(X,"t*"):-s356_(X,"f") .

s358_(X,"t*"):-s357_(X,"t*") .
rdfs_Datatype_(X,"t"):-s358_(X,"t*") .
rdfs_Datatype_(X,"f"):-s358_(X,"f") .
s359_(X,"t*"):-s357_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"f"):-s359_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15290_(X,"t*"):-s359_(X,"f") .
s358_(X,"f");s359_(X,"f"):-s357_(X,"f") .

s350_(X,"f");s354_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"f") .
s360_(X,"t*"):-s333_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s360_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s360_(X,"f") .
s361_(X,"t*"):-s333_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"f"):-s361_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15316_(X,"t*"):-s361_(X,"f") .
s362_(X,"t*"):-s333_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"f"):-s362_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15318_(X,"t*"):-s362_(X,"f") .

s363_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s364_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s363_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s364_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s363_(X,"t*") .

s365_(X,"t*"):-s364_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s365_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s365_(X,"f") .
s366_(X,"t*"):-s364_(X,"t*") .
owl_Class_(X,"t"):-s366_(X,"t*") .
owl_Class_(X,"f"):-s366_(X,"f") .
s365_(X,"f");s366_(X,"f"):-s364_(X,"f") .

s367_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"t*") .
s368_(X,"f"):-s367_(X,"t*") .
s368_(X,"t*"):-s367_(X,"f") .
rdfs_range_(X,@new(s368,X,rdfs_range,1..1),"t"):-choose(s368,X,rdfs_range,1) .
choose(s368,X,rdfs_range,1);choose(s368,X,rdfs_range,0):-s368_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s369_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s368_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s369_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s368_(X,"t*") .
s370_(X,"f"):-s369_(X,"t*") .
s370_(X,"t*"):-s369_(X,"f") .

s371_(X,"t*"):-s370_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s371_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s371_(X,"f") .
s372_(X,"t*"):-s370_(X,"t*") .
owl_Class_(X,"t"):-s372_(X,"t*") .
owl_Class_(X,"f"):-s372_(X,"f") .
s371_(X,"f");s372_(X,"f"):-s370_(X,"f") .

s363_(X,"f");s367_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15319_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15320_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd15317_(X,"f");s360_(X,"f");s361_(X,"f");s362_(X,"f"):-s333_(X,"f") .
s304_(X,"t*");s333_(X,"t*"):-s303_(X,"t*") .
s373_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"f"):-s373_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15304_(X,"t*"):-s373_(X,"f") .
s374_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*"):-s374_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f"):-s374_(X,"f") .

s375_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s376_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s375_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s376_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s375_(X,"t*") .


s377_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s378_(X,"f"):-s377_(X,"t*") .
s378_(X,"t*"):-s377_(X,"f") .
rdfs_domain_(X,@new(s378,X,rdfs_domain,1..1),"t"):-choose(s378,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s378,X,rdfs_domain,1..2),"t"):-choose(s378,X,rdfs_domain,2) .
choose(s378,X,rdfs_domain,2);choose(s378,X,rdfs_domain,1);choose(s378,X,rdfs_domain,0):-s378_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s379_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s378_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s379_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s378_(X,"t*") .


s380_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s381_(X,"f"):-s380_(X,"t*") .
s381_(X,"t*"):-s380_(X,"f") .
rdfs_domain_(X,@new(s381,X,rdfs_domain,1..1),"t"):-choose(s381,X,rdfs_domain,1) .
choose(s381,X,rdfs_domain,1);choose(s381,X,rdfs_domain,0):-s381_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s382_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s381_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s382_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s381_(X,"t*") .
s383_(X,"f"):-s382_(X,"t*") .
s383_(X,"t*"):-s382_(X,"f") .


s375_(X,"f");s377_(X,"f");s380_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f") .
s384_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"f"):-s384_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15305_(X,"t*"):-s384_(X,"f") .
s385_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"f"):-s385_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"t*"):-s385_(X,"f") .
s386_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"f"):-s386_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15303_(X,"t*"):-s386_(X,"f") .
s387_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*"):-s387_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f"):-s387_(X,"f") .

s388_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s389_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s388_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s389_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s388_(X,"t*") .


s390_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s391_(X,"f"):-s390_(X,"t*") .
s391_(X,"t*"):-s390_(X,"f") .
rdfs_domain_(X,@new(s391,X,rdfs_domain,1..1),"t"):-choose(s391,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s391,X,rdfs_domain,1..2),"t"):-choose(s391,X,rdfs_domain,2) .
choose(s391,X,rdfs_domain,2);choose(s391,X,rdfs_domain,1);choose(s391,X,rdfs_domain,0):-s391_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s392_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s391_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s392_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s391_(X,"t*") .


s393_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"t*") .
s394_(X,"f"):-s393_(X,"t*") .
s394_(X,"t*"):-s393_(X,"f") .
rdfs_domain_(X,@new(s394,X,rdfs_domain,1..1),"t"):-choose(s394,X,rdfs_domain,1) .
choose(s394,X,rdfs_domain,1);choose(s394,X,rdfs_domain,0):-s394_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s395_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s394_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s395_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s394_(X,"t*") .
s396_(X,"f"):-s395_(X,"t*") .
s396_(X,"t*"):-s395_(X,"f") .


s388_(X,"f");s390_(X,"f");s393_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15295_(X,"f") .
s49_(X,"f");s59_(X,"f");s60_(X,"f");s71_(X,"f");s72_(X,"f");s83_(X,"f");s93_(X,"f");s104_(X,"f");s174_(X,"f");s175_(X,"f");s245_(X,"f");s246_(X,"f");s257_(X,"f");s258_(X,"f");s268_(X,"f");s269_(X,"f");s280_(X,"f");s290_(X,"f");s291_(X,"f");s292_(X,"f");s303_(X,"f");s373_(X,"f");s374_(X,"f");s384_(X,"f");s385_(X,"f");s386_(X,"f");s387_(X,"f"):-d_PropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15327_(X,"t*"):-d_FunctionalPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15327_(X,"f"):-d_FunctionalPropertyShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15327
s397_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15327_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*");s398_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"f")} (C-0):-s397_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"f") .
0 {s398_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t**")} 0:-s397_(X,"t*") .

owl_FunctionalProperty_(X,"t"):-s398_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s398_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15327
s399_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15327_(X,"t*") .
s400_(X,"f"):-s399_(X,"t*") .
s400_(X,"t*"):-s399_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s400,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s400,X,rdfs_subPropertyOf,1) .
choose(s400,X,rdfs_subPropertyOf,1);choose(s400,X,rdfs_subPropertyOf,0):-s400_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*");s401_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"f")} (C-0):-s400_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*")}=C,C>0 .
1 {s401_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t**")} 1:-s400_(X,"t*") .
s402_(X,"f"):-s401_(X,"t*") .
s402_(X,"t*"):-s401_(X,"f") .

owl_FunctionalProperty_(X,"t"):-s402_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s402_(X,"f") .

s397_(X,"f");s399_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15327_(X,"f") .
s403_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,"t*"):-s403_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,"f"):-s403_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15341
s404_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*");s405_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f")} (C-0):-s404_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,X1,"f") .
0 {s405_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t**")} 0:-s404_(X,"t*") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15341
s406_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,"t*") .
s407_(X,"f"):-s406_(X,"t*") .
s407_(X,"t*"):-s406_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,@new(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,1..1),"t"):-choose(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,1) .
choose(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,1);choose(s407,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,0):-s407_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*");s408_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f")} (C-0):-s407_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*")}=C,C>0 .
1 {s408_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t**")} 1:-s407_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15341
s409_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,"t*") .
s410_(X,"f"):-s409_(X,"t*") .
s410_(X,"t*"):-s409_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,@new(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,1..1),"t"):-choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,1) .
choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,1);choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st,0):-s410_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*");s411_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f")} (C-0):-s410_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t*")}=C,C>0 .
1 {s411_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t**")} 1:-s410_(X,"t*") .
s412_(X,"f"):-s411_(X,"t*") .
s412_(X,"t*"):-s411_(X,"f") .


s404_(X,"f");s406_(X,"f");s409_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_(X,"f") .
s413_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,"t*"):-s413_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,"f"):-s413_(X,"f") .


% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd15346
s414_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,@new(s414,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,1..1),"t"):-choose(s414,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,1) .
choose(s414,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,1);choose(s414,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,0):-s414_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*");s415_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f")} (C-0):-s414_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,X1,"f") .
1 {s415_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t**")} 1:-s414_(X,"t*") .


s416_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f"):-s416_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s416_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s416_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15346
s417_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,"t*") .
s418_(X,"f"):-s417_(X,"t*") .
s418_(X,"t*"):-s417_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,@new(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,1..1),"t"):-choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,1) .
choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,1);choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st,0):-s418_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*");s419_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f")} (C-0):-s418_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t*")}=C,C>0 .
1 {s419_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t**")} 1:-s418_(X,"t*") .
s420_(X,"f"):-s419_(X,"t*") .
s420_(X,"t*"):-s419_(X,"f") .


s414_(X,"f");s416_(X,"f");s417_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_(X,"f") .
s403_(X,"t*");s413_(X,"t*"):-d_DomainConsistencyShape_(X,"t*") .
s421_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,"t*"):-s421_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,"f"):-s421_(X,"f") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15351
s422_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,"t*") .
s423_(X,"f"):-s422_(X,"t*") .
s423_(X,"t*"):-s422_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,@new(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,1..1),"t"):-choose(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,1) .
choose(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,1);choose(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,0):-s423_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*");s424_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f")} (C-0):-s423_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,X1,"f") .
1 {s424_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t**")} 1:-s423_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd15351
s425_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*");s426_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f")} (C-0):-s425_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*")}=C,C>0 .
0 {s426_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t**")} 0:-s425_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15351
s427_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,"t*") .
s428_(X,"f"):-s427_(X,"t*") .
s428_(X,"t*"):-s427_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,@new(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,1..1),"t"):-choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,1) .
choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,1);choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st,0):-s428_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*");s429_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f")} (C-0):-s428_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t*")}=C,C>0 .
1 {s429_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t**")} 1:-s428_(X,"t*") .
s430_(X,"f"):-s429_(X,"t*") .
s430_(X,"t*"):-s429_(X,"f") .


s422_(X,"f");s425_(X,"f");s427_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_(X,"f") .
s431_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,"t*"):-s431_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,"f"):-s431_(X,"f") .


% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd15356
s432_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,@new(s432,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,1..1),"t"):-choose(s432,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,1) .
choose(s432,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,1);choose(s432,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,0):-s432_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*");s433_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f")} (C-0):-s432_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,X1,"f") .
1 {s433_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t**")} 1:-s432_(X,"t*") .


s434_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f"):-s434_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s434_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s434_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd15356
s435_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,"t*") .
s436_(X,"f"):-s435_(X,"t*") .
s436_(X,"t*"):-s435_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,@new(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,1..1),"t"):-choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,1) .
choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,1);choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st,0):-s436_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*");s437_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f")} (C-0):-s436_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t*")}=C,C>0 .
1 {s437_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t**")} 1:-s436_(X,"t*") .
s438_(X,"f"):-s437_(X,"t*") .
s438_(X,"t*"):-s437_(X,"f") .


s432_(X,"f");s434_(X,"f");s435_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_(X,"f") .
s421_(X,"t*");s431_(X,"t*"):-d_RangeConsistencyShape_(X,"t*") .
s439_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s439_(X,"t*") .
owl_Class_(X,"f"):-s439_(X,"f") .
s440_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s440_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s440_(X,"f") .
s441_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s441_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s441_(X,"f") .
s442_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s442_(X,"t*") .
owl_Class_(X,"f"):-s442_(X,"f") .
s443_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"f"):-s443_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15289_(X,"t*"):-s443_(X,"f") .
s444_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s444_(X,"t*") .
owl_Class_(X,"f"):-s444_(X,"f") .
s439_(X,"f");s440_(X,"f");s441_(X,"f");s442_(X,"f");s443_(X,"f");s444_(X,"f"):-d_ClassShape_(X,"f") .

% Interpretation Rules

owl_inverseOf_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f") .
rdfs_domain_(X,Y,"t**"):-rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15332_st_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15332_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15332_st_(X,Y,"f") .
dc_contributor_(X,Y,"t**"):-dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15359_st_(X,Y,"t**"):-dc_contributor_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15359_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15359_st_(X,Y,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),not rdfs_subPropertyOf_inv_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15330_st_(X,Y,"f") .
owl_SymmetricProperty_(X,"t**"):-owl_SymmetricProperty_(X,"t*"),not owl_SymmetricProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15329_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15329_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15329_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15295_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15295_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15295_st_(X,Y,"f") .
owl_OntologyProperty_(X,"t**"):-owl_OntologyProperty_(X,"t*"),not owl_OntologyProperty_(X,"f") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
owl_unionOf_(X,Y,"t**"):-owl_unionOf_(X,Y,"t*"),not owl_unionOf_(X,Y,"f") .
rdf_rest_(X,Y,"t**"):-rdf_rest_(X,Y,"t*"),not rdf_rest_(X,Y,"f") .
rdf_rest_star_(X,Y,"t**"):-rdf_rest_star_(X,Y,"t*"),not rdf_rest_star_(X,Y,"f") .
rdf_first_(X,Y,"t**"):-rdf_first_(X,Y,"t*"),not rdf_first_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,X3,"f"),rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15302_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15302_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15302_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15315_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15315_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15315_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15308_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15308_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15308_st_(X,Y,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15326_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15326_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15326_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15317_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15317_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15317_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15319_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15319_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15319_st_(X,Y,"f") .
owl_AnnotationProperty_(X,"t**"):-owl_AnnotationProperty_(X,"t*"),not owl_AnnotationProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15327_st_(X,Y,"f") .
owl_FunctionalProperty_(X,"t**"):-owl_FunctionalProperty_(X,"t*"),not owl_FunctionalProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .

% Program Constraints

:-owl_inverseOf_(X,Y,"t"),owl_inverseOf_(X,Y,"f") .
:-rdfs_domain_(X,Y,"t"),rdfs_domain_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s3_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t**") .
:-s3_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15333_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-s7_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"f") .
:-s10_(X,"f") .
:-s11_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t**") .
:-s11_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15336_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s15_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-dc_contributor_(X,Y,"t"),dc_contributor_(X,Y,"f") .
:-s25_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .
:-rdfs_subPropertyOf_inv_(X,Y,"t"),rdfs_subPropertyOf_inv_(X,Y,"f") .
:-owl_SymmetricProperty_(X,"t"),owl_SymmetricProperty_(X,"f") .
:-s42_(X,"t*"),rdfs_range_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s42_(X,"t*"),rdfs_domain_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s44_(X,"f") .
:-s48_(X,"f") .
:-s52_(X,"f") .
:-s54_(X,"f") .
:-s58_(X,"f") .
:-owl_OntologyProperty_(X,"t"),owl_OntologyProperty_(X,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-owl_unionOf_(X,Y,"t"),owl_unionOf_(X,Y,"f") .
:-rdf_rest_(X,Y,"t"),rdf_rest_(X,Y,"f") .
:-rdf_rest_star_(X,Y,"t"),rdf_rest_star_(X,Y,"f") .
:-rdf_rest_star_(X,X,"f") .
:-rdf_first_(X,Y,"t"),rdf_first_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15296_st_(X,Y,"f") .
:-s85_(X,"f") .
:-s88_(X,"f") .
:-s92_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15309_st_(X,Y,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15320_st_(X,Y,"f") .
:-owl_AnnotationProperty_(X,"t"),owl_AnnotationProperty_(X,"f") .
:-s261_(X,"f") .
:-s263_(X,"f") .
:-s267_(X,"f") .
:-s282_(X,"f") .
:-s285_(X,"f") .
:-s289_(X,"f") .
:-s376_(X,"f") .
:-s379_(X,"f") .
:-s383_(X,"f") .
:-s389_(X,"f") .
:-s392_(X,"f") .
:-s396_(X,"f") .
:-owl_FunctionalProperty_(X,"t"),owl_FunctionalProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15341_st_(X,Y,"f") .
:-s405_(X,"f") .
:-s408_(X,"f") .
:-s412_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"f") .
:-s415_(X,"f") .
:-s416_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t**") .
:-s416_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15346_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s420_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15351_st_(X,Y,"f") .
:-s424_(X,"f") .
:-s426_(X,"f") .
:-s430_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"f") .
:-s433_(X,"f") .
:-s434_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t**") .
:-s434_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd15356_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
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
add(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"t**"),not owl_OntologyProperty(X) .
del(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"f"),owl_OntologyProperty(X) .
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"t**"),not owl_unionOf(X,Y) .
del(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"f"),owl_unionOf(X,Y) .
add(rdf_rest(X,Y)):-rdf_rest_(X,Y,"t**"),not rdf_rest(X,Y) .
del(rdf_rest(X,Y)):-rdf_rest_(X,Y,"f"),rdf_rest(X,Y) .
add(rdf_first(X,Y)):-rdf_first_(X,Y,"t**"),not rdf_first(X,Y) .
del(rdf_first(X,Y)):-rdf_first_(X,Y,"f"),rdf_first(X,Y) .
add(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"t**"),not owl_DatatypeProperty(X) .
del(owl_DatatypeProperty(X)):-owl_DatatypeProperty_(X,"f"),owl_DatatypeProperty(X) .
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
:-del(rdf_first(X,Y)) .
:-del(rdf_rest(X,Y)) .
:-del(owl_unionOf(X,Y)) .
:-add(rdf_rest(X,Y)) .
:-add(rdf_first(X,Y)) .
:-add(owl_unionOf(X,Y)) .
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
