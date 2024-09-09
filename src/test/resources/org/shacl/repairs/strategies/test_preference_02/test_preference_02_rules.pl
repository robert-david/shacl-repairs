
% Graph Data

owl_AnnotationProperty("d_p1") .
rdf_Property("d_p2") .
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
targetNode("d_p2",d_PropertyShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_PropertyShape_("d_p1","t*"):-actualTarget("d_p1",d_PropertyShape) .
d_PropertyShape_("d_p2","t*"):-actualTarget("d_p2",d_PropertyShape) .

% Annotation Rules

owl_inverseOf_(X,Y,"t*"):-owl_inverseOf(X,Y) .
owl_inverseOf_(X,Y,"t*"):-owl_inverseOf_(X,Y,"t") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
rdfs_domain_(X,Y,"t*"):-rdfs_domain(X,Y) .
rdfs_domain_(X,Y,"t*"):-rdfs_domain_(X,Y,"t") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11503_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11503_(X,_),owl_inverseOf_(X,Y,"t*") .
dc_contributor_(X,Y,"t*"):-dc_contributor(X,Y) .
dc_contributor_(X,Y,"t*"):-dc_contributor_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11530_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,_),dc_contributor_(X,Y,"t*") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .
rdfs_subPropertyOf_(Y,X,"t"):-rdfs_subPropertyOf_inv_(X,Y,"t") .
rdfs_subPropertyOf_inv_(X,Y,"t*"):-rdfs_subPropertyOf_(Y,X,"t*") .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"f"):-rdfs_subPropertyOf_(Y,X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11501_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty(X) .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11500_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,_),rdfs_domain_(X,Y,"t*") .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty(X) .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,_),rdfs_domain_(X,Y,"t*") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
owl_unionOf_(X,Y,"t*"):-owl_unionOf(X,Y) .
owl_unionOf_(X,Y,"t*"):-owl_unionOf_(X,Y,"t") .
rdf_rest_(X,Y,"t*"):-rdf_rest(X,Y) .
rdf_rest_(X,Y,"t*"):-rdf_rest_(X,Y,"t") .
rdf_rest_star_(X,Y,"t*"):-rdf_rest_(X,Y,"t*") .
rdf_rest_star_(X,Z,"t*"):-rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*") .
rdf_first_(X,Y,"t*"):-rdf_first(X,Y) .
rdf_first_(X,Y,"t*"):-rdf_first_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty(X) .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11488_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11490_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11479_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11498_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty(X) .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,"t*"):-s0_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,"f"):-s0_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11507
s1_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*");s2_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,X1,"f") .
0 {s2_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t**")} 0:-s1_(X,"t*") .


s3_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f"):-s3_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s3_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s3_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11507
s4_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,@new(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,1..1),"t"):-choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,1) .
choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,1);choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st,0):-s5_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*");s6_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s3_(X,"f");s4_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_(X,"f") .
s8_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s8_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s8_(X,"f") .
s9_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,"t*"):-s9_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,"f"):-s9_(X,"f") .


s10_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f"):-s10_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s10_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s10_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11504
s11_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*");s12_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,X1,"f") .
0 {s12_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t**")} 0:-s11_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11504
s13_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,@new(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,1..1),"t"):-choose(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,1) .
choose(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,1);choose(s14,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st,0):-s14_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*");s15_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f")} (C-0):-s14_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t*")}=C,C>0 .
1 {s15_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t**")} 1:-s14_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .


s10_(X,"f");s11_(X,"f");s13_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_(X,"f") .
s17_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11503_(X,"t*"):-s17_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11503_(X,"f"):-s17_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11503
s18_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11503_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s19_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,Y,"f"):-owl_inverseOf_(X,Y,"t*"),owl_inverseOf_(X,Y,"f") .
0 {s19_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 0:-s18_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s19_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s19_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11503
s20_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11503_(X,"t*") .
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

s18_(X,"f");s20_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11503_(X,"f") .
s0_(X,"f");s8_(X,"f");s9_(X,"f");s17_(X,"f"):-d_InversePropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,"t*"):-d_UniqueContributorShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,"f"):-d_UniqueContributorShape_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd11530
s24_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
dc_contributor_(X,@new(s25,X,dc_contributor,1..1),"t"):-choose(s25,X,dc_contributor,1) .
dc_contributor_(X,@new(s25,X,dc_contributor,1..2),"t"):-choose(s25,X,dc_contributor,2) .
choose(s25,X,dc_contributor,2);choose(s25,X,dc_contributor,1);choose(s25,X,dc_contributor,0):-s25_(X,"t*") .
(C-1) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s26_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>1 .
dc_contributor_(X,Y,"f"):-dc_contributor_(X,Y,"t*"),dc_contributor_(X,Y,"f") .
2 {s26_(Y,"t*"):dc_contributor_(X,Y,"t**")} 2:-s25_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11530
s27_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s28_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
0 {s28_(Y,"t*"):dc_contributor_(X,Y,"t**")} 0:-s27_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11530
s29_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
dc_contributor_(X,@new(s30,X,dc_contributor,1..1),"t"):-choose(s30,X,dc_contributor,1) .
choose(s30,X,dc_contributor,1);choose(s30,X,dc_contributor,0):-s30_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s31_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):dc_contributor_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s24_(X,"f");s27_(X,"f");s29_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11530_(X,"f") .
s33_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11501_(X,"t*"):-s33_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11501_(X,"f"):-s33_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11501
s34_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11501_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*");s35_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"f")} (C-0):-s34_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"f") .
0 {s35_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t**")} 0:-s34_(X,"t*") .

owl_SymmetricProperty_(X,"t"):-s35_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s35_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11501
s36_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11501_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s37,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s37,X,rdfs_subPropertyOf,1) .
choose(s37,X,rdfs_subPropertyOf,1);choose(s37,X,rdfs_subPropertyOf,0):-s37_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*");s38_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*")}=C,C>0 .
1 {s38_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t**")} 1:-s37_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .

owl_SymmetricProperty_(X,"t"):-s39_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s39_(X,"f") .

s34_(X,"f");s36_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11501_(X,"f") .
s40_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s40_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s40_(X,"f") .
s41_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,"t*"):-s41_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,"f"):-s41_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11500
s42_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s43_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s42_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,Y,"f"):-rdfs_domain_(X,Y,"t*"),rdfs_domain_(X,Y,"f") .
0 {s43_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s42_(X,"t*") .


s44_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,"t*") .
rdfs_range_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s44_(X,"t*"),rdfs_domain_(X,Y,"t*") .
rdfs_domain_(X,Y,"t");rdfs_range_(X,Y,"f"):-s44_(X,"t*"),rdfs_range_(X,Y,"t*") .
notEquals(s44,X,rdfs_domain,rdfs_range):-s44_(X,"f"),rdfs_domain_(X,Y,"t*"),not rdfs_range_(X,Y,"t*") .
notEquals(s44,X,rdfs_domain,rdfs_range):-s44_(X,"f"),not rdfs_domain_(X,Y,"t*"),rdfs_range_(X,Y,"t*") .
1 {rdfs_domain_(X,Y,"f"):rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):rdfs_domain_(X,Y,"t*");rdfs_domain_(X,@new(s44,X,rdfs_domain,1),"t*");rdfs_range_(X,@new(s44,X,rdfs_range,1),"t*")} 1:-s44_(X,"f"),not notEquals(s44,X,rdfs_domain,rdfs_range) .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11500
s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
rdfs_domain_(X,@new(s46,X,rdfs_domain,1..1),"t"):-choose(s46,X,rdfs_domain,1) .
choose(s46,X,rdfs_domain,1);choose(s46,X,rdfs_domain,0):-s46_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s47_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .


s42_(X,"f");s44_(X,"f");s45_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11500_(X,"f") .
s33_(X,"f");s40_(X,"f");s41_(X,"f"):-d_SymmetricPropertyShape_(X,"f") .
s49_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"f"):-s49_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"t*"):-s49_(X,"f") .
owl_AnnotationProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"t*") .
owl_AnnotationProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"f") .
s50_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"f"):-s50_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"t*"):-s50_(X,"f") .
s51_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*"):-s51_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f"):-s51_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11466
s52_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s53_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s52_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s53_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s52_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd11466
s54_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .
rdfs_domain_(X,@new(s55,X,rdfs_domain,1..1),"t"):-choose(s55,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s55,X,rdfs_domain,1..2),"t"):-choose(s55,X,rdfs_domain,2) .
choose(s55,X,rdfs_domain,2);choose(s55,X,rdfs_domain,1);choose(s55,X,rdfs_domain,0):-s55_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s56_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s55_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s56_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s55_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11466
s57_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s58_(X,"f"):-s57_(X,"t*") .
s58_(X,"t*"):-s57_(X,"f") .
rdfs_domain_(X,@new(s58,X,rdfs_domain,1..1),"t"):-choose(s58,X,rdfs_domain,1) .
choose(s58,X,rdfs_domain,1);choose(s58,X,rdfs_domain,0):-s58_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s59_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s58_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s59_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s58_(X,"t*") .
s60_(X,"f"):-s59_(X,"t*") .
s60_(X,"t*"):-s59_(X,"f") .


s52_(X,"f");s54_(X,"f");s57_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f") .
s61_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*"):-s61_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f"):-s61_(X,"f") .

s62_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s63_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s62_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s63_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s62_(X,"t*") .

s64_(X,"t*"):-s63_(X,"t*") .
owl_Class_(X,"t"):-s64_(X,"t*") .
owl_Class_(X,"f"):-s64_(X,"f") .
s65_(X,"t*"):-s63_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s65_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s65_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f") .
s64_(X,"f");s65_(X,"f"):-s63_(X,"f") .

s66_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .
rdfs_domain_(X,@new(s67,X,rdfs_domain,1..1),"t"):-choose(s67,X,rdfs_domain,1) .
choose(s67,X,rdfs_domain,1);choose(s67,X,rdfs_domain,0):-s67_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s68_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s68_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s67_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .

s70_(X,"t*"):-s69_(X,"t*") .
owl_Class_(X,"t"):-s70_(X,"t*") .
owl_Class_(X,"f"):-s70_(X,"f") .
s71_(X,"t*"):-s69_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s71_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s71_(X,"f") .
s70_(X,"f");s71_(X,"f"):-s69_(X,"f") .

s62_(X,"f");s66_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f") .
s72_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"f"):-s72_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"t*"):-s72_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"f") .
s73_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"f"):-s73_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11476_(X,"t*"):-s73_(X,"f") .
s74_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*"):-s74_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"f"):-s74_(X,"f") .



rdf_rest_star_(X,Y,"f");rdf_rest_(Y,Z,"f"):-rdf_rest_star_(X,Z,"f"),rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*"),X!=Y .
rdf_rest_(X,Y,"f"):-rdf_rest_star_(X,Y,"f"),rdf_rest_(X,Y,"t*") .

rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11467
s75_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X,rdfs_domain,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X,rdfs_domain,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t") .
rdfs_domain_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X,rdfs_domain,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X,rdfs_domain,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X0,owl_unionOf,0):-rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,X0,owl_unionOf,1),rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*");s76_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f")} (C-0):-s75_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,X3,"f") .
0 {s76_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t**")} 0:-s75_(X,"t*") .

s77_(X,"t*"):-s76_(X,"t*") .
owl_Class_(X,"t"):-s77_(X,"t*") .
owl_Class_(X,"f"):-s77_(X,"f") .
s78_(X,"t*"):-s76_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s78_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s78_(X,"f") .
s77_(X,"f");s78_(X,"f"):-s76_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11467
s79_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*") .
s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,@new(s80,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1..1),"t"):-choose(s80,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1) .
choose(s80,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1);choose(s80,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,0):-s80_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*");s81_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f")} (C-0):-s80_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*")}=C,C>0 .
1 {s81_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t**")} 1:-s80_(X,"t*") .
s82_(X,"f"):-s81_(X,"t*") .
s82_(X,"t*"):-s81_(X,"f") .

s83_(X,"t*"):-s82_(X,"t*") .
owl_Class_(X,"t"):-s83_(X,"t*") .
owl_Class_(X,"f"):-s83_(X,"f") .
s84_(X,"t*"):-s82_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s84_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s84_(X,"f") .
s83_(X,"f");s84_(X,"f"):-s82_(X,"f") .

s75_(X,"f");s79_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"f") .
s85_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*"):-s85_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f"):-s85_(X,"f") .

s86_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .
rdfs_domain_(X,@new(s87,X,rdfs_domain,1..1),"t"):-choose(s87,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s87,X,rdfs_domain,1..2),"t"):-choose(s87,X,rdfs_domain,2) .
choose(s87,X,rdfs_domain,2);choose(s87,X,rdfs_domain,1);choose(s87,X,rdfs_domain,0):-s87_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s88_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s87_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s88_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s87_(X,"t*") .


s89_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s90_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s89_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s90_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s89_(X,"t*") .


s91_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .
rdfs_domain_(X,@new(s92,X,rdfs_domain,1..1),"t"):-choose(s92,X,rdfs_domain,1) .
choose(s92,X,rdfs_domain,1);choose(s92,X,rdfs_domain,0):-s92_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s93_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s92_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s93_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s92_(X,"t*") .
s94_(X,"f"):-s93_(X,"t*") .
s94_(X,"t*"):-s93_(X,"f") .


s86_(X,"f");s89_(X,"f");s91_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f") .
s95_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"f"):-s95_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"t*"):-s95_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"f") .
s96_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"f"):-s96_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"t*"):-s96_(X,"f") .
s97_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"f"):-s97_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"t*"):-s97_(X,"f") .
s98_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"f"):-s98_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11475_(X,"t*"):-s98_(X,"f") .
s99_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"f"):-s99_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"t*"):-s99_(X,"f") .
owl_OntologyProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"t*") .
owl_OntologyProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"f") .
s100_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"f"):-s100_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"t*"):-s100_(X,"f") .
s101_(X,"t*"):-d_PropertyShape_(X,"t*") .
s102_(X,"f"):-s101_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*"):-s102_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11497
s103_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s104_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s103_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s104_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s103_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s104_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s104_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11497
s105_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*") .
s106_(X,"f"):-s105_(X,"t*") .
s106_(X,"t*"):-s105_(X,"f") .
rdfs_subPropertyOf_(X,@new(s106,X,rdfs_subPropertyOf,1..1),"t"):-choose(s106,X,rdfs_subPropertyOf,1) .
choose(s106,X,rdfs_subPropertyOf,1);choose(s106,X,rdfs_subPropertyOf,0):-s106_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s107_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s106_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s107_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s106_(X,"t*") .
s108_(X,"f"):-s107_(X,"t*") .
s108_(X,"t*"):-s107_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s108_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s108_(X,"f") .

s103_(X,"f");s105_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*"):-s102_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11488
s109_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s110_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s109_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s110_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s109_(X,"t*") .

s111_(X,"t*"):-s110_(X,"t*") .
rdfs_Datatype_(X,"t"):-s111_(X,"t*") .
rdfs_Datatype_(X,"f"):-s111_(X,"f") .
s112_(X,"t*"):-s110_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s112_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s112_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f") .
s111_(X,"f");s112_(X,"f"):-s110_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11488
s113_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*") .
s114_(X,"f"):-s113_(X,"t*") .
s114_(X,"t*"):-s113_(X,"f") .
rdfs_range_(X,@new(s114,X,rdfs_range,1..1),"t"):-choose(s114,X,rdfs_range,1) .
choose(s114,X,rdfs_range,1);choose(s114,X,rdfs_range,0):-s114_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s115_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s114_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s115_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s114_(X,"t*") .
s116_(X,"f"):-s115_(X,"t*") .
s116_(X,"t*"):-s115_(X,"f") .

s117_(X,"t*"):-s116_(X,"t*") .
rdfs_Datatype_(X,"t"):-s117_(X,"t*") .
rdfs_Datatype_(X,"f"):-s117_(X,"f") .
s118_(X,"t*"):-s116_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s118_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s118_(X,"f") .
s117_(X,"f");s118_(X,"f"):-s116_(X,"f") .

s109_(X,"f");s113_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*"):-s102_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11491
s119_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*");s120_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f")} (C-0):-s119_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,X3,"f") .
0 {s120_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t**")} 0:-s119_(X,"t*") .

s121_(X,"t*"):-s120_(X,"t*") .
rdfs_Datatype_(X,"t"):-s121_(X,"t*") .
rdfs_Datatype_(X,"f"):-s121_(X,"f") .
s122_(X,"t*"):-s120_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s122_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s122_(X,"f") .
s121_(X,"f");s122_(X,"f"):-s120_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11491
s123_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*") .
s124_(X,"f"):-s123_(X,"t*") .
s124_(X,"t*"):-s123_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,@new(s124,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1..1),"t"):-choose(s124,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1) .
choose(s124,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1);choose(s124,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,0):-s124_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*");s125_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f")} (C-0):-s124_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*")}=C,C>0 .
1 {s125_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t**")} 1:-s124_(X,"t*") .
s126_(X,"f"):-s125_(X,"t*") .
s126_(X,"t*"):-s125_(X,"f") .

s127_(X,"t*"):-s126_(X,"t*") .
rdfs_Datatype_(X,"t"):-s127_(X,"t*") .
rdfs_Datatype_(X,"f"):-s127_(X,"f") .
s128_(X,"t*"):-s126_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s128_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s128_(X,"f") .
s127_(X,"f");s128_(X,"f"):-s126_(X,"f") .

s119_(X,"f");s123_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"f") .
s129_(X,"t*"):-s102_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"f"):-s129_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"t*"):-s129_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"f") .
s130_(X,"t*"):-s102_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"f"):-s130_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"t*"):-s130_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11490
s131_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s132_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s131_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s132_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s131_(X,"t*") .

s133_(X,"t*"):-s132_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s133_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s133_(X,"f") .
s134_(X,"t*"):-s132_(X,"t*") .
owl_Class_(X,"t"):-s134_(X,"t*") .
owl_Class_(X,"f"):-s134_(X,"f") .
s133_(X,"f");s134_(X,"f"):-s132_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11490
s135_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*") .
s136_(X,"f"):-s135_(X,"t*") .
s136_(X,"t*"):-s135_(X,"f") .
rdfs_range_(X,@new(s136,X,rdfs_range,1..1),"t"):-choose(s136,X,rdfs_range,1) .
choose(s136,X,rdfs_range,1);choose(s136,X,rdfs_range,0):-s136_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s137_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s136_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s137_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s136_(X,"t*") .
s138_(X,"f"):-s137_(X,"t*") .
s138_(X,"t*"):-s137_(X,"f") .

s139_(X,"t*"):-s138_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s139_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s139_(X,"f") .
s140_(X,"t*"):-s138_(X,"t*") .
owl_Class_(X,"t"):-s140_(X,"t*") .
owl_Class_(X,"f"):-s140_(X,"f") .
s139_(X,"f");s140_(X,"f"):-s138_(X,"f") .

s131_(X,"f");s135_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"f") .
s141_(X,"t*"):-s102_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s141_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s141_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"f");s129_(X,"f");s130_(X,"f");s141_(X,"f"):-s102_(X,"f") .
s142_(X,"f"):-s101_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*"):-s142_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11486
s143_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s144_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s143_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s144_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s143_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s144_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s144_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11486
s145_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*") .
s146_(X,"f"):-s145_(X,"t*") .
s146_(X,"t*"):-s145_(X,"f") .
rdfs_subPropertyOf_(X,@new(s146,X,rdfs_subPropertyOf,1..1),"t"):-choose(s146,X,rdfs_subPropertyOf,1) .
choose(s146,X,rdfs_subPropertyOf,1);choose(s146,X,rdfs_subPropertyOf,0):-s146_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s147_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s146_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s147_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s146_(X,"t*") .
s148_(X,"f"):-s147_(X,"t*") .
s148_(X,"t*"):-s147_(X,"f") .

owl_ObjectProperty_(X,"t"):-s148_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s148_(X,"f") .

s143_(X,"f");s145_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*"):-s142_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11480
s149_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*");s150_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f")} (C-0):-s149_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,X3,"f") .
0 {s150_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t**")} 0:-s149_(X,"t*") .

s151_(X,"t*"):-s150_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s151_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s151_(X,"f") .
s152_(X,"t*"):-s150_(X,"t*") .
owl_Class_(X,"t"):-s152_(X,"t*") .
owl_Class_(X,"f"):-s152_(X,"f") .
s151_(X,"f");s152_(X,"f"):-s150_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11480
s153_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*") .
s154_(X,"f"):-s153_(X,"t*") .
s154_(X,"t*"):-s153_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,@new(s154,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1..1),"t"):-choose(s154,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1) .
choose(s154,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1);choose(s154,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,0):-s154_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*");s155_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f")} (C-0):-s154_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*")}=C,C>0 .
1 {s155_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t**")} 1:-s154_(X,"t*") .
s156_(X,"f"):-s155_(X,"t*") .
s156_(X,"t*"):-s155_(X,"f") .

s157_(X,"t*"):-s156_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s157_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s157_(X,"f") .
s158_(X,"t*"):-s156_(X,"t*") .
owl_Class_(X,"t"):-s158_(X,"t*") .
owl_Class_(X,"f"):-s158_(X,"f") .
s157_(X,"f");s158_(X,"f"):-s156_(X,"f") .

s149_(X,"f");s153_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*"):-s142_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11479
s159_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s160_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s159_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s160_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s159_(X,"t*") .

s161_(X,"t*"):-s160_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s161_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s161_(X,"f") .
s162_(X,"t*"):-s160_(X,"t*") .
owl_Class_(X,"t"):-s162_(X,"t*") .
owl_Class_(X,"f"):-s162_(X,"f") .
s161_(X,"f");s162_(X,"f"):-s160_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11479
s163_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*") .
s164_(X,"f"):-s163_(X,"t*") .
s164_(X,"t*"):-s163_(X,"f") .
rdfs_range_(X,@new(s164,X,rdfs_range,1..1),"t"):-choose(s164,X,rdfs_range,1) .
choose(s164,X,rdfs_range,1);choose(s164,X,rdfs_range,0):-s164_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s165_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s164_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s165_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s164_(X,"t*") .
s166_(X,"f"):-s165_(X,"t*") .
s166_(X,"t*"):-s165_(X,"f") .

s167_(X,"t*"):-s166_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s167_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s167_(X,"f") .
s168_(X,"t*"):-s166_(X,"t*") .
owl_Class_(X,"t"):-s168_(X,"t*") .
owl_Class_(X,"f"):-s168_(X,"f") .
s167_(X,"f");s168_(X,"f"):-s166_(X,"f") .

s159_(X,"f");s163_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"f") .
s169_(X,"t*"):-s142_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"f"):-s169_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"t*"):-s169_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"f") .
s170_(X,"t*"):-s142_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s170_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s170_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"f");s169_(X,"f");s170_(X,"f"):-s142_(X,"f") .
s102_(X,"t*");s142_(X,"t*"):-s101_(X,"t*") .
s171_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*"):-s171_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"f"):-s171_(X,"f") .




s172_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*");s173_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f")} (C-0):-s172_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*")}=C,C>0 .
0 {s173_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t**")} 0:-s172_(X,"t*") .

s174_(X,"t*"):-s173_(X,"t*") .
owl_Class_(X,"t"):-s174_(X,"t*") .
owl_Class_(X,"f"):-s174_(X,"f") .
s175_(X,"t*"):-s173_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s175_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s175_(X,"f") .
s174_(X,"f");s175_(X,"f"):-s173_(X,"f") .

s176_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*") .
s177_(X,"f"):-s176_(X,"t*") .
s177_(X,"t*"):-s176_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,@new(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1..1),"t"):-choose(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1) .
choose(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1);choose(s177,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,0):-s177_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*");s178_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f")} (C-0):-s177_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*")}=C,C>0 .
1 {s178_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t**")} 1:-s177_(X,"t*") .
s179_(X,"f"):-s178_(X,"t*") .
s179_(X,"t*"):-s178_(X,"f") .

s180_(X,"t*"):-s179_(X,"t*") .
owl_Class_(X,"t"):-s180_(X,"t*") .
owl_Class_(X,"f"):-s180_(X,"f") .
s181_(X,"t*"):-s179_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s181_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s181_(X,"f") .
s180_(X,"f");s181_(X,"f"):-s179_(X,"f") .

s172_(X,"f");s176_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"f") .
s182_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*"):-s182_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f"):-s182_(X,"f") .

s183_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s184_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s183_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s184_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s183_(X,"t*") .

s185_(X,"t*"):-s184_(X,"t*") .
owl_Class_(X,"t"):-s185_(X,"t*") .
owl_Class_(X,"f"):-s185_(X,"f") .
s186_(X,"t*"):-s184_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s186_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s186_(X,"f") .
s185_(X,"f");s186_(X,"f"):-s184_(X,"f") .

s187_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s188_(X,"f"):-s187_(X,"t*") .
s188_(X,"t*"):-s187_(X,"f") .
rdfs_domain_(X,@new(s188,X,rdfs_domain,1..1),"t"):-choose(s188,X,rdfs_domain,1) .
choose(s188,X,rdfs_domain,1);choose(s188,X,rdfs_domain,0):-s188_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s189_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s188_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s189_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s188_(X,"t*") .
s190_(X,"f"):-s189_(X,"t*") .
s190_(X,"t*"):-s189_(X,"f") .

s191_(X,"t*"):-s190_(X,"t*") .
owl_Class_(X,"t"):-s191_(X,"t*") .
owl_Class_(X,"f"):-s191_(X,"f") .
s192_(X,"t*"):-s190_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s192_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s192_(X,"f") .
s191_(X,"f");s192_(X,"f"):-s190_(X,"f") .

s183_(X,"f");s187_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f") .
s193_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"f"):-s193_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11474_(X,"t*"):-s193_(X,"f") .
s194_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*"):-s194_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f"):-s194_(X,"f") .

s195_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s196_(X,"f"):-s195_(X,"t*") .
s196_(X,"t*"):-s195_(X,"f") .
rdfs_domain_(X,@new(s196,X,rdfs_domain,1..1),"t"):-choose(s196,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s196,X,rdfs_domain,1..2),"t"):-choose(s196,X,rdfs_domain,2) .
choose(s196,X,rdfs_domain,2);choose(s196,X,rdfs_domain,1);choose(s196,X,rdfs_domain,0):-s196_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s197_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s196_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s197_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s196_(X,"t*") .


s198_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s199_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s198_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s199_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s198_(X,"t*") .


s200_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s201_(X,"f"):-s200_(X,"t*") .
s201_(X,"t*"):-s200_(X,"f") .
rdfs_domain_(X,@new(s201,X,rdfs_domain,1..1),"t"):-choose(s201,X,rdfs_domain,1) .
choose(s201,X,rdfs_domain,1);choose(s201,X,rdfs_domain,0):-s201_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s202_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s201_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s202_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s201_(X,"t*") .
s203_(X,"f"):-s202_(X,"t*") .
s203_(X,"t*"):-s202_(X,"f") .


s195_(X,"f");s198_(X,"f");s200_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f") .
s204_(X,"t*"):-d_PropertyShape_(X,"t*") .
s205_(X,"f"):-s204_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*"):-s205_(X,"t*") .

s206_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s207_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s206_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s207_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s206_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s207_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s207_(X,"f") .

s208_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*") .
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

s206_(X,"f");s208_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*"):-s205_(X,"t*") .

s212_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s213_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s212_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s213_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s212_(X,"t*") .

s214_(X,"t*"):-s213_(X,"t*") .
rdfs_Datatype_(X,"t"):-s214_(X,"t*") .
rdfs_Datatype_(X,"f"):-s214_(X,"f") .
s215_(X,"t*"):-s213_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s215_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s215_(X,"f") .
s214_(X,"f");s215_(X,"f"):-s213_(X,"f") .

s216_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*") .
s217_(X,"f"):-s216_(X,"t*") .
s217_(X,"t*"):-s216_(X,"f") .
rdfs_range_(X,@new(s217,X,rdfs_range,1..1),"t"):-choose(s217,X,rdfs_range,1) .
choose(s217,X,rdfs_range,1);choose(s217,X,rdfs_range,0):-s217_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s218_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s217_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s218_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s217_(X,"t*") .
s219_(X,"f"):-s218_(X,"t*") .
s219_(X,"t*"):-s218_(X,"f") .

s220_(X,"t*"):-s219_(X,"t*") .
rdfs_Datatype_(X,"t"):-s220_(X,"t*") .
rdfs_Datatype_(X,"f"):-s220_(X,"f") .
s221_(X,"t*"):-s219_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s221_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s221_(X,"f") .
s220_(X,"f");s221_(X,"f"):-s219_(X,"f") .

s212_(X,"f");s216_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*"):-s205_(X,"t*") .




s222_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*");s223_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f")} (C-0):-s222_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*")}=C,C>0 .
0 {s223_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t**")} 0:-s222_(X,"t*") .

s224_(X,"t*"):-s223_(X,"t*") .
rdfs_Datatype_(X,"t"):-s224_(X,"t*") .
rdfs_Datatype_(X,"f"):-s224_(X,"f") .
s225_(X,"t*"):-s223_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s225_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s225_(X,"f") .
s224_(X,"f");s225_(X,"f"):-s223_(X,"f") .

s226_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*") .
s227_(X,"f"):-s226_(X,"t*") .
s227_(X,"t*"):-s226_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,@new(s227,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1..1),"t"):-choose(s227,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1) .
choose(s227,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1);choose(s227,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,0):-s227_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*");s228_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f")} (C-0):-s227_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*")}=C,C>0 .
1 {s228_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t**")} 1:-s227_(X,"t*") .
s229_(X,"f"):-s228_(X,"t*") .
s229_(X,"t*"):-s228_(X,"f") .

s230_(X,"t*"):-s229_(X,"t*") .
rdfs_Datatype_(X,"t"):-s230_(X,"t*") .
rdfs_Datatype_(X,"f"):-s230_(X,"f") .
s231_(X,"t*"):-s229_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s231_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s231_(X,"f") .
s230_(X,"f");s231_(X,"f"):-s229_(X,"f") .

s222_(X,"f");s226_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"f") .
s232_(X,"t*"):-s205_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"f"):-s232_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"t*"):-s232_(X,"f") .
s233_(X,"t*"):-s205_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"f"):-s233_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"t*"):-s233_(X,"f") .

s234_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s235_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s234_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s235_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s234_(X,"t*") .

s236_(X,"t*"):-s235_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s236_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s236_(X,"f") .
s237_(X,"t*"):-s235_(X,"t*") .
owl_Class_(X,"t"):-s237_(X,"t*") .
owl_Class_(X,"f"):-s237_(X,"f") .
s236_(X,"f");s237_(X,"f"):-s235_(X,"f") .

s238_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*") .
s239_(X,"f"):-s238_(X,"t*") .
s239_(X,"t*"):-s238_(X,"f") .
rdfs_range_(X,@new(s239,X,rdfs_range,1..1),"t"):-choose(s239,X,rdfs_range,1) .
choose(s239,X,rdfs_range,1);choose(s239,X,rdfs_range,0):-s239_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s240_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s239_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s240_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s239_(X,"t*") .
s241_(X,"f"):-s240_(X,"t*") .
s241_(X,"t*"):-s240_(X,"f") .

s242_(X,"t*"):-s241_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s242_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s242_(X,"f") .
s243_(X,"t*"):-s241_(X,"t*") .
owl_Class_(X,"t"):-s243_(X,"t*") .
owl_Class_(X,"f"):-s243_(X,"f") .
s242_(X,"f");s243_(X,"f"):-s241_(X,"f") .

s234_(X,"f");s238_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"f") .
s244_(X,"t*"):-s205_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s244_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s244_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"f");s232_(X,"f");s233_(X,"f");s244_(X,"f"):-s205_(X,"f") .
s245_(X,"f"):-s204_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*"):-s245_(X,"t*") .

s246_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s247_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s246_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s247_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s246_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s247_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s247_(X,"f") .

s248_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*") .
s249_(X,"f"):-s248_(X,"t*") .
s249_(X,"t*"):-s248_(X,"f") .
rdfs_subPropertyOf_(X,@new(s249,X,rdfs_subPropertyOf,1..1),"t"):-choose(s249,X,rdfs_subPropertyOf,1) .
choose(s249,X,rdfs_subPropertyOf,1);choose(s249,X,rdfs_subPropertyOf,0):-s249_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s250_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s249_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s250_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s249_(X,"t*") .
s251_(X,"f"):-s250_(X,"t*") .
s251_(X,"t*"):-s250_(X,"f") .

owl_ObjectProperty_(X,"t"):-s251_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s251_(X,"f") .

s246_(X,"f");s248_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*"):-s245_(X,"t*") .




s252_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*");s253_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f")} (C-0):-s252_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*")}=C,C>0 .
0 {s253_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t**")} 0:-s252_(X,"t*") .

s254_(X,"t*"):-s253_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s254_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s254_(X,"f") .
s255_(X,"t*"):-s253_(X,"t*") .
owl_Class_(X,"t"):-s255_(X,"t*") .
owl_Class_(X,"f"):-s255_(X,"f") .
s254_(X,"f");s255_(X,"f"):-s253_(X,"f") .

s256_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*") .
s257_(X,"f"):-s256_(X,"t*") .
s257_(X,"t*"):-s256_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,@new(s257,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1..1),"t"):-choose(s257,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1) .
choose(s257,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1);choose(s257,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,0):-s257_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*");s258_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f")} (C-0):-s257_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*")}=C,C>0 .
1 {s258_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t**")} 1:-s257_(X,"t*") .
s259_(X,"f"):-s258_(X,"t*") .
s259_(X,"t*"):-s258_(X,"f") .

s260_(X,"t*"):-s259_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s260_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s260_(X,"f") .
s261_(X,"t*"):-s259_(X,"t*") .
owl_Class_(X,"t"):-s261_(X,"t*") .
owl_Class_(X,"f"):-s261_(X,"f") .
s260_(X,"f");s261_(X,"f"):-s259_(X,"f") .

s252_(X,"f");s256_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*"):-s245_(X,"t*") .

s262_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s263_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s262_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s263_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s262_(X,"t*") .

s264_(X,"t*"):-s263_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s264_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s264_(X,"f") .
s265_(X,"t*"):-s263_(X,"t*") .
owl_Class_(X,"t"):-s265_(X,"t*") .
owl_Class_(X,"f"):-s265_(X,"f") .
s264_(X,"f");s265_(X,"f"):-s263_(X,"f") .

s266_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*") .
s267_(X,"f"):-s266_(X,"t*") .
s267_(X,"t*"):-s266_(X,"f") .
rdfs_range_(X,@new(s267,X,rdfs_range,1..1),"t"):-choose(s267,X,rdfs_range,1) .
choose(s267,X,rdfs_range,1);choose(s267,X,rdfs_range,0):-s267_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s268_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s267_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s268_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s267_(X,"t*") .
s269_(X,"f"):-s268_(X,"t*") .
s269_(X,"t*"):-s268_(X,"f") .

s270_(X,"t*"):-s269_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s270_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s270_(X,"f") .
s271_(X,"t*"):-s269_(X,"t*") .
owl_Class_(X,"t"):-s271_(X,"t*") .
owl_Class_(X,"f"):-s271_(X,"f") .
s270_(X,"f");s271_(X,"f"):-s269_(X,"f") .

s262_(X,"f");s266_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"f") .
s272_(X,"t*"):-s245_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"f"):-s272_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"t*"):-s272_(X,"f") .
s273_(X,"t*"):-s245_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s273_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s273_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"f");s272_(X,"f");s273_(X,"f"):-s245_(X,"f") .
s205_(X,"t*");s245_(X,"t*"):-s204_(X,"t*") .
s274_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*"):-s274_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"f"):-s274_(X,"f") .




s275_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*");s276_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f")} (C-0):-s275_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*")}=C,C>0 .
0 {s276_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t**")} 0:-s275_(X,"t*") .

s277_(X,"t*"):-s276_(X,"t*") .
owl_Class_(X,"t"):-s277_(X,"t*") .
owl_Class_(X,"f"):-s277_(X,"f") .
s278_(X,"t*"):-s276_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s278_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s278_(X,"f") .
s277_(X,"f");s278_(X,"f"):-s276_(X,"f") .

s279_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"t*") .
s280_(X,"f"):-s279_(X,"t*") .
s280_(X,"t*"):-s279_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,@new(s280,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1..1),"t"):-choose(s280,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1) .
choose(s280,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,1);choose(s280,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st,0):-s280_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*");s281_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f")} (C-0):-s280_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t*")}=C,C>0 .
1 {s281_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t**")} 1:-s280_(X,"t*") .
s282_(X,"f"):-s281_(X,"t*") .
s282_(X,"t*"):-s281_(X,"f") .

s283_(X,"t*"):-s282_(X,"t*") .
owl_Class_(X,"t"):-s283_(X,"t*") .
owl_Class_(X,"f"):-s283_(X,"f") .
s284_(X,"t*"):-s282_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s284_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s284_(X,"f") .
s283_(X,"f");s284_(X,"f"):-s282_(X,"f") .

s275_(X,"f");s279_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_(X,"f") .
s285_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*"):-s285_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"f"):-s285_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd11473
s286_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
s287_(X,"f"):-s286_(X,"t*") .
s287_(X,"t*"):-s286_(X,"f") .
rdfs_range_(X,@new(s287,X,rdfs_range,1..1),"t"):-choose(s287,X,rdfs_range,1) .
rdfs_range_(X,@new(s287,X,rdfs_range,1..2),"t"):-choose(s287,X,rdfs_range,2) .
choose(s287,X,rdfs_range,2);choose(s287,X,rdfs_range,1);choose(s287,X,rdfs_range,0):-s287_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s288_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s287_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s288_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s287_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11473
s289_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s290_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s289_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s290_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s289_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11473
s291_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
s292_(X,"f"):-s291_(X,"t*") .
s292_(X,"t*"):-s291_(X,"f") .
rdfs_range_(X,@new(s292,X,rdfs_range,1..1),"t"):-choose(s292,X,rdfs_range,1) .
choose(s292,X,rdfs_range,1);choose(s292,X,rdfs_range,0):-s292_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s293_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s292_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s293_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s292_(X,"t*") .
s294_(X,"f"):-s293_(X,"t*") .
s294_(X,"t*"):-s293_(X,"f") .


s286_(X,"f");s289_(X,"f");s291_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"f") .
s295_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*"):-s295_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"f"):-s295_(X,"f") .

s296_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
s297_(X,"f"):-s296_(X,"t*") .
s297_(X,"t*"):-s296_(X,"f") .
rdfs_range_(X,@new(s297,X,rdfs_range,1..1),"t"):-choose(s297,X,rdfs_range,1) .
rdfs_range_(X,@new(s297,X,rdfs_range,1..2),"t"):-choose(s297,X,rdfs_range,2) .
choose(s297,X,rdfs_range,2);choose(s297,X,rdfs_range,1);choose(s297,X,rdfs_range,0):-s297_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s298_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s297_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s298_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s297_(X,"t*") .


s299_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s300_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s299_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s300_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s299_(X,"t*") .


s301_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
s302_(X,"f"):-s301_(X,"t*") .
s302_(X,"t*"):-s301_(X,"f") .
rdfs_range_(X,@new(s302,X,rdfs_range,1..1),"t"):-choose(s302,X,rdfs_range,1) .
choose(s302,X,rdfs_range,1);choose(s302,X,rdfs_range,0):-s302_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s303_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s302_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s303_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s302_(X,"t*") .
s304_(X,"f"):-s303_(X,"t*") .
s304_(X,"t*"):-s303_(X,"f") .


s296_(X,"f");s299_(X,"f");s301_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"f") .
s305_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*"):-s305_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"f"):-s305_(X,"f") .

s306_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
s307_(X,"f"):-s306_(X,"t*") .
s307_(X,"t*"):-s306_(X,"f") .
rdfs_range_(X,@new(s307,X,rdfs_range,1..1),"t"):-choose(s307,X,rdfs_range,1) .
rdfs_range_(X,@new(s307,X,rdfs_range,1..2),"t"):-choose(s307,X,rdfs_range,2) .
choose(s307,X,rdfs_range,2);choose(s307,X,rdfs_range,1);choose(s307,X,rdfs_range,0):-s307_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s308_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s307_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s308_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s307_(X,"t*") .


s309_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s310_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s309_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s310_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s309_(X,"t*") .


s311_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"t*") .
s312_(X,"f"):-s311_(X,"t*") .
s312_(X,"t*"):-s311_(X,"f") .
rdfs_range_(X,@new(s312,X,rdfs_range,1..1),"t"):-choose(s312,X,rdfs_range,1) .
choose(s312,X,rdfs_range,1);choose(s312,X,rdfs_range,0):-s312_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s313_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s312_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s313_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s312_(X,"t*") .
s314_(X,"f"):-s313_(X,"t*") .
s314_(X,"t*"):-s313_(X,"f") .


s306_(X,"f");s309_(X,"f");s311_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11473_(X,"f") .
s315_(X,"t*"):-d_PropertyShape_(X,"t*") .
s316_(X,"f"):-s315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*"):-s316_(X,"t*") .

s317_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s318_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s317_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s318_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s317_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s318_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s318_(X,"f") .

s319_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"t*") .
s320_(X,"f"):-s319_(X,"t*") .
s320_(X,"t*"):-s319_(X,"f") .
rdfs_subPropertyOf_(X,@new(s320,X,rdfs_subPropertyOf,1..1),"t"):-choose(s320,X,rdfs_subPropertyOf,1) .
choose(s320,X,rdfs_subPropertyOf,1);choose(s320,X,rdfs_subPropertyOf,0):-s320_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s321_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s320_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s321_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s320_(X,"t*") .
s322_(X,"f"):-s321_(X,"t*") .
s322_(X,"t*"):-s321_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s322_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s322_(X,"f") .

s317_(X,"f");s319_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*"):-s316_(X,"t*") .

s323_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s324_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s323_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s324_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s323_(X,"t*") .

s325_(X,"t*"):-s324_(X,"t*") .
rdfs_Datatype_(X,"t"):-s325_(X,"t*") .
rdfs_Datatype_(X,"f"):-s325_(X,"f") .
s326_(X,"t*"):-s324_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s326_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s326_(X,"f") .
s325_(X,"f");s326_(X,"f"):-s324_(X,"f") .

s327_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"t*") .
s328_(X,"f"):-s327_(X,"t*") .
s328_(X,"t*"):-s327_(X,"f") .
rdfs_range_(X,@new(s328,X,rdfs_range,1..1),"t"):-choose(s328,X,rdfs_range,1) .
choose(s328,X,rdfs_range,1);choose(s328,X,rdfs_range,0):-s328_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s329_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s328_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s329_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s328_(X,"t*") .
s330_(X,"f"):-s329_(X,"t*") .
s330_(X,"t*"):-s329_(X,"f") .

s331_(X,"t*"):-s330_(X,"t*") .
rdfs_Datatype_(X,"t"):-s331_(X,"t*") .
rdfs_Datatype_(X,"f"):-s331_(X,"f") .
s332_(X,"t*"):-s330_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s332_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s332_(X,"f") .
s331_(X,"f");s332_(X,"f"):-s330_(X,"f") .

s323_(X,"f");s327_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*"):-s316_(X,"t*") .




s333_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*");s334_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f")} (C-0):-s333_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*")}=C,C>0 .
0 {s334_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t**")} 0:-s333_(X,"t*") .

s335_(X,"t*"):-s334_(X,"t*") .
rdfs_Datatype_(X,"t"):-s335_(X,"t*") .
rdfs_Datatype_(X,"f"):-s335_(X,"f") .
s336_(X,"t*"):-s334_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s336_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s336_(X,"f") .
s335_(X,"f");s336_(X,"f"):-s334_(X,"f") .

s337_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"t*") .
s338_(X,"f"):-s337_(X,"t*") .
s338_(X,"t*"):-s337_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,@new(s338,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1..1),"t"):-choose(s338,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1) .
choose(s338,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,1);choose(s338,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st,0):-s338_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*");s339_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f")} (C-0):-s338_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t*")}=C,C>0 .
1 {s339_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t**")} 1:-s338_(X,"t*") .
s340_(X,"f"):-s339_(X,"t*") .
s340_(X,"t*"):-s339_(X,"f") .

s341_(X,"t*"):-s340_(X,"t*") .
rdfs_Datatype_(X,"t"):-s341_(X,"t*") .
rdfs_Datatype_(X,"f"):-s341_(X,"f") .
s342_(X,"t*"):-s340_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"f"):-s342_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11461_(X,"t*"):-s342_(X,"f") .
s341_(X,"f");s342_(X,"f"):-s340_(X,"f") .

s333_(X,"f");s337_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"f") .
s343_(X,"t*"):-s316_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"f"):-s343_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11487_(X,"t*"):-s343_(X,"f") .
s344_(X,"t*"):-s316_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"f"):-s344_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11489_(X,"t*"):-s344_(X,"f") .

s345_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s346_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s345_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s346_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s345_(X,"t*") .

s347_(X,"t*"):-s346_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s347_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s347_(X,"f") .
s348_(X,"t*"):-s346_(X,"t*") .
owl_Class_(X,"t"):-s348_(X,"t*") .
owl_Class_(X,"f"):-s348_(X,"f") .
s347_(X,"f");s348_(X,"f"):-s346_(X,"f") .

s349_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"t*") .
s350_(X,"f"):-s349_(X,"t*") .
s350_(X,"t*"):-s349_(X,"f") .
rdfs_range_(X,@new(s350,X,rdfs_range,1..1),"t"):-choose(s350,X,rdfs_range,1) .
choose(s350,X,rdfs_range,1);choose(s350,X,rdfs_range,0):-s350_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s351_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s350_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s351_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s350_(X,"t*") .
s352_(X,"f"):-s351_(X,"t*") .
s352_(X,"t*"):-s351_(X,"f") .

s353_(X,"t*"):-s352_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s353_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s353_(X,"f") .
s354_(X,"t*"):-s352_(X,"t*") .
owl_Class_(X,"t"):-s354_(X,"t*") .
owl_Class_(X,"f"):-s354_(X,"f") .
s353_(X,"f");s354_(X,"f"):-s352_(X,"f") .

s345_(X,"f");s349_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11490_(X,"f") .
s355_(X,"t*"):-s316_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s355_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s355_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11488_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11491_(X,"f");s343_(X,"f");s344_(X,"f");s355_(X,"f"):-s316_(X,"f") .
s356_(X,"f"):-s315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*"):-s356_(X,"t*") .

s357_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s358_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s357_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s358_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s357_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s358_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s358_(X,"f") .

s359_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"t*") .
s360_(X,"f"):-s359_(X,"t*") .
s360_(X,"t*"):-s359_(X,"f") .
rdfs_subPropertyOf_(X,@new(s360,X,rdfs_subPropertyOf,1..1),"t"):-choose(s360,X,rdfs_subPropertyOf,1) .
choose(s360,X,rdfs_subPropertyOf,1);choose(s360,X,rdfs_subPropertyOf,0):-s360_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s361_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s360_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s361_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s360_(X,"t*") .
s362_(X,"f"):-s361_(X,"t*") .
s362_(X,"t*"):-s361_(X,"f") .

owl_ObjectProperty_(X,"t"):-s362_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s362_(X,"f") .

s357_(X,"f");s359_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*"):-s356_(X,"t*") .




s363_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*");s364_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f")} (C-0):-s363_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*")}=C,C>0 .
0 {s364_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t**")} 0:-s363_(X,"t*") .

s365_(X,"t*"):-s364_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s365_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s365_(X,"f") .
s366_(X,"t*"):-s364_(X,"t*") .
owl_Class_(X,"t"):-s366_(X,"t*") .
owl_Class_(X,"f"):-s366_(X,"f") .
s365_(X,"f");s366_(X,"f"):-s364_(X,"f") .

s367_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"t*") .
s368_(X,"f"):-s367_(X,"t*") .
s368_(X,"t*"):-s367_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,@new(s368,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1..1),"t"):-choose(s368,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1) .
choose(s368,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,1);choose(s368,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st,0):-s368_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*");s369_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f")} (C-0):-s368_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t*")}=C,C>0 .
1 {s369_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t**")} 1:-s368_(X,"t*") .
s370_(X,"f"):-s369_(X,"t*") .
s370_(X,"t*"):-s369_(X,"f") .

s371_(X,"t*"):-s370_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s371_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s371_(X,"f") .
s372_(X,"t*"):-s370_(X,"t*") .
owl_Class_(X,"t"):-s372_(X,"t*") .
owl_Class_(X,"f"):-s372_(X,"f") .
s371_(X,"f");s372_(X,"f"):-s370_(X,"f") .

s363_(X,"f");s367_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*"):-s356_(X,"t*") .

s373_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s374_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s373_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s374_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s373_(X,"t*") .

s375_(X,"t*"):-s374_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s375_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s375_(X,"f") .
s376_(X,"t*"):-s374_(X,"t*") .
owl_Class_(X,"t"):-s376_(X,"t*") .
owl_Class_(X,"f"):-s376_(X,"f") .
s375_(X,"f");s376_(X,"f"):-s374_(X,"f") .

s377_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"t*") .
s378_(X,"f"):-s377_(X,"t*") .
s378_(X,"t*"):-s377_(X,"f") .
rdfs_range_(X,@new(s378,X,rdfs_range,1..1),"t"):-choose(s378,X,rdfs_range,1) .
choose(s378,X,rdfs_range,1);choose(s378,X,rdfs_range,0):-s378_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s379_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s378_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s379_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s378_(X,"t*") .
s380_(X,"f"):-s379_(X,"t*") .
s380_(X,"t*"):-s379_(X,"f") .

s381_(X,"t*"):-s380_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s381_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s381_(X,"f") .
s382_(X,"t*"):-s380_(X,"t*") .
owl_Class_(X,"t"):-s382_(X,"t*") .
owl_Class_(X,"f"):-s382_(X,"f") .
s381_(X,"f");s382_(X,"f"):-s380_(X,"f") .

s373_(X,"f");s377_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"f") .
s383_(X,"t*"):-s356_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"f"):-s383_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11478_(X,"t*"):-s383_(X,"f") .
s384_(X,"t*"):-s356_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s384_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s384_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11480_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd11479_(X,"f");s383_(X,"f");s384_(X,"f"):-s356_(X,"f") .
s316_(X,"t*");s356_(X,"t*"):-s315_(X,"t*") .
s385_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"f"):-s385_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11477_(X,"t*"):-s385_(X,"f") .
s386_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*"):-s386_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f"):-s386_(X,"f") .

s387_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s388_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s387_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s388_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s387_(X,"t*") .

s389_(X,"t*"):-s388_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s389_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s389_(X,"f") .
s390_(X,"t*"):-s388_(X,"t*") .
owl_Class_(X,"t"):-s390_(X,"t*") .
owl_Class_(X,"f"):-s390_(X,"f") .
s389_(X,"f");s390_(X,"f"):-s388_(X,"f") .

s391_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"t*") .
s392_(X,"f"):-s391_(X,"t*") .
s392_(X,"t*"):-s391_(X,"f") .
rdfs_domain_(X,@new(s392,X,rdfs_domain,1..1),"t"):-choose(s392,X,rdfs_domain,1) .
choose(s392,X,rdfs_domain,1);choose(s392,X,rdfs_domain,0):-s392_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s393_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s392_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s393_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s392_(X,"t*") .
s394_(X,"f"):-s393_(X,"t*") .
s394_(X,"t*"):-s393_(X,"f") .

s395_(X,"t*"):-s394_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s395_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s395_(X,"f") .
s396_(X,"t*"):-s394_(X,"t*") .
owl_Class_(X,"t"):-s396_(X,"t*") .
owl_Class_(X,"f"):-s396_(X,"f") .
s395_(X,"f");s396_(X,"f"):-s394_(X,"f") .

s387_(X,"f");s391_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11466_(X,"f") .
s49_(X,"f");s50_(X,"f");s51_(X,"f");s61_(X,"f");s72_(X,"f");s73_(X,"f");s74_(X,"f");s85_(X,"f");s95_(X,"f");s96_(X,"f");s97_(X,"f");s98_(X,"f");s99_(X,"f");s100_(X,"f");s101_(X,"f");s171_(X,"f");s182_(X,"f");s193_(X,"f");s194_(X,"f");s204_(X,"f");s274_(X,"f");s285_(X,"f");s295_(X,"f");s305_(X,"f");s315_(X,"f");s385_(X,"f");s386_(X,"f"):-d_PropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11498_(X,"t*"):-d_FunctionalPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11498_(X,"f"):-d_FunctionalPropertyShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11498
s397_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11498_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*");s398_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"f")} (C-0):-s397_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"f") .
0 {s398_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t**")} 0:-s397_(X,"t*") .

owl_FunctionalProperty_(X,"t"):-s398_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s398_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11498
s399_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11498_(X,"t*") .
s400_(X,"f"):-s399_(X,"t*") .
s400_(X,"t*"):-s399_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s400,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s400,X,rdfs_subPropertyOf,1) .
choose(s400,X,rdfs_subPropertyOf,1);choose(s400,X,rdfs_subPropertyOf,0):-s400_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*");s401_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"f")} (C-0):-s400_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*")}=C,C>0 .
1 {s401_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t**")} 1:-s400_(X,"t*") .
s402_(X,"f"):-s401_(X,"t*") .
s402_(X,"t*"):-s401_(X,"f") .

owl_FunctionalProperty_(X,"t"):-s402_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s402_(X,"f") .

s397_(X,"f");s399_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11498_(X,"f") .
s403_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,"t*"):-s403_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,"f"):-s403_(X,"f") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11512
s404_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,"t*") .
s405_(X,"f"):-s404_(X,"t*") .
s405_(X,"t*"):-s404_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,@new(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,1..1),"t"):-choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,1) .
choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,1);choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,0):-s405_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*");s406_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f")} (C-0):-s405_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,X1,"f") .
1 {s406_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t**")} 1:-s405_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11512
s407_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*");s408_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f")} (C-0):-s407_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*")}=C,C>0 .
0 {s408_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t**")} 0:-s407_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11512
s409_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,"t*") .
s410_(X,"f"):-s409_(X,"t*") .
s410_(X,"t*"):-s409_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,@new(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,1..1),"t"):-choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,1) .
choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,1);choose(s410,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st,0):-s410_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*");s411_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f")} (C-0):-s410_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t*")}=C,C>0 .
1 {s411_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t**")} 1:-s410_(X,"t*") .
s412_(X,"f"):-s411_(X,"t*") .
s412_(X,"t*"):-s411_(X,"f") .


s404_(X,"f");s407_(X,"f");s409_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_(X,"f") .
s413_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,"t*"):-s413_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,"f"):-s413_(X,"f") .


s414_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f"):-s414_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s414_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s414_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd11517
s415_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,@new(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,1..1),"t"):-choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,1) .
choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,1);choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,0):-s415_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*");s416_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f")} (C-0):-s415_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,X1,"f") .
1 {s416_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t**")} 1:-s415_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11517
s417_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,"t*") .
s418_(X,"f"):-s417_(X,"t*") .
s418_(X,"t*"):-s417_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,@new(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,1..1),"t"):-choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,1) .
choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,1);choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st,0):-s418_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*");s419_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f")} (C-0):-s418_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t*")}=C,C>0 .
1 {s419_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t**")} 1:-s418_(X,"t*") .
s420_(X,"f"):-s419_(X,"t*") .
s420_(X,"t*"):-s419_(X,"f") .


s414_(X,"f");s415_(X,"f");s417_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_(X,"f") .
s403_(X,"t*");s413_(X,"t*"):-d_DomainConsistencyShape_(X,"t*") .
s421_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,"t*"):-s421_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,"f"):-s421_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11522
s422_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*");s423_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f")} (C-0):-s422_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,X1,"f") .
0 {s423_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t**")} 0:-s422_(X,"t*") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd11522
s424_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,"t*") .
s425_(X,"f"):-s424_(X,"t*") .
s425_(X,"t*"):-s424_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,@new(s425,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,1..1),"t"):-choose(s425,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,1) .
choose(s425,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,1);choose(s425,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,0):-s425_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*");s426_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f")} (C-0):-s425_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*")}=C,C>0 .
1 {s426_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t**")} 1:-s425_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11522
s427_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,"t*") .
s428_(X,"f"):-s427_(X,"t*") .
s428_(X,"t*"):-s427_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,@new(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,1..1),"t"):-choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,1) .
choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,1);choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st,0):-s428_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*");s429_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f")} (C-0):-s428_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t*")}=C,C>0 .
1 {s429_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t**")} 1:-s428_(X,"t*") .
s430_(X,"f"):-s429_(X,"t*") .
s430_(X,"t*"):-s429_(X,"f") .


s422_(X,"f");s424_(X,"f");s427_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_(X,"f") .
s431_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,"t*"):-s431_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,"f"):-s431_(X,"f") .


s432_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f"):-s432_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s432_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s432_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd11527
s433_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,@new(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,1..1),"t"):-choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,1) .
choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,1);choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,0):-s433_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*");s434_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f")} (C-0):-s433_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,X1,"f") .
1 {s434_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t**")} 1:-s433_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd11527
s435_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,"t*") .
s436_(X,"f"):-s435_(X,"t*") .
s436_(X,"t*"):-s435_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,@new(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,1..1),"t"):-choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,1) .
choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,1);choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st,0):-s436_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*");s437_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f")} (C-0):-s436_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t*")}=C,C>0 .
1 {s437_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t**")} 1:-s436_(X,"t*") .
s438_(X,"f"):-s437_(X,"t*") .
s438_(X,"t*"):-s437_(X,"f") .


s432_(X,"f");s433_(X,"f");s435_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_(X,"f") .
s421_(X,"t*");s431_(X,"t*"):-d_RangeConsistencyShape_(X,"t*") .
s439_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s439_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s439_(X,"f") .
s440_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s440_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s440_(X,"f") .
s441_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s441_(X,"t*") .
owl_Class_(X,"f"):-s441_(X,"f") .
s442_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s442_(X,"t*") .
owl_Class_(X,"f"):-s442_(X,"f") .
s443_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s443_(X,"t*") .
owl_Class_(X,"f"):-s443_(X,"f") .
s444_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"f"):-s444_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11460_(X,"t*"):-s444_(X,"f") .
s439_(X,"f");s440_(X,"f");s441_(X,"f");s442_(X,"f");s443_(X,"f");s444_(X,"f"):-d_ClassShape_(X,"f") .

% Interpretation Rules

owl_inverseOf_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
rdfs_domain_(X,Y,"t**"):-rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11503_st_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11503_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11503_st_(X,Y,"f") .
dc_contributor_(X,Y,"t**"):-dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11530_st_(X,Y,"t**"):-dc_contributor_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11530_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11530_st_(X,Y,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),not rdfs_subPropertyOf_inv_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11501_st_(X,Y,"f") .
owl_SymmetricProperty_(X,"t**"):-owl_SymmetricProperty_(X,"t*"),not owl_SymmetricProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11500_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11500_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11500_st_(X,Y,"f") .
owl_AnnotationProperty_(X,"t**"):-owl_AnnotationProperty_(X,"t*"),not owl_AnnotationProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11466_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11466_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11466_st_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
owl_unionOf_(X,Y,"t**"):-owl_unionOf_(X,Y,"t*"),not owl_unionOf_(X,Y,"f") .
rdf_rest_(X,Y,"t**"):-rdf_rest_(X,Y,"t*"),not rdf_rest_(X,Y,"f") .
rdf_rest_star_(X,Y,"t**"):-rdf_rest_star_(X,Y,"t*"),not rdf_rest_star_(X,Y,"f") .
rdf_first_(X,Y,"t**"):-rdf_first_(X,Y,"t*"),not rdf_first_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,X3,"f"),rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
owl_OntologyProperty_(X,"t**"):-owl_OntologyProperty_(X,"t*"),not owl_OntologyProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11497_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11497_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11497_st_(X,Y,"f") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11488_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11488_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11488_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11490_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11490_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11490_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11486_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11486_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11486_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11479_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11479_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11479_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11473_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11473_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11473_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11498_st_(X,Y,"f") .
owl_FunctionalProperty_(X,"t**"):-owl_FunctionalProperty_(X,"t*"),not owl_FunctionalProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .

% Program Constraints

:-owl_inverseOf_(X,Y,"t"),owl_inverseOf_(X,Y,"f") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"f") .
:-s2_(X,"f") .
:-s3_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t**") .
:-s3_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11507_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-rdfs_domain_(X,Y,"t"),rdfs_domain_(X,Y,"f") .
:-s7_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-s10_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t**") .
:-s10_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11504_st_(X,Y,"f") .
:-s12_(X,"f") .
:-s16_(X,"f") .
:-dc_contributor_(X,Y,"t"),dc_contributor_(X,Y,"f") .
:-s26_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .
:-rdfs_subPropertyOf_inv_(X,Y,"t"),rdfs_subPropertyOf_inv_(X,Y,"f") .
:-owl_SymmetricProperty_(X,"t"),owl_SymmetricProperty_(X,"f") .
:-s43_(X,"f") .
:-s44_(X,"t*"),rdfs_range_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s44_(X,"t*"),rdfs_domain_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s48_(X,"f") .
:-owl_AnnotationProperty_(X,"t"),owl_AnnotationProperty_(X,"f") .
:-s53_(X,"f") .
:-s56_(X,"f") .
:-s60_(X,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-owl_unionOf_(X,Y,"t"),owl_unionOf_(X,Y,"f") .
:-rdf_rest_(X,Y,"t"),rdf_rest_(X,Y,"f") .
:-rdf_rest_star_(X,Y,"t"),rdf_rest_star_(X,Y,"f") .
:-rdf_rest_star_(X,X,"f") .
:-rdf_first_(X,Y,"t"),rdf_first_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11467_st_(X,Y,"f") .
:-s88_(X,"f") .
:-s90_(X,"f") .
:-s94_(X,"f") .
:-owl_OntologyProperty_(X,"t"),owl_OntologyProperty_(X,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11491_st_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11480_st_(X,Y,"f") .
:-s197_(X,"f") .
:-s199_(X,"f") .
:-s203_(X,"f") .
:-s288_(X,"f") .
:-s290_(X,"f") .
:-s294_(X,"f") .
:-s298_(X,"f") .
:-s300_(X,"f") .
:-s304_(X,"f") .
:-s308_(X,"f") .
:-s310_(X,"f") .
:-s314_(X,"f") .
:-owl_FunctionalProperty_(X,"t"),owl_FunctionalProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11512_st_(X,Y,"f") .
:-s406_(X,"f") .
:-s408_(X,"f") .
:-s412_(X,"f") .
:-s414_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t**") .
:-s414_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11517_st_(X,Y,"f") .
:-s416_(X,"f") .
:-s420_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11522_st_(X,Y,"f") .
:-s423_(X,"f") .
:-s426_(X,"f") .
:-s430_(X,"f") .
:-s432_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t**") .
:-s432_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd11527_st_(X,Y,"f") .
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
add(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"t**"),not owl_AnnotationProperty(X) .
del(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"f"),owl_AnnotationProperty(X) .
add(owl_Class(X)):-owl_Class_(X,"t**"),not owl_Class(X) .
del(owl_Class(X)):-owl_Class_(X,"f"),owl_Class(X) .
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"t**"),not owl_unionOf(X,Y) .
del(owl_unionOf(X,Y)):-owl_unionOf_(X,Y,"f"),owl_unionOf(X,Y) .
add(rdf_rest(X,Y)):-rdf_rest_(X,Y,"t**"),not rdf_rest(X,Y) .
del(rdf_rest(X,Y)):-rdf_rest_(X,Y,"f"),rdf_rest(X,Y) .
add(rdf_first(X,Y)):-rdf_first_(X,Y,"t**"),not rdf_first(X,Y) .
del(rdf_first(X,Y)):-rdf_first_(X,Y,"f"),rdf_first(X,Y) .
add(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"t**"),not owl_OntologyProperty(X) .
del(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"f"),owl_OntologyProperty(X) .
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
:-del(rdf_first(X,Y)) .
:-del(rdf_rest(X,Y)) .
:-add(rdf_rest(X,Y)) .
:-add(owl_unionOf(X,Y)) .
:-add(rdf_first(X,Y)) .
:-del(owl_unionOf(X,Y)) .
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
