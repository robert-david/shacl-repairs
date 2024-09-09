
% Graph Data

owl_ObjectProperty("obo_BFO_0000057") .
rdfs_domain("obo_BFO_0000057","obo_BFO_0000015") .
rdfs_range("obo_BFO_0000057","bnode_d010c93c2ea54b54bac743f51ae9ebd16407") .
owl_Class("bnode_d010c93c2ea54b54bac743f51ae9ebd16407") .
owl_unionOf("bnode_d010c93c2ea54b54bac743f51ae9ebd16407","bnode_d010c93c2ea54b54bac743f51ae9ebd16408") .
rdf_first("bnode_d010c93c2ea54b54bac743f51ae9ebd16408","obo_BFO_0000020") .
rdf_rest("bnode_d010c93c2ea54b54bac743f51ae9ebd16408","bnode_d010c93c2ea54b54bac743f51ae9ebd16409") .
rdf_first("bnode_d010c93c2ea54b54bac743f51ae9ebd16409","obo_BFO_0000031") .
rdf_rest("bnode_d010c93c2ea54b54bac743f51ae9ebd16409","bnode_d010c93c2ea54b54bac743f51ae9ebd16410") .
rdf_first("bnode_d010c93c2ea54b54bac743f51ae9ebd16410","bnode_d010c93c2ea54b54bac743f51ae9ebd16411") .
owl_intersectionOf("bnode_d010c93c2ea54b54bac743f51ae9ebd16411","bnode_d010c93c2ea54b54bac743f51ae9ebd16412") .
rdf_first("bnode_d010c93c2ea54b54bac743f51ae9ebd16412","obo_BFO_0000004") .
rdf_rest("bnode_d010c93c2ea54b54bac743f51ae9ebd16412","bnode_d010c93c2ea54b54bac743f51ae9ebd16413") .
rdf_first("bnode_d010c93c2ea54b54bac743f51ae9ebd16413","bnode_d010c93c2ea54b54bac743f51ae9ebd16414") .
owl_Class("bnode_d010c93c2ea54b54bac743f51ae9ebd16414") .
owl_complementOf("bnode_d010c93c2ea54b54bac743f51ae9ebd16414","obo_BFO_0000006") .
rdf_rest("bnode_d010c93c2ea54b54bac743f51ae9ebd16413","rdf_nil") .
owl_Class("bnode_d010c93c2ea54b54bac743f51ae9ebd16411") .
rdf_rest("bnode_d010c93c2ea54b54bac743f51ae9ebd16410","rdf_nil") .
dc_identifier("obo_BFO_0000057","248_BFO") .
xsd_string("248_BFO") .
rdfs_label("obo_BFO_0000057","has participant") .
rdf_langString("has participant") .
skos_definition("obo_BFO_0000057","p has participant c =Def c participates in p") .
rdf_langString("p has participant c =Def c participates in p") .
skos_scopeNote("obo_BFO_0000057","Users that require more sophisticated representations of time are encouraged to import a temporal extension of BFO_Core provided by the BFO development team. See documentation for guidance: <https://github.com/BFO_ontology/BFO_2020/tree/master/src/owl/profiles/temporal%20extensions>") .
rdf_langString("Users that require more sophisticated representations of time are encouraged to import a temporal extension of BFO_Core provided by the BFO development team. See documentation for guidance: <https://github.com/BFO_ontology/BFO_2020/tree/master/src/owl/profiles/temporal%20extensions>") .
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

targetNode("bnode_d010c93c2ea54b54bac743f51ae9ebd16407",d_ClassShape) .
targetNode("bnode_d010c93c2ea54b54bac743f51ae9ebd16411",d_ClassShape) .
targetNode("obo_BFO_0000057",d_PropertyShape) .
targetNode("bnode_d010c93c2ea54b54bac743f51ae9ebd16414",d_ClassShape) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
d_ClassShape_("bnode_d010c93c2ea54b54bac743f51ae9ebd16407","t*"):-actualTarget("bnode_d010c93c2ea54b54bac743f51ae9ebd16407",d_ClassShape) .
d_ClassShape_("bnode_d010c93c2ea54b54bac743f51ae9ebd16411","t*"):-actualTarget("bnode_d010c93c2ea54b54bac743f51ae9ebd16411",d_ClassShape) .
d_PropertyShape_("obo_BFO_0000057","t*"):-actualTarget("obo_BFO_0000057",d_PropertyShape) .
d_ClassShape_("bnode_d010c93c2ea54b54bac743f51ae9ebd16414","t*"):-actualTarget("bnode_d010c93c2ea54b54bac743f51ae9ebd16414",d_ClassShape) .

% Annotation Rules

owl_inverseOf_(X,Y,"t*"):-owl_inverseOf(X,Y) .
owl_inverseOf_(X,Y,"t*"):-owl_inverseOf_(X,Y,"t") .
rdfs_domain_(X,Y,"t*"):-rdfs_domain(X,Y) .
rdfs_domain_(X,Y,"t*"):-rdfs_domain_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
rdfs_range_(X,Y,"t*"):-rdfs_range(X,Y) .
rdfs_range_(X,Y,"t*"):-rdfs_range_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16458_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16458_(X,_),owl_inverseOf_(X,Y,"t*") .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty(X) .
owl_ObjectProperty_(X,"t*"):-owl_ObjectProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,_),owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
dc_contributor_(X,Y,"t*"):-dc_contributor(X,Y) .
dc_contributor_(X,Y,"t*"):-dc_contributor_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16485_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,_),dc_contributor_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16455_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,_),rdfs_domain_(X,Y,"t*") .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf(X,Y) .
rdfs_subPropertyOf_(X,Y,"t*"):-rdfs_subPropertyOf_(X,Y,"t") .
rdfs_subPropertyOf_(Y,X,"t"):-rdfs_subPropertyOf_inv_(X,Y,"t") .
rdfs_subPropertyOf_inv_(X,Y,"t*"):-rdfs_subPropertyOf_(Y,X,"t*") .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"f"):-rdfs_subPropertyOf_(Y,X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16456_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty(X) .
owl_SymmetricProperty_(X,"t*"):-owl_SymmetricProperty_(X,"t") .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype(X) .
rdfs_Datatype_(X,"t*"):-rdfs_Datatype_(X,"t") .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty(X) .
owl_OntologyProperty_(X,"t*"):-owl_OntologyProperty_(X,"t") .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty(X) .
owl_AnnotationProperty_(X,"t*"):-owl_AnnotationProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,_),rdfs_domain_(X,Y,"t*") .
owl_Class_(X,"t*"):-owl_Class(X) .
owl_Class_(X,"t*"):-owl_Class_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16434_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,_),rdfs_range_(X,Y,"t*") .
owl_unionOf_(X,Y,"t*"):-owl_unionOf(X,Y) .
owl_unionOf_(X,Y,"t*"):-owl_unionOf_(X,Y,"t") .
rdf_rest_(X,Y,"t*"):-rdf_rest(X,Y) .
rdf_rest_(X,Y,"t*"):-rdf_rest_(X,Y,"t") .
rdf_rest_star_(X,Y,"t*"):-rdf_rest_(X,Y,"t*") .
rdf_rest_star_(X,Z,"t*"):-rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*") .
rdf_first_(X,Y,"t*"):-rdf_first(X,Y) .
rdf_first_(X,Y,"t*"):-rdf_first_(X,Y,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty(X) .
owl_DatatypeProperty_(X,"t*"):-owl_DatatypeProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,_),rdfs_subPropertyOf_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16443_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16445_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,_),rdfs_range_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,X3,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16453_(X,_),rdfs_subPropertyOf_inv_(X,Y,"t*") .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty(X) .
owl_FunctionalProperty_(X,"t*"):-owl_FunctionalProperty_(X,"t") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,_),rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*") .

% Repair Rules

s0_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,"t*"):-s0_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,"f"):-s0_(X,"f") .


s1_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f"):-s1_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s1_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s1_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16459
s2_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*");s3_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f")} (C-0):-s2_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,X1,"f") .
0 {s3_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t**")} 0:-s2_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16459
s4_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,@new(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,1..1),"t"):-choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,1) .
choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,1);choose(s5,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st,0):-s5_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*");s6_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f")} (C-0):-s5_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t*")}=C,C>0 .
1 {s6_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t**")} 1:-s5_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .


s1_(X,"f");s2_(X,"f");s4_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_(X,"f") .
s8_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16458_(X,"t*"):-s8_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16458_(X,"f"):-s8_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16458
s9_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16458_(X,"t*") .
(C-0) {owl_inverseOf_(X,Y,"f"):owl_inverseOf_(X,Y,"t*");s10_(Y,"f"):owl_inverseOf_(X,Y,"t*"),not owl_inverseOf_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:owl_inverseOf_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,Y,"f"):-owl_inverseOf_(X,Y,"t*"),owl_inverseOf_(X,Y,"f") .
0 {s10_(Y,"t*"):owl_inverseOf_(X,Y,"t**")} 0:-s9_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s10_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s10_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16458
s11_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16458_(X,"t*") .
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

s9_(X,"f");s11_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16458_(X,"f") .
s15_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s15_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s15_(X,"f") .
s16_(X,"t*"):-d_InversePropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,"t*"):-s16_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,"f"):-s16_(X,"f") .


s17_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f"):-s17_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s17_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s17_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16462
s18_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,X,owl_inverseOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,X,owl_inverseOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t") .
owl_inverseOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,X,owl_inverseOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,X,owl_inverseOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-owl_inverseOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*");s19_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*")}=C,C>0 .
owl_inverseOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-owl_inverseOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,X1,"f") .
0 {s19_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t**")} 0:-s18_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16462
s20_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,@new(s21,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,1..1),"t"):-choose(s21,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,1) .
choose(s21,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,1);choose(s21,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st,0):-s21_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*");s22_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .


s17_(X,"f");s18_(X,"f");s20_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_(X,"f") .
s0_(X,"f");s8_(X,"f");s15_(X,"f");s16_(X,"f"):-d_InversePropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,"t*"):-d_UniqueContributorShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,"f"):-d_UniqueContributorShape_(X,"f") .

% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd16485
s24_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
dc_contributor_(X,@new(s25,X,dc_contributor,1..1),"t"):-choose(s25,X,dc_contributor,1) .
dc_contributor_(X,@new(s25,X,dc_contributor,1..2),"t"):-choose(s25,X,dc_contributor,2) .
choose(s25,X,dc_contributor,2);choose(s25,X,dc_contributor,1);choose(s25,X,dc_contributor,0):-s25_(X,"t*") .
(C-1) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s26_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>1 .
dc_contributor_(X,Y,"f"):-dc_contributor_(X,Y,"t*"),dc_contributor_(X,Y,"f") .
2 {s26_(Y,"t*"):dc_contributor_(X,Y,"t**")} 2:-s25_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16485
s27_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s28_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s27_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
0 {s28_(Y,"t*"):dc_contributor_(X,Y,"t**")} 0:-s27_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16485
s29_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .
dc_contributor_(X,@new(s30,X,dc_contributor,1..1),"t"):-choose(s30,X,dc_contributor,1) .
choose(s30,X,dc_contributor,1);choose(s30,X,dc_contributor,0):-s30_(X,"t*") .
(C-0) {dc_contributor_(X,Y,"f"):dc_contributor_(X,Y,"t*");s31_(Y,"f"):dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f")} (C-0):-s30_(X,"f"),#count {Y:dc_contributor_(X,Y,"t*")}=C,C>0 .
1 {s31_(Y,"t*"):dc_contributor_(X,Y,"t**")} 1:-s30_(X,"t*") .
s32_(X,"f"):-s31_(X,"t*") .
s32_(X,"t*"):-s31_(X,"f") .


s24_(X,"f");s27_(X,"f");s29_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16485_(X,"f") .
s33_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s33_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s33_(X,"f") .
s34_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,"t*"):-s34_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,"f"):-s34_(X,"f") .

s35_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,"t*") .
rdfs_range_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s35_(X,"t*"),rdfs_domain_(X,Y,"t*") .
rdfs_domain_(X,Y,"t");rdfs_range_(X,Y,"f"):-s35_(X,"t*"),rdfs_range_(X,Y,"t*") .
notEquals(s35,X,rdfs_domain,rdfs_range):-s35_(X,"f"),rdfs_domain_(X,Y,"t*"),not rdfs_range_(X,Y,"t*") .
notEquals(s35,X,rdfs_domain,rdfs_range):-s35_(X,"f"),not rdfs_domain_(X,Y,"t*"),rdfs_range_(X,Y,"t*") .
1 {rdfs_domain_(X,Y,"f"):rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):rdfs_domain_(X,Y,"t*");rdfs_domain_(X,@new(s35,X,rdfs_domain,1),"t*");rdfs_range_(X,@new(s35,X,rdfs_range,1),"t*")} 1:-s35_(X,"f"),not notEquals(s35,X,rdfs_domain,rdfs_range) .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16455
s36_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s37_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s36_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,Y,"f"):-rdfs_domain_(X,Y,"t*"),rdfs_domain_(X,Y,"f") .
0 {s37_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s36_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16455
s38_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,"t*") .
s39_(X,"f"):-s38_(X,"t*") .
s39_(X,"t*"):-s38_(X,"f") .
rdfs_domain_(X,@new(s39,X,rdfs_domain,1..1),"t"):-choose(s39,X,rdfs_domain,1) .
choose(s39,X,rdfs_domain,1);choose(s39,X,rdfs_domain,0):-s39_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s40_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s40_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s39_(X,"t*") .
s41_(X,"f"):-s40_(X,"t*") .
s41_(X,"t*"):-s40_(X,"f") .


s35_(X,"f");s36_(X,"f");s38_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16455_(X,"f") .
s42_(X,"t*"):-d_SymmetricPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16456_(X,"t*"):-s42_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16456_(X,"f"):-s42_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16456
s43_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16456_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*");s44_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"f")} (C-0):-s43_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"f") .
0 {s44_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t**")} 0:-s43_(X,"t*") .

owl_SymmetricProperty_(X,"t"):-s44_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s44_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16456
s45_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16456_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s46,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s46,X,rdfs_subPropertyOf,1) .
choose(s46,X,rdfs_subPropertyOf,1);choose(s46,X,rdfs_subPropertyOf,0):-s46_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*");s47_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t**")} 1:-s46_(X,"t*") .
s48_(X,"f"):-s47_(X,"t*") .
s48_(X,"t*"):-s47_(X,"f") .

owl_SymmetricProperty_(X,"t"):-s48_(X,"t*") .
owl_SymmetricProperty_(X,"f"):-s48_(X,"f") .

s43_(X,"f");s45_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16456_(X,"f") .
s33_(X,"f");s34_(X,"f");s42_(X,"f"):-d_SymmetricPropertyShape_(X,"f") .
s49_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"f"):-s49_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"t*"):-s49_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"f") .
s50_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"f"):-s50_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"t*"):-s50_(X,"f") .
owl_OntologyProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"t*") .
owl_OntologyProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"f") .
s51_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"f"):-s51_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"t*"):-s51_(X,"f") .
owl_AnnotationProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"t*") .
owl_AnnotationProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"f") .
s52_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*"):-s52_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f"):-s52_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16421
s53_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s54_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s54_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s53_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd16421
s55_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
rdfs_domain_(X,@new(s56,X,rdfs_domain,1..1),"t"):-choose(s56,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s56,X,rdfs_domain,1..2),"t"):-choose(s56,X,rdfs_domain,2) .
choose(s56,X,rdfs_domain,2);choose(s56,X,rdfs_domain,1);choose(s56,X,rdfs_domain,0):-s56_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s57_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s56_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s57_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s56_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16421
s58_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s59_(X,"f"):-s58_(X,"t*") .
s59_(X,"t*"):-s58_(X,"f") .
rdfs_domain_(X,@new(s59,X,rdfs_domain,1..1),"t"):-choose(s59,X,rdfs_domain,1) .
choose(s59,X,rdfs_domain,1);choose(s59,X,rdfs_domain,0):-s59_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s60_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s59_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s60_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s59_(X,"t*") .
s61_(X,"f"):-s60_(X,"t*") .
s61_(X,"t*"):-s60_(X,"f") .


s53_(X,"f");s55_(X,"f");s58_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f") .
s62_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"f"):-s62_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"t*"):-s62_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"f") .
s63_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*"):-s63_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"f"):-s63_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16428
s64_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s65_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s64_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,Y,"f"):-rdfs_range_(X,Y,"t*"),rdfs_range_(X,Y,"f") .
0 {s65_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s64_(X,"t*") .


% sh:maxCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd16428
s66_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .
rdfs_range_(X,@new(s67,X,rdfs_range,1..1),"t"):-choose(s67,X,rdfs_range,1) .
rdfs_range_(X,@new(s67,X,rdfs_range,1..2),"t"):-choose(s67,X,rdfs_range,2) .
choose(s67,X,rdfs_range,2);choose(s67,X,rdfs_range,1);choose(s67,X,rdfs_range,0):-s67_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s68_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s67_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s68_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s67_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16428
s69_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
s70_(X,"f"):-s69_(X,"t*") .
s70_(X,"t*"):-s69_(X,"f") .
rdfs_range_(X,@new(s70,X,rdfs_range,1..1),"t"):-choose(s70,X,rdfs_range,1) .
choose(s70,X,rdfs_range,1);choose(s70,X,rdfs_range,0):-s70_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s71_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s70_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s71_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s70_(X,"t*") .
s72_(X,"f"):-s71_(X,"t*") .
s72_(X,"t*"):-s71_(X,"f") .


s64_(X,"f");s66_(X,"f");s69_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"f") .
s73_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*"):-s73_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f"):-s73_(X,"f") .

s74_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s75_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s74_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s75_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s74_(X,"t*") .

s76_(X,"t*"):-s75_(X,"t*") .
owl_Class_(X,"t"):-s76_(X,"t*") .
owl_Class_(X,"f"):-s76_(X,"f") .
s77_(X,"t*"):-s75_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s77_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s77_(X,"f") .
rdfs_Datatype_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*") .
rdfs_Datatype_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f") .
s76_(X,"f");s77_(X,"f"):-s75_(X,"f") .

s78_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s79_(X,"f"):-s78_(X,"t*") .
s79_(X,"t*"):-s78_(X,"f") .
rdfs_domain_(X,@new(s79,X,rdfs_domain,1..1),"t"):-choose(s79,X,rdfs_domain,1) .
choose(s79,X,rdfs_domain,1);choose(s79,X,rdfs_domain,0):-s79_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s80_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s79_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s80_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s79_(X,"t*") .
s81_(X,"f"):-s80_(X,"t*") .
s81_(X,"t*"):-s80_(X,"f") .

s82_(X,"t*"):-s81_(X,"t*") .
owl_Class_(X,"t"):-s82_(X,"t*") .
owl_Class_(X,"f"):-s82_(X,"f") .
s83_(X,"t*"):-s81_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s83_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s83_(X,"f") .
s82_(X,"f");s83_(X,"f"):-s81_(X,"f") .

s74_(X,"f");s78_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f") .
s84_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*"):-s84_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f"):-s84_(X,"f") .

s85_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s86_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s85_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s86_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s85_(X,"t*") .

s87_(X,"t*"):-s86_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s87_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s87_(X,"f") .
s88_(X,"t*"):-s86_(X,"t*") .
owl_Class_(X,"t"):-s88_(X,"t*") .
owl_Class_(X,"f"):-s88_(X,"f") .
s87_(X,"f");s88_(X,"f"):-s86_(X,"f") .

s89_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s90_(X,"f"):-s89_(X,"t*") .
s90_(X,"t*"):-s89_(X,"f") .
rdfs_domain_(X,@new(s90,X,rdfs_domain,1..1),"t"):-choose(s90,X,rdfs_domain,1) .
choose(s90,X,rdfs_domain,1);choose(s90,X,rdfs_domain,0):-s90_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s91_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s90_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s91_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s90_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .

s93_(X,"t*"):-s92_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s93_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s93_(X,"f") .
s94_(X,"t*"):-s92_(X,"t*") .
owl_Class_(X,"t"):-s94_(X,"t*") .
owl_Class_(X,"f"):-s94_(X,"f") .
s93_(X,"f");s94_(X,"f"):-s92_(X,"f") .

s85_(X,"f");s89_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f") .
s95_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*"):-s95_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f"):-s95_(X,"f") .

s96_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s97_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s96_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s97_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s96_(X,"t*") .


s98_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s99_(X,"f"):-s98_(X,"t*") .
s99_(X,"t*"):-s98_(X,"f") .
rdfs_domain_(X,@new(s99,X,rdfs_domain,1..1),"t"):-choose(s99,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s99,X,rdfs_domain,1..2),"t"):-choose(s99,X,rdfs_domain,2) .
choose(s99,X,rdfs_domain,2);choose(s99,X,rdfs_domain,1);choose(s99,X,rdfs_domain,0):-s99_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s100_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s99_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s100_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s99_(X,"t*") .


s101_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s102_(X,"f"):-s101_(X,"t*") .
s102_(X,"t*"):-s101_(X,"f") .
rdfs_domain_(X,@new(s102,X,rdfs_domain,1..1),"t"):-choose(s102,X,rdfs_domain,1) .
choose(s102,X,rdfs_domain,1);choose(s102,X,rdfs_domain,0):-s102_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s103_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s102_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s103_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s102_(X,"t*") .
s104_(X,"f"):-s103_(X,"t*") .
s104_(X,"t*"):-s103_(X,"f") .


s96_(X,"f");s98_(X,"f");s101_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f") .
s105_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"f"):-s105_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"t*"):-s105_(X,"f") .
s106_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"f"):-s106_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"t*"):-s106_(X,"f") .
s107_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*"):-s107_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"f"):-s107_(X,"f") .

s108_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s109_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s108_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s109_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s108_(X,"t*") .


s110_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
s111_(X,"f"):-s110_(X,"t*") .
s111_(X,"t*"):-s110_(X,"f") .
rdfs_range_(X,@new(s111,X,rdfs_range,1..1),"t"):-choose(s111,X,rdfs_range,1) .
rdfs_range_(X,@new(s111,X,rdfs_range,1..2),"t"):-choose(s111,X,rdfs_range,2) .
choose(s111,X,rdfs_range,2);choose(s111,X,rdfs_range,1);choose(s111,X,rdfs_range,0):-s111_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s112_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s111_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s112_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s111_(X,"t*") .


s113_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
s114_(X,"f"):-s113_(X,"t*") .
s114_(X,"t*"):-s113_(X,"f") .
rdfs_range_(X,@new(s114,X,rdfs_range,1..1),"t"):-choose(s114,X,rdfs_range,1) .
choose(s114,X,rdfs_range,1);choose(s114,X,rdfs_range,0):-s114_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s115_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s114_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s115_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s114_(X,"t*") .
s116_(X,"f"):-s115_(X,"t*") .
s116_(X,"t*"):-s115_(X,"f") .


s108_(X,"f");s110_(X,"f");s113_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"f") .
s117_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*"):-s117_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f"):-s117_(X,"f") .

s118_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s119_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s118_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s119_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s118_(X,"t*") .


s120_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s121_(X,"f"):-s120_(X,"t*") .
s121_(X,"t*"):-s120_(X,"f") .
rdfs_domain_(X,@new(s121,X,rdfs_domain,1..1),"t"):-choose(s121,X,rdfs_domain,1) .
rdfs_domain_(X,@new(s121,X,rdfs_domain,1..2),"t"):-choose(s121,X,rdfs_domain,2) .
choose(s121,X,rdfs_domain,2);choose(s121,X,rdfs_domain,1);choose(s121,X,rdfs_domain,0):-s121_(X,"t*") .
(C-1) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s122_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-1):-s121_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>1 .
2 {s122_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 2:-s121_(X,"t*") .


s123_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s124_(X,"f"):-s123_(X,"t*") .
s124_(X,"t*"):-s123_(X,"f") .
rdfs_domain_(X,@new(s124,X,rdfs_domain,1..1),"t"):-choose(s124,X,rdfs_domain,1) .
choose(s124,X,rdfs_domain,1);choose(s124,X,rdfs_domain,0):-s124_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s125_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s124_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s125_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s124_(X,"t*") .
s126_(X,"f"):-s125_(X,"t*") .
s126_(X,"t*"):-s125_(X,"f") .


s118_(X,"f");s120_(X,"f");s123_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f") .
s127_(X,"t*"):-d_PropertyShape_(X,"t*") .
s128_(X,"f"):-s127_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*"):-s128_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16441
s129_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s130_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s129_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,Y,"f"):-rdfs_subPropertyOf_(X,Y,"t*"),rdfs_subPropertyOf_(X,Y,"f") .
0 {s130_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s129_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s130_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s130_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16441
s131_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*") .
s132_(X,"f"):-s131_(X,"t*") .
s132_(X,"t*"):-s131_(X,"f") .
rdfs_subPropertyOf_(X,@new(s132,X,rdfs_subPropertyOf,1..1),"t"):-choose(s132,X,rdfs_subPropertyOf,1) .
choose(s132,X,rdfs_subPropertyOf,1);choose(s132,X,rdfs_subPropertyOf,0):-s132_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s133_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s132_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s133_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s132_(X,"t*") .
s134_(X,"f"):-s133_(X,"t*") .
s134_(X,"t*"):-s133_(X,"f") .

owl_ObjectProperty_(X,"t"):-s134_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s134_(X,"f") .

s129_(X,"f");s131_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*"):-s128_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16434
s135_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s136_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s135_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s136_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s135_(X,"t*") .

s137_(X,"t*"):-s136_(X,"t*") .
owl_Class_(X,"t"):-s137_(X,"t*") .
owl_Class_(X,"f"):-s137_(X,"f") .
s138_(X,"t*"):-s136_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s138_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s138_(X,"f") .
s137_(X,"f");s138_(X,"f"):-s136_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16434
s139_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*") .
s140_(X,"f"):-s139_(X,"t*") .
s140_(X,"t*"):-s139_(X,"f") .
rdfs_range_(X,@new(s140,X,rdfs_range,1..1),"t"):-choose(s140,X,rdfs_range,1) .
choose(s140,X,rdfs_range,1);choose(s140,X,rdfs_range,0):-s140_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s141_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s140_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s141_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s140_(X,"t*") .
s142_(X,"f"):-s141_(X,"t*") .
s142_(X,"t*"):-s141_(X,"f") .

s143_(X,"t*"):-s142_(X,"t*") .
owl_Class_(X,"t"):-s143_(X,"t*") .
owl_Class_(X,"f"):-s143_(X,"f") .
s144_(X,"t*"):-s142_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s144_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s144_(X,"f") .
s143_(X,"f");s144_(X,"f"):-s142_(X,"f") .

s135_(X,"f");s139_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*"):-s128_(X,"t*") .



rdf_rest_star_(X,Y,"f");rdf_rest_(Y,Z,"f"):-rdf_rest_star_(X,Z,"f"),rdf_rest_star_(X,Y,"t*"),rdf_rest_(Y,Z,"t*"),X!=Y .
rdf_rest_(X,Y,"f"):-rdf_rest_star_(X,Y,"f"),rdf_rest_(X,Y,"t*") .

rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16435
s145_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*");s146_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f")} (C-0):-s145_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,X3,"f") .
0 {s146_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t**")} 0:-s145_(X,"t*") .

s147_(X,"t*"):-s146_(X,"t*") .
owl_Class_(X,"t"):-s147_(X,"t*") .
owl_Class_(X,"f"):-s147_(X,"f") .
s148_(X,"t*"):-s146_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s148_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s148_(X,"f") .
s147_(X,"f");s148_(X,"f"):-s146_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16435
s149_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*") .
s150_(X,"f"):-s149_(X,"t*") .
s150_(X,"t*"):-s149_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,@new(s150,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1..1),"t"):-choose(s150,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1) .
choose(s150,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1);choose(s150,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,0):-s150_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*");s151_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f")} (C-0):-s150_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*")}=C,C>0 .
1 {s151_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t**")} 1:-s150_(X,"t*") .
s152_(X,"f"):-s151_(X,"t*") .
s152_(X,"t*"):-s151_(X,"f") .

s153_(X,"t*"):-s152_(X,"t*") .
owl_Class_(X,"t"):-s153_(X,"t*") .
owl_Class_(X,"f"):-s153_(X,"f") .
s154_(X,"t*"):-s152_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s154_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s154_(X,"f") .
s153_(X,"f");s154_(X,"f"):-s152_(X,"f") .

s145_(X,"f");s149_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"f") .
s155_(X,"t*"):-s128_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s155_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s155_(X,"f") .
s156_(X,"t*"):-s128_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"f"):-s156_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"t*"):-s156_(X,"f") .
owl_DatatypeProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"f");s155_(X,"f");s156_(X,"f"):-s128_(X,"f") .
s157_(X,"f"):-s127_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*"):-s157_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16452
s158_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s159_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s158_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s159_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s158_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s159_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s159_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16452
s160_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*") .
s161_(X,"f"):-s160_(X,"t*") .
s161_(X,"t*"):-s160_(X,"f") .
rdfs_subPropertyOf_(X,@new(s161,X,rdfs_subPropertyOf,1..1),"t"):-choose(s161,X,rdfs_subPropertyOf,1) .
choose(s161,X,rdfs_subPropertyOf,1);choose(s161,X,rdfs_subPropertyOf,0):-s161_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s162_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s161_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s162_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s161_(X,"t*") .
s163_(X,"f"):-s162_(X,"t*") .
s163_(X,"t*"):-s162_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s163_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s163_(X,"f") .

s158_(X,"f");s160_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*"):-s157_(X,"t*") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16443
s164_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s165_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s164_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s165_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s164_(X,"t*") .

s166_(X,"t*"):-s165_(X,"t*") .
rdfs_Datatype_(X,"t"):-s166_(X,"t*") .
rdfs_Datatype_(X,"f"):-s166_(X,"f") .
s167_(X,"t*"):-s165_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s167_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s167_(X,"f") .
owl_Class_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*") .
owl_Class_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f") .
s166_(X,"f");s167_(X,"f"):-s165_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16443
s168_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*") .
s169_(X,"f"):-s168_(X,"t*") .
s169_(X,"t*"):-s168_(X,"f") .
rdfs_range_(X,@new(s169,X,rdfs_range,1..1),"t"):-choose(s169,X,rdfs_range,1) .
choose(s169,X,rdfs_range,1);choose(s169,X,rdfs_range,0):-s169_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s170_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s169_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s170_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s169_(X,"t*") .
s171_(X,"f"):-s170_(X,"t*") .
s171_(X,"t*"):-s170_(X,"f") .

s172_(X,"t*"):-s171_(X,"t*") .
rdfs_Datatype_(X,"t"):-s172_(X,"t*") .
rdfs_Datatype_(X,"f"):-s172_(X,"f") .
s173_(X,"t*"):-s171_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s173_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s173_(X,"f") .
s172_(X,"f");s173_(X,"f"):-s171_(X,"f") .

s164_(X,"f");s168_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*"):-s157_(X,"t*") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,_),rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16446
s174_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X,rdfs_range,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X,rdfs_range,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t") .
rdfs_range_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X,rdfs_range,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X,rdfs_range,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X0,owl_unionOf,0):-rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,X0,owl_unionOf,1),rdfs_range_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*");s175_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f")} (C-0):-s174_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*")}=C,C>0 .
rdfs_range_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_range_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,X3,"f") .
0 {s175_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t**")} 0:-s174_(X,"t*") .

s176_(X,"t*"):-s175_(X,"t*") .
rdfs_Datatype_(X,"t"):-s176_(X,"t*") .
rdfs_Datatype_(X,"f"):-s176_(X,"f") .
s177_(X,"t*"):-s175_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s177_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s177_(X,"f") .
s176_(X,"f");s177_(X,"f"):-s175_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16446
s178_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*") .
s179_(X,"f"):-s178_(X,"t*") .
s179_(X,"t*"):-s178_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,@new(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1..1),"t"):-choose(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1) .
choose(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1);choose(s179,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,0):-s179_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*");s180_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f")} (C-0):-s179_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*")}=C,C>0 .
1 {s180_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t**")} 1:-s179_(X,"t*") .
s181_(X,"f"):-s180_(X,"t*") .
s181_(X,"t*"):-s180_(X,"f") .

s182_(X,"t*"):-s181_(X,"t*") .
rdfs_Datatype_(X,"t"):-s182_(X,"t*") .
rdfs_Datatype_(X,"f"):-s182_(X,"f") .
s183_(X,"t*"):-s181_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s183_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s183_(X,"f") .
s182_(X,"f");s183_(X,"f"):-s181_(X,"f") .

s174_(X,"f");s178_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"f") .
s184_(X,"t*"):-s157_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"f"):-s184_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"t*"):-s184_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16445
s185_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s186_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s185_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s186_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s185_(X,"t*") .

s187_(X,"t*"):-s186_(X,"t*") .
owl_Class_(X,"t"):-s187_(X,"t*") .
owl_Class_(X,"f"):-s187_(X,"f") .
s188_(X,"t*"):-s186_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s188_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s188_(X,"f") .
s187_(X,"f");s188_(X,"f"):-s186_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16445
s189_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*") .
s190_(X,"f"):-s189_(X,"t*") .
s190_(X,"t*"):-s189_(X,"f") .
rdfs_range_(X,@new(s190,X,rdfs_range,1..1),"t"):-choose(s190,X,rdfs_range,1) .
choose(s190,X,rdfs_range,1);choose(s190,X,rdfs_range,0):-s190_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s191_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s190_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s191_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s190_(X,"t*") .
s192_(X,"f"):-s191_(X,"t*") .
s192_(X,"t*"):-s191_(X,"f") .

s193_(X,"t*"):-s192_(X,"t*") .
owl_Class_(X,"t"):-s193_(X,"t*") .
owl_Class_(X,"f"):-s193_(X,"f") .
s194_(X,"t*"):-s192_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s194_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s194_(X,"f") .
s193_(X,"f");s194_(X,"f"):-s192_(X,"f") .

s185_(X,"f");s189_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"f") .
s195_(X,"t*"):-s157_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"f"):-s195_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"t*"):-s195_(X,"f") .
owl_ObjectProperty_(X,"t"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"t*") .
owl_ObjectProperty_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"f") .
s196_(X,"t*"):-s157_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s196_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s196_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"f");s184_(X,"f");s195_(X,"f");s196_(X,"f"):-s157_(X,"f") .
s128_(X,"t*");s157_(X,"t*"):-s127_(X,"t*") .
s197_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"f"):-s197_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"t*"):-s197_(X,"f") .
s198_(X,"t*"):-d_PropertyShape_(X,"t*") .
s199_(X,"f"):-s198_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*"):-s199_(X,"t*") .

s200_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s201_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s200_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s201_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s200_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s201_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s201_(X,"f") .

s202_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*") .
s203_(X,"f"):-s202_(X,"t*") .
s203_(X,"t*"):-s202_(X,"f") .
rdfs_subPropertyOf_(X,@new(s203,X,rdfs_subPropertyOf,1..1),"t"):-choose(s203,X,rdfs_subPropertyOf,1) .
choose(s203,X,rdfs_subPropertyOf,1);choose(s203,X,rdfs_subPropertyOf,0):-s203_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s204_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s203_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s204_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s203_(X,"t*") .
s205_(X,"f"):-s204_(X,"t*") .
s205_(X,"t*"):-s204_(X,"f") .

owl_ObjectProperty_(X,"t"):-s205_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s205_(X,"f") .

s200_(X,"f");s202_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*"):-s199_(X,"t*") .

s206_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s207_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s206_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s207_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s206_(X,"t*") .

s208_(X,"t*"):-s207_(X,"t*") .
owl_Class_(X,"t"):-s208_(X,"t*") .
owl_Class_(X,"f"):-s208_(X,"f") .
s209_(X,"t*"):-s207_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s209_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s209_(X,"f") .
s208_(X,"f");s209_(X,"f"):-s207_(X,"f") .

s210_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*") .
s211_(X,"f"):-s210_(X,"t*") .
s211_(X,"t*"):-s210_(X,"f") .
rdfs_range_(X,@new(s211,X,rdfs_range,1..1),"t"):-choose(s211,X,rdfs_range,1) .
choose(s211,X,rdfs_range,1);choose(s211,X,rdfs_range,0):-s211_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s212_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s211_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s212_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s211_(X,"t*") .
s213_(X,"f"):-s212_(X,"t*") .
s213_(X,"t*"):-s212_(X,"f") .

s214_(X,"t*"):-s213_(X,"t*") .
owl_Class_(X,"t"):-s214_(X,"t*") .
owl_Class_(X,"f"):-s214_(X,"f") .
s215_(X,"t*"):-s213_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s215_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s215_(X,"f") .
s214_(X,"f");s215_(X,"f"):-s213_(X,"f") .

s206_(X,"f");s210_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*"):-s199_(X,"t*") .




s216_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*");s217_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f")} (C-0):-s216_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*")}=C,C>0 .
0 {s217_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t**")} 0:-s216_(X,"t*") .

s218_(X,"t*"):-s217_(X,"t*") .
owl_Class_(X,"t"):-s218_(X,"t*") .
owl_Class_(X,"f"):-s218_(X,"f") .
s219_(X,"t*"):-s217_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s219_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s219_(X,"f") .
s218_(X,"f");s219_(X,"f"):-s217_(X,"f") .

s220_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*") .
s221_(X,"f"):-s220_(X,"t*") .
s221_(X,"t*"):-s220_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,@new(s221,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1..1),"t"):-choose(s221,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1) .
choose(s221,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1);choose(s221,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,0):-s221_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*");s222_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f")} (C-0):-s221_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*")}=C,C>0 .
1 {s222_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t**")} 1:-s221_(X,"t*") .
s223_(X,"f"):-s222_(X,"t*") .
s223_(X,"t*"):-s222_(X,"f") .

s224_(X,"t*"):-s223_(X,"t*") .
owl_Class_(X,"t"):-s224_(X,"t*") .
owl_Class_(X,"f"):-s224_(X,"f") .
s225_(X,"t*"):-s223_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s225_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s225_(X,"f") .
s224_(X,"f");s225_(X,"f"):-s223_(X,"f") .

s216_(X,"f");s220_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"f") .
s226_(X,"t*"):-s199_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s226_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s226_(X,"f") .
s227_(X,"t*"):-s199_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"f"):-s227_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"t*"):-s227_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"f");s226_(X,"f");s227_(X,"f"):-s199_(X,"f") .
s228_(X,"f"):-s198_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*"):-s228_(X,"t*") .

s229_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s230_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s229_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s230_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s229_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s230_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s230_(X,"f") .

s231_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*") .
s232_(X,"f"):-s231_(X,"t*") .
s232_(X,"t*"):-s231_(X,"f") .
rdfs_subPropertyOf_(X,@new(s232,X,rdfs_subPropertyOf,1..1),"t"):-choose(s232,X,rdfs_subPropertyOf,1) .
choose(s232,X,rdfs_subPropertyOf,1);choose(s232,X,rdfs_subPropertyOf,0):-s232_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s233_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s232_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s233_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s232_(X,"t*") .
s234_(X,"f"):-s233_(X,"t*") .
s234_(X,"t*"):-s233_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s234_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s234_(X,"f") .

s229_(X,"f");s231_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*"):-s228_(X,"t*") .

s235_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s236_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s235_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s236_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s235_(X,"t*") .

s237_(X,"t*"):-s236_(X,"t*") .
rdfs_Datatype_(X,"t"):-s237_(X,"t*") .
rdfs_Datatype_(X,"f"):-s237_(X,"f") .
s238_(X,"t*"):-s236_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s238_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s238_(X,"f") .
s237_(X,"f");s238_(X,"f"):-s236_(X,"f") .

s239_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*") .
s240_(X,"f"):-s239_(X,"t*") .
s240_(X,"t*"):-s239_(X,"f") .
rdfs_range_(X,@new(s240,X,rdfs_range,1..1),"t"):-choose(s240,X,rdfs_range,1) .
choose(s240,X,rdfs_range,1);choose(s240,X,rdfs_range,0):-s240_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s241_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s240_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s241_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s240_(X,"t*") .
s242_(X,"f"):-s241_(X,"t*") .
s242_(X,"t*"):-s241_(X,"f") .

s243_(X,"t*"):-s242_(X,"t*") .
rdfs_Datatype_(X,"t"):-s243_(X,"t*") .
rdfs_Datatype_(X,"f"):-s243_(X,"f") .
s244_(X,"t*"):-s242_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s244_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s244_(X,"f") .
s243_(X,"f");s244_(X,"f"):-s242_(X,"f") .

s235_(X,"f");s239_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*"):-s228_(X,"t*") .




s245_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*");s246_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f")} (C-0):-s245_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*")}=C,C>0 .
0 {s246_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t**")} 0:-s245_(X,"t*") .

s247_(X,"t*"):-s246_(X,"t*") .
rdfs_Datatype_(X,"t"):-s247_(X,"t*") .
rdfs_Datatype_(X,"f"):-s247_(X,"f") .
s248_(X,"t*"):-s246_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s248_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s248_(X,"f") .
s247_(X,"f");s248_(X,"f"):-s246_(X,"f") .

s249_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*") .
s250_(X,"f"):-s249_(X,"t*") .
s250_(X,"t*"):-s249_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,@new(s250,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1..1),"t"):-choose(s250,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1) .
choose(s250,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1);choose(s250,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,0):-s250_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*");s251_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f")} (C-0):-s250_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*")}=C,C>0 .
1 {s251_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t**")} 1:-s250_(X,"t*") .
s252_(X,"f"):-s251_(X,"t*") .
s252_(X,"t*"):-s251_(X,"f") .

s253_(X,"t*"):-s252_(X,"t*") .
rdfs_Datatype_(X,"t"):-s253_(X,"t*") .
rdfs_Datatype_(X,"f"):-s253_(X,"f") .
s254_(X,"t*"):-s252_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s254_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s254_(X,"f") .
s253_(X,"f");s254_(X,"f"):-s252_(X,"f") .

s245_(X,"f");s249_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"f") .
s255_(X,"t*"):-s228_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"f"):-s255_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"t*"):-s255_(X,"f") .

s256_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s257_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s256_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s257_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s256_(X,"t*") .

s258_(X,"t*"):-s257_(X,"t*") .
owl_Class_(X,"t"):-s258_(X,"t*") .
owl_Class_(X,"f"):-s258_(X,"f") .
s259_(X,"t*"):-s257_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s259_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s259_(X,"f") .
s258_(X,"f");s259_(X,"f"):-s257_(X,"f") .

s260_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*") .
s261_(X,"f"):-s260_(X,"t*") .
s261_(X,"t*"):-s260_(X,"f") .
rdfs_range_(X,@new(s261,X,rdfs_range,1..1),"t"):-choose(s261,X,rdfs_range,1) .
choose(s261,X,rdfs_range,1);choose(s261,X,rdfs_range,0):-s261_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s262_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s261_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s262_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s261_(X,"t*") .
s263_(X,"f"):-s262_(X,"t*") .
s263_(X,"t*"):-s262_(X,"f") .

s264_(X,"t*"):-s263_(X,"t*") .
owl_Class_(X,"t"):-s264_(X,"t*") .
owl_Class_(X,"f"):-s264_(X,"f") .
s265_(X,"t*"):-s263_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s265_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s265_(X,"f") .
s264_(X,"f");s265_(X,"f"):-s263_(X,"f") .

s256_(X,"f");s260_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"f") .
s266_(X,"t*"):-s228_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"f"):-s266_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"t*"):-s266_(X,"f") .
s267_(X,"t*"):-s228_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s267_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s267_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"f");s255_(X,"f");s266_(X,"f");s267_(X,"f"):-s228_(X,"f") .
s199_(X,"t*");s228_(X,"t*"):-s198_(X,"t*") .
s268_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"f"):-s268_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"t*"):-s268_(X,"f") .
s269_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"f"):-s269_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16429_(X,"t*"):-s269_(X,"f") .
s270_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*"):-s270_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"f"):-s270_(X,"f") .




rdf_rest_star_(X1,X1,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,_),rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*") .
% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16422
s271_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X,rdfs_domain,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X,rdfs_domain,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t") .
rdfs_domain_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X,rdfs_domain,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X,rdfs_domain,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X0,owl_unionOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X0,owl_unionOf,0):-rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t") .
owl_unionOf_(X0,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X0,owl_unionOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,X0,owl_unionOf,1),rdfs_domain_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t") .
0 {rdf_first_(X2,Y,"t")} 1:-rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*");s272_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f")} (C-0):-s271_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*")}=C,C>0 .
rdfs_domain_(X,X0,"f");owl_unionOf_(X0,X1,"f");rdf_rest_star_(X1,X2,"f");rdf_first_(X2,X3,"f"):-rdfs_domain_(X,X0,"t*"),owl_unionOf_(X0,X1,"t*"),rdf_rest_star_(X1,X2,"t*"),rdf_first_(X2,X3,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,X3,"f") .
0 {s272_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t**")} 0:-s271_(X,"t*") .

s273_(X,"t*"):-s272_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s273_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s273_(X,"f") .
s274_(X,"t*"):-s272_(X,"t*") .
owl_Class_(X,"t"):-s274_(X,"t*") .
owl_Class_(X,"f"):-s274_(X,"f") .
s273_(X,"f");s274_(X,"f"):-s272_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16422
s275_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*") .
s276_(X,"f"):-s275_(X,"t*") .
s276_(X,"t*"):-s275_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,@new(s276,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1..1),"t"):-choose(s276,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1) .
choose(s276,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1);choose(s276,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,0):-s276_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*");s277_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f")} (C-0):-s276_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*")}=C,C>0 .
1 {s277_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t**")} 1:-s276_(X,"t*") .
s278_(X,"f"):-s277_(X,"t*") .
s278_(X,"t*"):-s277_(X,"f") .

s279_(X,"t*"):-s278_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s279_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s279_(X,"f") .
s280_(X,"t*"):-s278_(X,"t*") .
owl_Class_(X,"t"):-s280_(X,"t*") .
owl_Class_(X,"f"):-s280_(X,"f") .
s279_(X,"f");s280_(X,"f"):-s278_(X,"f") .

s271_(X,"f");s275_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"f") .
s281_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"f"):-s281_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16431_(X,"t*"):-s281_(X,"f") .
s282_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*"):-s282_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"f"):-s282_(X,"f") .




s283_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*");s284_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f")} (C-0):-s283_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*")}=C,C>0 .
0 {s284_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t**")} 0:-s283_(X,"t*") .

s285_(X,"t*"):-s284_(X,"t*") .
owl_Class_(X,"t"):-s285_(X,"t*") .
owl_Class_(X,"f"):-s285_(X,"f") .
s286_(X,"t*"):-s284_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s286_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s286_(X,"f") .
s285_(X,"f");s286_(X,"f"):-s284_(X,"f") .

s287_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*") .
s288_(X,"f"):-s287_(X,"t*") .
s288_(X,"t*"):-s287_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,@new(s288,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1..1),"t"):-choose(s288,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1) .
choose(s288,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1);choose(s288,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,0):-s288_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*");s289_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f")} (C-0):-s288_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*")}=C,C>0 .
1 {s289_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t**")} 1:-s288_(X,"t*") .
s290_(X,"f"):-s289_(X,"t*") .
s290_(X,"t*"):-s289_(X,"f") .

s291_(X,"t*"):-s290_(X,"t*") .
owl_Class_(X,"t"):-s291_(X,"t*") .
owl_Class_(X,"f"):-s291_(X,"f") .
s292_(X,"t*"):-s290_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s292_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s292_(X,"f") .
s291_(X,"f");s292_(X,"f"):-s290_(X,"f") .

s283_(X,"f");s287_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"f") .
s293_(X,"t*"):-d_PropertyShape_(X,"t*") .
s294_(X,"f"):-s293_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*"):-s294_(X,"t*") .

s295_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s296_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s295_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s296_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s295_(X,"t*") .

owl_ObjectProperty_(X,"t"):-s296_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s296_(X,"f") .

s297_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"t*") .
s298_(X,"f"):-s297_(X,"t*") .
s298_(X,"t*"):-s297_(X,"f") .
rdfs_subPropertyOf_(X,@new(s298,X,rdfs_subPropertyOf,1..1),"t"):-choose(s298,X,rdfs_subPropertyOf,1) .
choose(s298,X,rdfs_subPropertyOf,1);choose(s298,X,rdfs_subPropertyOf,0):-s298_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s299_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s298_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s299_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s298_(X,"t*") .
s300_(X,"f"):-s299_(X,"t*") .
s300_(X,"t*"):-s299_(X,"f") .

owl_ObjectProperty_(X,"t"):-s300_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s300_(X,"f") .

s295_(X,"f");s297_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*"):-s294_(X,"t*") .

s301_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s302_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s301_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s302_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s301_(X,"t*") .

s303_(X,"t*"):-s302_(X,"t*") .
owl_Class_(X,"t"):-s303_(X,"t*") .
owl_Class_(X,"f"):-s303_(X,"f") .
s304_(X,"t*"):-s302_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s304_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s304_(X,"f") .
s303_(X,"f");s304_(X,"f"):-s302_(X,"f") .

s305_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"t*") .
s306_(X,"f"):-s305_(X,"t*") .
s306_(X,"t*"):-s305_(X,"f") .
rdfs_range_(X,@new(s306,X,rdfs_range,1..1),"t"):-choose(s306,X,rdfs_range,1) .
choose(s306,X,rdfs_range,1);choose(s306,X,rdfs_range,0):-s306_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s307_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s306_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s307_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s306_(X,"t*") .
s308_(X,"f"):-s307_(X,"t*") .
s308_(X,"t*"):-s307_(X,"f") .

s309_(X,"t*"):-s308_(X,"t*") .
owl_Class_(X,"t"):-s309_(X,"t*") .
owl_Class_(X,"f"):-s309_(X,"f") .
s310_(X,"t*"):-s308_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s310_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s310_(X,"f") .
s309_(X,"f");s310_(X,"f"):-s308_(X,"f") .

s301_(X,"f");s305_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*"):-s294_(X,"t*") .




s311_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*");s312_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f")} (C-0):-s311_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*")}=C,C>0 .
0 {s312_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t**")} 0:-s311_(X,"t*") .

s313_(X,"t*"):-s312_(X,"t*") .
owl_Class_(X,"t"):-s313_(X,"t*") .
owl_Class_(X,"f"):-s313_(X,"f") .
s314_(X,"t*"):-s312_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s314_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s314_(X,"f") .
s313_(X,"f");s314_(X,"f"):-s312_(X,"f") .

s315_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"t*") .
s316_(X,"f"):-s315_(X,"t*") .
s316_(X,"t*"):-s315_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,@new(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1..1),"t"):-choose(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1) .
choose(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,1);choose(s316,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st,0):-s316_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*");s317_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f")} (C-0):-s316_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t*")}=C,C>0 .
1 {s317_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t**")} 1:-s316_(X,"t*") .
s318_(X,"f"):-s317_(X,"t*") .
s318_(X,"t*"):-s317_(X,"f") .

s319_(X,"t*"):-s318_(X,"t*") .
owl_Class_(X,"t"):-s319_(X,"t*") .
owl_Class_(X,"f"):-s319_(X,"f") .
s320_(X,"t*"):-s318_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s320_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s320_(X,"f") .
s319_(X,"f");s320_(X,"f"):-s318_(X,"f") .

s311_(X,"f");s315_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"f") .
s321_(X,"t*"):-s294_(X,"t*") .
owl_ObjectProperty_(X,"t"):-s321_(X,"t*") .
owl_ObjectProperty_(X,"f"):-s321_(X,"f") .
s322_(X,"t*"):-s294_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"f"):-s322_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16433_(X,"t*"):-s322_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16434_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16435_(X,"f");s321_(X,"f");s322_(X,"f"):-s294_(X,"f") .
s323_(X,"f"):-s293_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*"):-s323_(X,"t*") .

s324_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s325_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s324_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
0 {s325_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 0:-s324_(X,"t*") .

owl_DatatypeProperty_(X,"t"):-s325_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s325_(X,"f") .

s326_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"t*") .
s327_(X,"f"):-s326_(X,"t*") .
s327_(X,"t*"):-s326_(X,"f") .
rdfs_subPropertyOf_(X,@new(s327,X,rdfs_subPropertyOf,1..1),"t"):-choose(s327,X,rdfs_subPropertyOf,1) .
choose(s327,X,rdfs_subPropertyOf,1);choose(s327,X,rdfs_subPropertyOf,0):-s327_(X,"t*") .
(C-0) {rdfs_subPropertyOf_(X,Y,"f"):rdfs_subPropertyOf_(X,Y,"t*");s328_(Y,"f"):rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f")} (C-0):-s327_(X,"f"),#count {Y:rdfs_subPropertyOf_(X,Y,"t*")}=C,C>0 .
1 {s328_(Y,"t*"):rdfs_subPropertyOf_(X,Y,"t**")} 1:-s327_(X,"t*") .
s329_(X,"f"):-s328_(X,"t*") .
s329_(X,"t*"):-s328_(X,"f") .

owl_DatatypeProperty_(X,"t"):-s329_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s329_(X,"f") .

s324_(X,"f");s326_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*"):-s323_(X,"t*") .

s330_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s331_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s330_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s331_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s330_(X,"t*") .

s332_(X,"t*"):-s331_(X,"t*") .
rdfs_Datatype_(X,"t"):-s332_(X,"t*") .
rdfs_Datatype_(X,"f"):-s332_(X,"f") .
s333_(X,"t*"):-s331_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s333_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s333_(X,"f") .
s332_(X,"f");s333_(X,"f"):-s331_(X,"f") .

s334_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"t*") .
s335_(X,"f"):-s334_(X,"t*") .
s335_(X,"t*"):-s334_(X,"f") .
rdfs_range_(X,@new(s335,X,rdfs_range,1..1),"t"):-choose(s335,X,rdfs_range,1) .
choose(s335,X,rdfs_range,1);choose(s335,X,rdfs_range,0):-s335_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s336_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s335_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s336_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s335_(X,"t*") .
s337_(X,"f"):-s336_(X,"t*") .
s337_(X,"t*"):-s336_(X,"f") .

s338_(X,"t*"):-s337_(X,"t*") .
rdfs_Datatype_(X,"t"):-s338_(X,"t*") .
rdfs_Datatype_(X,"f"):-s338_(X,"f") .
s339_(X,"t*"):-s337_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s339_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s339_(X,"f") .
s338_(X,"f");s339_(X,"f"):-s337_(X,"f") .

s330_(X,"f");s334_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*"):-s323_(X,"t*") .




s340_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*");s341_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f")} (C-0):-s340_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*")}=C,C>0 .
0 {s341_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t**")} 0:-s340_(X,"t*") .

s342_(X,"t*"):-s341_(X,"t*") .
rdfs_Datatype_(X,"t"):-s342_(X,"t*") .
rdfs_Datatype_(X,"f"):-s342_(X,"f") .
s343_(X,"t*"):-s341_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s343_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s343_(X,"f") .
s342_(X,"f");s343_(X,"f"):-s341_(X,"f") .

s344_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"t*") .
s345_(X,"f"):-s344_(X,"t*") .
s345_(X,"t*"):-s344_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,@new(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1..1),"t"):-choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1) .
choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,1);choose(s345,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st,0):-s345_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*");s346_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f")} (C-0):-s345_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t*")}=C,C>0 .
1 {s346_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t**")} 1:-s345_(X,"t*") .
s347_(X,"f"):-s346_(X,"t*") .
s347_(X,"t*"):-s346_(X,"f") .

s348_(X,"t*"):-s347_(X,"t*") .
rdfs_Datatype_(X,"t"):-s348_(X,"t*") .
rdfs_Datatype_(X,"f"):-s348_(X,"f") .
s349_(X,"t*"):-s347_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"f"):-s349_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16416_(X,"t*"):-s349_(X,"f") .
s348_(X,"f");s349_(X,"f"):-s347_(X,"f") .

s340_(X,"f");s344_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"f") .
s350_(X,"t*"):-s323_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"f"):-s350_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16444_(X,"t*"):-s350_(X,"f") .

s351_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s352_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s351_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s352_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s351_(X,"t*") .

s353_(X,"t*"):-s352_(X,"t*") .
owl_Class_(X,"t"):-s353_(X,"t*") .
owl_Class_(X,"f"):-s353_(X,"f") .
s354_(X,"t*"):-s352_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s354_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s354_(X,"f") .
s353_(X,"f");s354_(X,"f"):-s352_(X,"f") .

s355_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"t*") .
s356_(X,"f"):-s355_(X,"t*") .
s356_(X,"t*"):-s355_(X,"f") .
rdfs_range_(X,@new(s356,X,rdfs_range,1..1),"t"):-choose(s356,X,rdfs_range,1) .
choose(s356,X,rdfs_range,1);choose(s356,X,rdfs_range,0):-s356_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s357_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s356_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s357_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s356_(X,"t*") .
s358_(X,"f"):-s357_(X,"t*") .
s358_(X,"t*"):-s357_(X,"f") .

s359_(X,"t*"):-s358_(X,"t*") .
owl_Class_(X,"t"):-s359_(X,"t*") .
owl_Class_(X,"f"):-s359_(X,"f") .
s360_(X,"t*"):-s358_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s360_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s360_(X,"f") .
s359_(X,"f");s360_(X,"f"):-s358_(X,"f") .

s351_(X,"f");s355_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16445_(X,"f") .
s361_(X,"t*"):-s323_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"f"):-s361_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16442_(X,"t*"):-s361_(X,"f") .
s362_(X,"t*"):-s323_(X,"t*") .
owl_DatatypeProperty_(X,"t"):-s362_(X,"t*") .
owl_DatatypeProperty_(X,"f"):-s362_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16443_(X,"f");bnode_d010c93c2ea54b54bac743f51ae9ebd16446_(X,"f");s350_(X,"f");s361_(X,"f");s362_(X,"f"):-s323_(X,"f") .
s294_(X,"t*");s323_(X,"t*"):-s293_(X,"t*") .
s363_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"f"):-s363_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16430_(X,"t*"):-s363_(X,"f") .
s364_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"f"):-s364_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16432_(X,"t*"):-s364_(X,"f") .
s365_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*"):-s365_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f"):-s365_(X,"f") .

s366_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s367_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s366_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
0 {s367_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 0:-s366_(X,"t*") .

s368_(X,"t*"):-s367_(X,"t*") .
owl_Class_(X,"t"):-s368_(X,"t*") .
owl_Class_(X,"f"):-s368_(X,"f") .
s369_(X,"t*"):-s367_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s369_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s369_(X,"f") .
s368_(X,"f");s369_(X,"f"):-s367_(X,"f") .

s370_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"t*") .
s371_(X,"f"):-s370_(X,"t*") .
s371_(X,"t*"):-s370_(X,"f") .
rdfs_domain_(X,@new(s371,X,rdfs_domain,1..1),"t"):-choose(s371,X,rdfs_domain,1) .
choose(s371,X,rdfs_domain,1);choose(s371,X,rdfs_domain,0):-s371_(X,"t*") .
(C-0) {rdfs_domain_(X,Y,"f"):rdfs_domain_(X,Y,"t*");s372_(Y,"f"):rdfs_domain_(X,Y,"t*"),not rdfs_domain_(X,Y,"f")} (C-0):-s371_(X,"f"),#count {Y:rdfs_domain_(X,Y,"t*")}=C,C>0 .
1 {s372_(Y,"t*"):rdfs_domain_(X,Y,"t**")} 1:-s371_(X,"t*") .
s373_(X,"f"):-s372_(X,"t*") .
s373_(X,"t*"):-s372_(X,"f") .

s374_(X,"t*"):-s373_(X,"t*") .
owl_Class_(X,"t"):-s374_(X,"t*") .
owl_Class_(X,"f"):-s374_(X,"f") .
s375_(X,"t*"):-s373_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s375_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s375_(X,"f") .
s374_(X,"f");s375_(X,"f"):-s373_(X,"f") .

s366_(X,"f");s370_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16421_(X,"f") .
s376_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*"):-s376_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"f"):-s376_(X,"f") .

s377_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s378_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s377_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
0 {s378_(Y,"t*"):rdfs_range_(X,Y,"t**")} 0:-s377_(X,"t*") .


s379_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
s380_(X,"f"):-s379_(X,"t*") .
s380_(X,"t*"):-s379_(X,"f") .
rdfs_range_(X,@new(s380,X,rdfs_range,1..1),"t"):-choose(s380,X,rdfs_range,1) .
rdfs_range_(X,@new(s380,X,rdfs_range,1..2),"t"):-choose(s380,X,rdfs_range,2) .
choose(s380,X,rdfs_range,2);choose(s380,X,rdfs_range,1);choose(s380,X,rdfs_range,0):-s380_(X,"t*") .
(C-1) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s381_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-1):-s380_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>1 .
2 {s381_(Y,"t*"):rdfs_range_(X,Y,"t**")} 2:-s380_(X,"t*") .


s382_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"t*") .
s383_(X,"f"):-s382_(X,"t*") .
s383_(X,"t*"):-s382_(X,"f") .
rdfs_range_(X,@new(s383,X,rdfs_range,1..1),"t"):-choose(s383,X,rdfs_range,1) .
choose(s383,X,rdfs_range,1);choose(s383,X,rdfs_range,0):-s383_(X,"t*") .
(C-0) {rdfs_range_(X,Y,"f"):rdfs_range_(X,Y,"t*");s384_(Y,"f"):rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f")} (C-0):-s383_(X,"f"),#count {Y:rdfs_range_(X,Y,"t*")}=C,C>0 .
1 {s384_(Y,"t*"):rdfs_range_(X,Y,"t**")} 1:-s383_(X,"t*") .
s385_(X,"f"):-s384_(X,"t*") .
s385_(X,"t*"):-s384_(X,"f") .


s377_(X,"f");s379_(X,"f");s382_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16428_(X,"f") .
s386_(X,"t*"):-d_PropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*"):-s386_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"f"):-s386_(X,"f") .




s387_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*");s388_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f")} (C-0):-s387_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*")}=C,C>0 .
0 {s388_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t**")} 0:-s387_(X,"t*") .

s389_(X,"t*"):-s388_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s389_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s389_(X,"f") .
s390_(X,"t*"):-s388_(X,"t*") .
owl_Class_(X,"t"):-s390_(X,"t*") .
owl_Class_(X,"f"):-s390_(X,"f") .
s389_(X,"f");s390_(X,"f"):-s388_(X,"f") .

s391_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"t*") .
s392_(X,"f"):-s391_(X,"t*") .
s392_(X,"t*"):-s391_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,@new(s392,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1..1),"t"):-choose(s392,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1) .
choose(s392,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,1);choose(s392,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st,0):-s392_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*");s393_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f")} (C-0):-s392_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t*")}=C,C>0 .
1 {s393_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t**")} 1:-s392_(X,"t*") .
s394_(X,"f"):-s393_(X,"t*") .
s394_(X,"t*"):-s393_(X,"f") .

s395_(X,"t*"):-s394_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s395_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s395_(X,"f") .
s396_(X,"t*"):-s394_(X,"t*") .
owl_Class_(X,"t"):-s396_(X,"t*") .
owl_Class_(X,"f"):-s396_(X,"f") .
s395_(X,"f");s396_(X,"f"):-s394_(X,"f") .

s387_(X,"f");s391_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_(X,"f") .
s49_(X,"f");s50_(X,"f");s51_(X,"f");s52_(X,"f");s62_(X,"f");s63_(X,"f");s73_(X,"f");s84_(X,"f");s95_(X,"f");s105_(X,"f");s106_(X,"f");s107_(X,"f");s117_(X,"f");s127_(X,"f");s197_(X,"f");s198_(X,"f");s268_(X,"f");s269_(X,"f");s270_(X,"f");s281_(X,"f");s282_(X,"f");s293_(X,"f");s363_(X,"f");s364_(X,"f");s365_(X,"f");s376_(X,"f");s386_(X,"f"):-d_PropertyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16453_(X,"t*"):-d_FunctionalPropertyShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16453_(X,"f"):-d_FunctionalPropertyShape_(X,"f") .

% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16453
s397_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16453_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*");s398_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"f")} (C-0):-s397_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(Y,X,"f"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"f") .
0 {s398_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t**")} 0:-s397_(X,"t*") .

owl_FunctionalProperty_(X,"t"):-s398_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s398_(X,"f") .

% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16453
s399_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16453_(X,"t*") .
s400_(X,"f"):-s399_(X,"t*") .
s400_(X,"t*"):-s399_(X,"f") .
rdfs_subPropertyOf_inv_(X,@new(s400,X,rdfs_subPropertyOf_inv_,1..1),"t"):-choose(s400,X,rdfs_subPropertyOf,1) .
choose(s400,X,rdfs_subPropertyOf,1);choose(s400,X,rdfs_subPropertyOf,0):-s400_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*");s401_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"f")} (C-0):-s400_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*")}=C,C>0 .
1 {s401_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t**")} 1:-s400_(X,"t*") .
s402_(X,"f"):-s401_(X,"t*") .
s402_(X,"t*"):-s401_(X,"f") .

owl_FunctionalProperty_(X,"t"):-s402_(X,"t*") .
owl_FunctionalProperty_(X,"f"):-s402_(X,"f") .

s397_(X,"f");s399_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16453_(X,"f") .
s403_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,"t*"):-s403_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,"f"):-s403_(X,"f") .


s404_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,"t*") .
rdfs_domain_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f"):-s404_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t");rdfs_domain_(X,Y,"f"):-s404_(X,"t*"),rdfs_domain_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*");rdfs_domain_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*"),rdfs_domain_(X,Y,"t*")} 1:-s404_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd16472
s405_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,@new(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,1..1),"t"):-choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,1) .
choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,1);choose(s405,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,0):-s405_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*");s406_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f")} (C-0):-s405_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,X1,"f") .
1 {s406_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t**")} 1:-s405_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16472
s407_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,"t*") .
s408_(X,"f"):-s407_(X,"t*") .
s408_(X,"t*"):-s407_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,@new(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,1..1),"t"):-choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,1) .
choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,1);choose(s408,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st,0):-s408_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*");s409_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f")} (C-0):-s408_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t*")}=C,C>0 .
1 {s409_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t**")} 1:-s408_(X,"t*") .
s410_(X,"f"):-s409_(X,"t*") .
s410_(X,"t*"):-s409_(X,"f") .


s404_(X,"f");s405_(X,"f");s407_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_(X,"f") .
s411_(X,"f"):-d_DomainConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,"t*"):-s411_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,"f"):-s411_(X,"f") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16467
s412_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t") .
0 {rdfs_domain_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*");s413_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f")} (C-0):-s412_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_domain_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_domain_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,X1,"f") .
0 {s413_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t**")} 0:-s412_(X,"t*") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16467
s414_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,"t*") .
s415_(X,"f"):-s414_(X,"t*") .
s415_(X,"t*"):-s414_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,@new(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,1..1),"t"):-choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,1) .
choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,1);choose(s415,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,0):-s415_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*");s416_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f")} (C-0):-s415_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*")}=C,C>0 .
1 {s416_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t**")} 1:-s415_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16467
s417_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,"t*") .
s418_(X,"f"):-s417_(X,"t*") .
s418_(X,"t*"):-s417_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,@new(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,1..1),"t"):-choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,1) .
choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,1);choose(s418,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st,0):-s418_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*");s419_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f")} (C-0):-s418_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t*")}=C,C>0 .
1 {s419_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t**")} 1:-s418_(X,"t*") .
s420_(X,"f"):-s419_(X,"t*") .
s420_(X,"t*"):-s419_(X,"f") .


s412_(X,"f");s414_(X,"f");s417_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_(X,"f") .
s403_(X,"t*");s411_(X,"t*"):-d_DomainConsistencyShape_(X,"t*") .
s421_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,"t*"):-s421_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,"f"):-s421_(X,"f") .


% sh:maxCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16477
s422_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,"t*") .
s423_(X,"f"):-s422_(X,"t*") .
s423_(X,"t*"):-s422_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,@new(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,1..1),"t"):-choose(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,1) .
choose(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,1);choose(s423,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,0):-s423_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*");s424_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f")} (C-0):-s423_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,X1,"f") .
1 {s424_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t**")} 1:-s423_(X,"t*") .


% sh:minCount 0 for bnode_d010c93c2ea54b54bac743f51ae9ebd16477
s425_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*");s426_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f")} (C-0):-s425_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*")}=C,C>0 .
0 {s426_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t**")} 0:-s425_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16477
s427_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,"t*") .
s428_(X,"f"):-s427_(X,"t*") .
s428_(X,"t*"):-s427_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,@new(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,1..1),"t"):-choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,1) .
choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,1);choose(s428,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st,0):-s428_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*");s429_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f")} (C-0):-s428_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t*")}=C,C>0 .
1 {s429_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t**")} 1:-s428_(X,"t*") .
s430_(X,"f"):-s429_(X,"t*") .
s430_(X,"t*"):-s429_(X,"f") .


s422_(X,"f");s425_(X,"f");s427_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_(X,"f") .
s431_(X,"f"):-d_RangeConsistencyShape_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,"t*"):-s431_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,"f"):-s431_(X,"f") .


s432_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,"t*") .
rdfs_range_(X,Y,"t");bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f"):-s432_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t");rdfs_range_(X,Y,"f"):-s432_(X,"t*"),rdfs_range_(X,Y,"t*") .
1 {bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*");rdfs_range_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*"),rdfs_range_(X,Y,"t*")} 1:-s432_(X,"f") .

% sh:minCount 1 for bnode_d010c93c2ea54b54bac743f51ae9ebd16482
s433_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,@new(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,1..1),"t"):-choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,1) .
choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,1);choose(s433,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,0):-s433_(X,"t*") .
choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,X,rdfs_subPropertyOf,1);choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,X,rdfs_subPropertyOf,0):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t") .
rdfs_subPropertyOf_(X,@new(bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,X,rdfs_subPropertyOf,1),"t"):-choose(bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,X,rdfs_subPropertyOf,1),bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t") .
0 {rdfs_range_(X0,Y,"t")} 1:-rdfs_subPropertyOf_(X,X0,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*");s434_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f")} (C-0):-s433_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*")}=C,C>0 .
rdfs_subPropertyOf_(X,X0,"f");rdfs_range_(X0,X1,"f"):-rdfs_subPropertyOf_(X,X0,"t*"),rdfs_range_(X0,X1,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,X1,"f") .
1 {s434_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t**")} 1:-s433_(X,"t*") .


% universal for bnode_d010c93c2ea54b54bac743f51ae9ebd16482
s435_(X,"t*"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,"t*") .
s436_(X,"f"):-s435_(X,"t*") .
s436_(X,"t*"):-s435_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,@new(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,1..1),"t"):-choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,1) .
choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,1);choose(s436,X,bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st,0):-s436_(X,"t*") .
(C-0) {bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*");s437_(Y,"f"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f")} (C-0):-s436_(X,"f"),#count {Y:bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t*")}=C,C>0 .
1 {s437_(Y,"t*"):bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t**")} 1:-s436_(X,"t*") .
s438_(X,"f"):-s437_(X,"t*") .
s438_(X,"t*"):-s437_(X,"f") .


s432_(X,"f");s433_(X,"f");s435_(X,"f"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_(X,"f") .
s421_(X,"t*");s431_(X,"t*"):-d_RangeConsistencyShape_(X,"t*") .
s439_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s439_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s439_(X,"f") .
s440_(X,"t*"):-d_ClassShape_(X,"t*") .
owl_Class_(X,"t"):-s440_(X,"t*") .
owl_Class_(X,"f"):-s440_(X,"f") .
s441_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s441_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s441_(X,"f") .
s442_(X,"t*"):-d_ClassShape_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"f"):-s442_(X,"t*") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16415_(X,"t*"):-s442_(X,"f") .
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
bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
rdfs_range_(X,Y,"t**"):-rdfs_range_(X,Y,"t*"),not rdfs_range_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16458_st_(X,Y,"t**"):-owl_inverseOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16458_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16458_st_(X,Y,"f") .
owl_ObjectProperty_(X,"t**"):-owl_ObjectProperty_(X,"t*"),not owl_ObjectProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,X1,"f"),owl_inverseOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
dc_contributor_(X,Y,"t**"):-dc_contributor_(X,Y,"t*"),not dc_contributor_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16485_st_(X,Y,"t**"):-dc_contributor_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16485_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16485_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16455_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16455_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16455_st_(X,Y,"f") .
rdfs_subPropertyOf_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t*"),not rdfs_subPropertyOf_(X,Y,"f") .
rdfs_subPropertyOf_inv_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t*"),not rdfs_subPropertyOf_inv_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16456_st_(X,Y,"f") .
owl_SymmetricProperty_(X,"t**"):-owl_SymmetricProperty_(X,"t*"),not owl_SymmetricProperty_(X,"f") .
rdfs_Datatype_(X,"t**"):-rdfs_Datatype_(X,"t*"),not rdfs_Datatype_(X,"f") .
owl_OntologyProperty_(X,"t**"):-owl_OntologyProperty_(X,"t*"),not owl_OntologyProperty_(X,"f") .
owl_AnnotationProperty_(X,"t**"):-owl_AnnotationProperty_(X,"t*"),not owl_AnnotationProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16421_st_(X,Y,"t**"):-rdfs_domain_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16421_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16421_st_(X,Y,"f") .
owl_Class_(X,"t**"):-owl_Class_(X,"t*"),not owl_Class_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16428_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16428_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16428_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16441_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16441_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16441_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16434_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16434_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16434_st_(X,Y,"f") .
owl_unionOf_(X,Y,"t**"):-owl_unionOf_(X,Y,"t*"),not owl_unionOf_(X,Y,"f") .
rdf_rest_(X,Y,"t**"):-rdf_rest_(X,Y,"t*"),not rdf_rest_(X,Y,"f") .
rdf_rest_star_(X,Y,"t**"):-rdf_rest_star_(X,Y,"t*"),not rdf_rest_star_(X,Y,"f") .
rdf_first_(X,Y,"t**"):-rdf_first_(X,Y,"t*"),not rdf_first_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
owl_DatatypeProperty_(X,"t**"):-owl_DatatypeProperty_(X,"t*"),not owl_DatatypeProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16452_st_(X,Y,"t**"):-rdfs_subPropertyOf_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16452_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16452_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16443_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16443_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16443_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,X3,"f"),rdfs_range_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16445_st_(X,Y,"t**"):-rdfs_range_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16445_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16445_st_(X,Y,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,X3,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,X3,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,X3,"f"),rdfs_domain_(X,X0,"t**"),owl_unionOf_(X0,X1,"t**"),rdf_rest_star_(X1,X2,"t**"),rdf_first_(X2,X3,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t**"):-rdfs_subPropertyOf_inv_(X,Y,"t**"),bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16453_st_(X,Y,"f") .
owl_FunctionalProperty_(X,"t**"):-owl_FunctionalProperty_(X,"t*"),not owl_FunctionalProperty_(X,"f") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_domain_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .
bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,X1,"t**"):-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,X1,"t*"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,X1,"f"),rdfs_subPropertyOf_(X,X0,"t**"),rdfs_range_(X0,X1,"t**") .

% Program Constraints

:-owl_inverseOf_(X,Y,"t"),owl_inverseOf_(X,Y,"f") .
:-rdfs_domain_(X,Y,"t"),rdfs_domain_(X,Y,"f") .
:-s1_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t**") .
:-s1_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-rdfs_range_(X,Y,"t"),rdfs_range_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16459_st_(X,Y,"f") .
:-s3_(X,"f") .
:-s7_(X,"f") .
:-owl_ObjectProperty_(X,"t"),owl_ObjectProperty_(X,"f") .
:-s17_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t**") .
:-s17_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16462_st_(X,Y,"f") .
:-s19_(X,"f") .
:-s23_(X,"f") .
:-dc_contributor_(X,Y,"t"),dc_contributor_(X,Y,"f") .
:-s26_(X,"f") .
:-s28_(X,"f") .
:-s32_(X,"f") .
:-s35_(X,"t*"),rdfs_range_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-s35_(X,"t*"),rdfs_domain_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-s37_(X,"f") .
:-s41_(X,"f") .
:-rdfs_subPropertyOf_(X,Y,"t"),rdfs_subPropertyOf_(X,Y,"f") .
:-rdfs_subPropertyOf_inv_(X,Y,"t"),rdfs_subPropertyOf_inv_(X,Y,"f") .
:-owl_SymmetricProperty_(X,"t"),owl_SymmetricProperty_(X,"f") .
:-rdfs_Datatype_(X,"t"),rdfs_Datatype_(X,"f") .
:-owl_OntologyProperty_(X,"t"),owl_OntologyProperty_(X,"f") .
:-owl_AnnotationProperty_(X,"t"),owl_AnnotationProperty_(X,"f") .
:-s54_(X,"f") .
:-s57_(X,"f") .
:-s61_(X,"f") .
:-owl_Class_(X,"t"),owl_Class_(X,"f") .
:-s65_(X,"f") .
:-s68_(X,"f") .
:-s72_(X,"f") .
:-s97_(X,"f") .
:-s100_(X,"f") .
:-s104_(X,"f") .
:-s109_(X,"f") .
:-s112_(X,"f") .
:-s116_(X,"f") .
:-s119_(X,"f") .
:-s122_(X,"f") .
:-s126_(X,"f") .
:-owl_unionOf_(X,Y,"t"),owl_unionOf_(X,Y,"f") .
:-rdf_rest_(X,Y,"t"),rdf_rest_(X,Y,"f") .
:-rdf_rest_star_(X,Y,"t"),rdf_rest_star_(X,Y,"f") .
:-rdf_rest_star_(X,X,"f") .
:-rdf_first_(X,Y,"t"),rdf_first_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16435_st_(X,Y,"f") .
:-owl_DatatypeProperty_(X,"t"),owl_DatatypeProperty_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16446_st_(X,Y,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16422_st_(X,Y,"f") .
:-s378_(X,"f") .
:-s381_(X,"f") .
:-s385_(X,"f") .
:-owl_FunctionalProperty_(X,"t"),owl_FunctionalProperty_(X,"f") .
:-s404_(X,"t*"),rdfs_domain_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t**") .
:-s404_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t**"),not rdfs_domain_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16472_st_(X,Y,"f") .
:-s406_(X,"f") .
:-s410_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16467_st_(X,Y,"f") .
:-s413_(X,"f") .
:-s416_(X,"f") .
:-s420_(X,"f") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16477_st_(X,Y,"f") .
:-s424_(X,"f") .
:-s426_(X,"f") .
:-s430_(X,"f") .
:-s432_(X,"t*"),rdfs_range_(X,Y,"t**"),not bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t**") .
:-s432_(X,"t*"),bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t**"),not rdfs_range_(X,Y,"t**") .
:-bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"t"),bnode_d010c93c2ea54b54bac743f51ae9ebd16482_st_(X,Y,"f") .
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
add(rdfs_Datatype(X)):-rdfs_Datatype_(X,"t**"),not rdfs_Datatype(X) .
del(rdfs_Datatype(X)):-rdfs_Datatype_(X,"f"),rdfs_Datatype(X) .
add(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"t**"),not owl_OntologyProperty(X) .
del(owl_OntologyProperty(X)):-owl_OntologyProperty_(X,"f"),owl_OntologyProperty(X) .
add(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"t**"),not owl_AnnotationProperty(X) .
del(owl_AnnotationProperty(X)):-owl_AnnotationProperty_(X,"f"),owl_AnnotationProperty(X) .
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
:-del(rdf_first(X,Y)) .
:-add(rdf_rest(X,Y)) .
:-add(rdf_first(X,Y)) .
:-del(owl_unionOf(X,Y)) .
:-del(rdf_rest(X,Y)) .
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
