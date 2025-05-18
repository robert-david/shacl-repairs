
% Graph Data

ex_Person("ex_Anon") .
ex_firstName("ex_Anon","Anon") .
xsd_string("Anon") .
rdfs_Class("ex_Issue") .
sh_NodeShape("ex_Issue") .
rdfs_label("ex_Issue","Issue") .
xsd_string("Issue") .
rdfs_subClassOf("ex_Issue","rdfs_Resource") .
sh_property("ex_Issue","ex_Issue-assignedTo") .
sh_property("ex_Issue","ex_Issue-submittedBy") .
sh_path("ex_Issue-assignedTo","ex_assignedTo") .
sh_class("ex_Issue-assignedTo","ex_Person") .
sh_node("ex_Issue-assignedTo","bnode_0465bff3129e4f3db89e6d0321ce7388494") .
rdfs_comment("bnode_0465bff3129e4f3db89e6d0321ce7388494","All assignees must have an email and a last name.") .
xsd_string("All assignees must have an email and a last name.") .
sh_property("bnode_0465bff3129e4f3db89e6d0321ce7388494","bnode_0465bff3129e4f3db89e6d0321ce7388495") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388495","ex_email") .
sh_maxCount("bnode_0465bff3129e4f3db89e6d0321ce7388495","1") .
xsd_integer("1") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce7388495","1") .
sh_property("bnode_0465bff3129e4f3db89e6d0321ce7388494","bnode_0465bff3129e4f3db89e6d0321ce7388496") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388496","ex_lastName") .
sh_maxCount("bnode_0465bff3129e4f3db89e6d0321ce7388496","1") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce7388496","1") .
sh_path("ex_Issue-submittedBy","ex_submittedBy") .
sh_class("ex_Issue-submittedBy","ex_Person") .
sh_minCount("ex_Issue-submittedBy","1") .
ex_Issue("ex_Issue_1") .
ex_assignedTo("ex_Issue_1","ex_Anon") .
ex_submittedBy("ex_Issue_1","ex_Anon") .
rdfs_label("ex_Issue_1","Issue 1") .
xsd_string("Issue 1") .
ex_Issue("ex_Issue_2") .
ex_assignedTo("ex_Issue_2","ex_JohnDoeWithEmail") .
ex_submittedBy("ex_Issue_2","ex_Anon") .
rdfs_label("ex_Issue_2","Issue 2") .
xsd_string("Issue 2") .
ex_Person("ex_JohnDoeWithEmail") .
ex_email("ex_JohnDoeWithEmail","john@doe.com") .
xsd_string("john@doe.com") .
ex_firstName("ex_JohnDoeWithEmail","John") .
xsd_string("John") .
ex_lastName("ex_JohnDoeWithEmail","Doe") .
xsd_string("Doe") .
rdfs_Class("ex_Person") .
sh_NodeShape("ex_Person") .
rdfs_label("ex_Person","Person") .
xsd_string("Person") .
rdfs_subClassOf("ex_Person","rdfs_Resource") .
sh_property("ex_Person","bnode_0465bff3129e4f3db89e6d0321ce7388497") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388497","ex_email") .
ex_datatype("bnode_0465bff3129e4f3db89e6d0321ce7388497","xsd_string") .
rdfs_label("bnode_0465bff3129e4f3db89e6d0321ce7388497","email") .
xsd_string("email") .
sh_property("ex_Person","bnode_0465bff3129e4f3db89e6d0321ce7388498") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388498","ex_firstName") .
rdfs_label("bnode_0465bff3129e4f3db89e6d0321ce7388498","first name") .
xsd_string("first name") .
sh_datatype("bnode_0465bff3129e4f3db89e6d0321ce7388498","xsd_string") .
sh_maxCount("bnode_0465bff3129e4f3db89e6d0321ce7388498","1") .
sh_minCount("bnode_0465bff3129e4f3db89e6d0321ce7388498","1") .
sh_property("ex_Person","bnode_0465bff3129e4f3db89e6d0321ce7388499") .
sh_path("bnode_0465bff3129e4f3db89e6d0321ce7388499","ex_lastName") .
rdfs_label("bnode_0465bff3129e4f3db89e6d0321ce7388499","last name") .
xsd_string("last name") .
sh_datatype("bnode_0465bff3129e4f3db89e6d0321ce7388499","xsd_string") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_0465bff3129e4f3db89e6d0321ce7388500") .
rdf_first("bnode_0465bff3129e4f3db89e6d0321ce7388500","http://repairs.shacl.org/node-001") .
rdf_rest("bnode_0465bff3129e4f3db89e6d0321ce7388500","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node-001") .
rdfs_label("http://repairs.shacl.org/node-001","Test of sh:node at property shape 001") .
xsd_string("Test of sh:node at property shape 001") .
mf_action("http://repairs.shacl.org/node-001","bnode_0465bff3129e4f3db89e6d0321ce7388501") .
sht_dataGraph("bnode_0465bff3129e4f3db89e6d0321ce7388501","http://repairs.shacl.org") .
sht_shapesGraph("bnode_0465bff3129e4f3db89e6d0321ce7388501","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node-001","bnode_0465bff3129e4f3db89e6d0321ce7388502") .
sh_ValidationReport("bnode_0465bff3129e4f3db89e6d0321ce7388502") .
sh_conforms("bnode_0465bff3129e4f3db89e6d0321ce7388502","false") .
xsd_boolean("false") .
sh_result("bnode_0465bff3129e4f3db89e6d0321ce7388502","bnode_0465bff3129e4f3db89e6d0321ce7388503") .
sh_ValidationResult("bnode_0465bff3129e4f3db89e6d0321ce7388503") .
sh_focusNode("bnode_0465bff3129e4f3db89e6d0321ce7388503","ex_Issue_1") .
sh_resultPath("bnode_0465bff3129e4f3db89e6d0321ce7388503","ex_assignedTo") .
sh_resultSeverity("bnode_0465bff3129e4f3db89e6d0321ce7388503","sh_Violation") .
sh_sourceConstraintComponent("bnode_0465bff3129e4f3db89e6d0321ce7388503","sh_NodeConstraintComponent") .
sh_sourceShape("bnode_0465bff3129e4f3db89e6d0321ce7388503","ex_Issue-assignedTo") .
sh_value("bnode_0465bff3129e4f3db89e6d0321ce7388503","ex_Anon") .
mf_status("http://repairs.shacl.org/node-001","sht_approved") .
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

targetNode("ex_Anon",ex_Person) .
targetNode("ex_Issue_1",ex_Issue) .
targetNode("ex_JohnDoeWithEmail",ex_Person) .
targetNode("ex_Issue_2",ex_Issue) .

% Constants


% Repair Targets

actualTarget(X,S);skipTarget(X,S):-targetNode(X,S) .
ex_Person_("ex_Anon","t*"):-actualTarget("ex_Anon",ex_Person) .
ex_Issue_("ex_Issue_1","t*"):-actualTarget("ex_Issue_1",ex_Issue) .
ex_Person_("ex_JohnDoeWithEmail","t*"):-actualTarget("ex_JohnDoeWithEmail",ex_Person) .
ex_Issue_("ex_Issue_2","t*"):-actualTarget("ex_Issue_2",ex_Issue) .

% Annotation Rules

ex_firstName_(X,Y,"t*"):-ex_firstName(X,Y) .
ex_firstName_(X,Y,"t*"):-ex_firstName_(X,Y,"t") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,_),ex_firstName_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .
ex_lastName_(X,Y,"t*"):-ex_lastName(X,Y) .
ex_lastName_(X,Y,"t*"):-ex_lastName_(X,Y,"t") .
bnode_0465bff3129e4f3db89e6d0321ce7388509_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388509_(X,_),ex_lastName_(X,Y,"t*") .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy(X,Y) .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy_(X,Y,"t") .
ex_Issue__submittedBy_st_(X,Y,"t*"):-ex_Issue__submittedBy_(X,_),ex_submittedBy_(X,Y,"t*") .
ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo(X,Y) .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo_(X,Y,"t") .
ex_Issue__assignedTo_st_(X,Y,"t*"):-ex_Issue__assignedTo_(X,_),ex_assignedTo_(X,Y,"t*") .
ex_email_(X,Y,"t*"):-ex_email(X,Y) .
ex_email_(X,Y,"t*"):-ex_email_(X,Y,"t") .
bnode_0465bff3129e4f3db89e6d0321ce7388505_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,_),ex_email_(X,Y,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388506_st_(X,Y,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,_),ex_lastName_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_Person_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*"):-s0_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"f"):-s0_(X,"f") .

% sh:minCount 0 for bnode_0465bff3129e4f3db89e6d0321ce7388508
s1_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s1_(X,"t*") .

xsd_string_(X,"t"):-s2_(X,"t*") .
xsd_string_(X,"f"):-s2_(X,"f") .

% universal for bnode_0465bff3129e4f3db89e6d0321ce7388508
s3_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .

xsd_string_(X,"t"):-s6_(X,"t*") .
xsd_string_(X,"f"):-s6_(X,"f") .

s1_(X,"f");s3_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"f") .
s7_(X,"t*"):-ex_Person_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*"):-s7_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"f"):-s7_(X,"f") .

% sh:minCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388508
s8_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
ex_firstName_(X,@new(s8,X,ex_firstName,1..1),"t"):-choose(s8,X,ex_firstName,1) .
choose(s8,X,ex_firstName,1);choose(s8,X,ex_firstName,0):-s8_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s9_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s9_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s8_(X,"t*") .


s10_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_firstName_(X,@new(s11,X,ex_firstName,1..1),"t"):-choose(s11,X,ex_firstName,1) .
choose(s11,X,ex_firstName,1);choose(s11,X,ex_firstName,0):-s11_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s12_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .


s8_(X,"f");s10_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"f") .
s14_(X,"t*"):-ex_Person_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388509_(X,"t*"):-s14_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388509_(X,"f"):-s14_(X,"f") .

% sh:minCount 0 for bnode_0465bff3129e4f3db89e6d0321ce7388509
s15_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388509_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s16_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
0 {s16_(Y,"t*"):ex_lastName_(X,Y,"t**")} 0:-s15_(X,"t*") .

xsd_string_(X,"t"):-s16_(X,"t*") .
xsd_string_(X,"f"):-s16_(X,"f") .

% universal for bnode_0465bff3129e4f3db89e6d0321ce7388509
s17_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388509_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
ex_lastName_(X,@new(s18,X,ex_lastName,1..1),"t"):-choose(s18,X,ex_lastName,1) .
choose(s18,X,ex_lastName,1);choose(s18,X,ex_lastName,0):-s18_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s19_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s19_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s18_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .

xsd_string_(X,"t"):-s20_(X,"t*") .
xsd_string_(X,"f"):-s20_(X,"f") .

s15_(X,"f");s17_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388509_(X,"f") .
s21_(X,"t*"):-ex_Person_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*"):-s21_(X,"t*") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"f"):-s21_(X,"f") .

s22_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s23_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s22_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s23_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s22_(X,"t*") .


% sh:maxCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388508
s24_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
s25_(X,"f"):-s24_(X,"t*") .
s25_(X,"t*"):-s24_(X,"f") .
ex_firstName_(X,@new(s25,X,ex_firstName,1..1),"t"):-choose(s25,X,ex_firstName,1) .
ex_firstName_(X,@new(s25,X,ex_firstName,1..2),"t"):-choose(s25,X,ex_firstName,2) .
choose(s25,X,ex_firstName,2);choose(s25,X,ex_firstName,1);choose(s25,X,ex_firstName,0):-s25_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s26_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s25_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s26_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s25_(X,"t*") .


s27_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
ex_firstName_(X,@new(s28,X,ex_firstName,1..1),"t"):-choose(s28,X,ex_firstName,1) .
choose(s28,X,ex_firstName,1);choose(s28,X,ex_firstName,0):-s28_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s29_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s29_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .


s22_(X,"f");s24_(X,"f");s27_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388508_(X,"f") .
s0_(X,"f");s7_(X,"f");s14_(X,"f");s21_(X,"f"):-ex_Person_(X,"f") .
s31_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue__submittedBy_(X,"t*"):-s31_(X,"t*") .
ex_Issue__submittedBy_(X,"f"):-s31_(X,"f") .

% sh:minCount 0 for ex_Issue__submittedBy
s32_(X,"t*"):-ex_Issue__submittedBy_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s33_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s32_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
ex_submittedBy_(X,Y,"f"):-ex_submittedBy_(X,Y,"t*"),ex_submittedBy_(X,Y,"f") .
0 {s33_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 0:-s32_(X,"t*") .

ex_Person_(X,"t"):-s33_(X,"t*") .
ex_Person_(X,"f"):-s33_(X,"f") .

% universal for ex_Issue__submittedBy
s34_(X,"t*"):-ex_Issue__submittedBy_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .
ex_submittedBy_(X,@new(s35,X,ex_submittedBy,1..1),"t"):-choose(s35,X,ex_submittedBy,1) .
choose(s35,X,ex_submittedBy,1);choose(s35,X,ex_submittedBy,0):-s35_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s36_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s36_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s35_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .

ex_Person_(X,"t"):-s37_(X,"t*") .
ex_Person_(X,"f"):-s37_(X,"f") .

s32_(X,"f");s34_(X,"f"):-ex_Issue__submittedBy_(X,"f") .
s38_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue__assignedTo_(X,"t*"):-s38_(X,"t*") .
ex_Issue__assignedTo_(X,"f"):-s38_(X,"f") .

% sh:minCount 0 for ex_Issue__assignedTo
s39_(X,"t*"):-ex_Issue__assignedTo_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s40_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
ex_assignedTo_(X,Y,"f"):-ex_assignedTo_(X,Y,"t*"),ex_assignedTo_(X,Y,"f") .
0 {s40_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s39_(X,"t*") .

bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*"):-s40_(X,"t*") .

% sh:minCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388505
s41_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*") .
ex_email_(X,@new(s41,X,ex_email,1..1),"t"):-choose(s41,X,ex_email,1) .
choose(s41,X,ex_email,1);choose(s41,X,ex_email,0):-s41_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s42_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s41_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
ex_email_(X,Y,"f"):-ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
1 {s42_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s41_(X,"t*") .


% sh:maxCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388505
s43_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
ex_email_(X,@new(s44,X,ex_email,1..1),"t"):-choose(s44,X,ex_email,1) .
ex_email_(X,@new(s44,X,ex_email,1..2),"t"):-choose(s44,X,ex_email,2) .
choose(s44,X,ex_email,2);choose(s44,X,ex_email,1);choose(s44,X,ex_email,0):-s44_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s45_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s44_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
2 {s45_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s44_(X,"t*") .


% universal for bnode_0465bff3129e4f3db89e6d0321ce7388505
s46_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*") .
s47_(X,"f"):-s46_(X,"t*") .
s47_(X,"t*"):-s46_(X,"f") .
ex_email_(X,@new(s47,X,ex_email,1..1),"t"):-choose(s47,X,ex_email,1) .
choose(s47,X,ex_email,1);choose(s47,X,ex_email,0):-s47_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s48_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s47_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s48_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s47_(X,"t*") .
s49_(X,"f"):-s48_(X,"t*") .
s49_(X,"t*"):-s48_(X,"f") .


s41_(X,"f");s43_(X,"f");s46_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*"):-s40_(X,"t*") .

% sh:maxCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388506
s50_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*") .
s51_(X,"f"):-s50_(X,"t*") .
s51_(X,"t*"):-s50_(X,"f") .
ex_lastName_(X,@new(s51,X,ex_lastName,1..1),"t"):-choose(s51,X,ex_lastName,1) .
ex_lastName_(X,@new(s51,X,ex_lastName,1..2),"t"):-choose(s51,X,ex_lastName,2) .
choose(s51,X,ex_lastName,2);choose(s51,X,ex_lastName,1);choose(s51,X,ex_lastName,0):-s51_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s52_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s51_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
2 {s52_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s51_(X,"t*") .


% sh:minCount 1 for bnode_0465bff3129e4f3db89e6d0321ce7388506
s53_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*") .
ex_lastName_(X,@new(s53,X,ex_lastName,1..1),"t"):-choose(s53,X,ex_lastName,1) .
choose(s53,X,ex_lastName,1);choose(s53,X,ex_lastName,0):-s53_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s54_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s54_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s53_(X,"t*") .


% universal for bnode_0465bff3129e4f3db89e6d0321ce7388506
s55_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
ex_lastName_(X,@new(s56,X,ex_lastName,1..1),"t"):-choose(s56,X,ex_lastName,1) .
choose(s56,X,ex_lastName,1);choose(s56,X,ex_lastName,0):-s56_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s57_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s56_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s57_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s56_(X,"t*") .
s58_(X,"f"):-s57_(X,"t*") .
s58_(X,"t*"):-s57_(X,"f") .


s50_(X,"f");s53_(X,"f");s55_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"f");bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"f"):-s40_(X,"f") .

% universal for ex_Issue__assignedTo
s59_(X,"t*"):-ex_Issue__assignedTo_(X,"t*") .
s60_(X,"f"):-s59_(X,"t*") .
s60_(X,"t*"):-s59_(X,"f") .
ex_assignedTo_(X,@new(s60,X,ex_assignedTo,1..1),"t"):-choose(s60,X,ex_assignedTo,1) .
choose(s60,X,ex_assignedTo,1);choose(s60,X,ex_assignedTo,0):-s60_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s61_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s60_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
1 {s61_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s60_(X,"t*") .
s62_(X,"f"):-s61_(X,"t*") .
s62_(X,"t*"):-s61_(X,"f") .

bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*"):-s62_(X,"t*") .

s63_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*") .
ex_email_(X,@new(s63,X,ex_email,1..1),"t"):-choose(s63,X,ex_email,1) .
choose(s63,X,ex_email,1);choose(s63,X,ex_email,0):-s63_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s64_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s63_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s64_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s63_(X,"t*") .


s65_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*") .
s66_(X,"f"):-s65_(X,"t*") .
s66_(X,"t*"):-s65_(X,"f") .
ex_email_(X,@new(s66,X,ex_email,1..1),"t"):-choose(s66,X,ex_email,1) .
ex_email_(X,@new(s66,X,ex_email,1..2),"t"):-choose(s66,X,ex_email,2) .
choose(s66,X,ex_email,2);choose(s66,X,ex_email,1);choose(s66,X,ex_email,0):-s66_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s67_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s66_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
2 {s67_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s66_(X,"t*") .


s68_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .
ex_email_(X,@new(s69,X,ex_email,1..1),"t"):-choose(s69,X,ex_email,1) .
choose(s69,X,ex_email,1);choose(s69,X,ex_email,0):-s69_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s70_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s69_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s70_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s69_(X,"t*") .
s71_(X,"f"):-s70_(X,"t*") .
s71_(X,"t*"):-s70_(X,"f") .


s63_(X,"f");s65_(X,"f");s68_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*"):-s62_(X,"t*") .

s72_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*") .
s73_(X,"f"):-s72_(X,"t*") .
s73_(X,"t*"):-s72_(X,"f") .
ex_lastName_(X,@new(s73,X,ex_lastName,1..1),"t"):-choose(s73,X,ex_lastName,1) .
ex_lastName_(X,@new(s73,X,ex_lastName,1..2),"t"):-choose(s73,X,ex_lastName,2) .
choose(s73,X,ex_lastName,2);choose(s73,X,ex_lastName,1);choose(s73,X,ex_lastName,0):-s73_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s74_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s73_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
2 {s74_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s73_(X,"t*") .


s75_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*") .
ex_lastName_(X,@new(s75,X,ex_lastName,1..1),"t"):-choose(s75,X,ex_lastName,1) .
choose(s75,X,ex_lastName,1);choose(s75,X,ex_lastName,0):-s75_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s76_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s75_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s76_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s75_(X,"t*") .


s77_(X,"t*"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"t*") .
s78_(X,"f"):-s77_(X,"t*") .
s78_(X,"t*"):-s77_(X,"f") .
ex_lastName_(X,@new(s78,X,ex_lastName,1..1),"t"):-choose(s78,X,ex_lastName,1) .
choose(s78,X,ex_lastName,1);choose(s78,X,ex_lastName,0):-s78_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s79_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s78_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s79_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s78_(X,"t*") .
s80_(X,"f"):-s79_(X,"t*") .
s80_(X,"t*"):-s79_(X,"f") .


s72_(X,"f");s75_(X,"f");s77_(X,"f"):-bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388505_(X,"f");bnode_0465bff3129e4f3db89e6d0321ce7388506_(X,"f"):-s62_(X,"f") .

s39_(X,"f");s59_(X,"f"):-ex_Issue__assignedTo_(X,"f") .
s81_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue__assignedTo_(X,"t*"):-s81_(X,"t*") .
ex_Issue__assignedTo_(X,"f"):-s81_(X,"f") .

s82_(X,"t*"):-ex_Issue__assignedTo_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s83_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s82_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
0 {s83_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s82_(X,"t*") .

ex_Person_(X,"t"):-s83_(X,"t*") .
ex_Person_(X,"f"):-s83_(X,"f") .

s84_(X,"t*"):-ex_Issue__assignedTo_(X,"t*") .
s85_(X,"f"):-s84_(X,"t*") .
s85_(X,"t*"):-s84_(X,"f") .
ex_assignedTo_(X,@new(s85,X,ex_assignedTo,1..1),"t"):-choose(s85,X,ex_assignedTo,1) .
choose(s85,X,ex_assignedTo,1);choose(s85,X,ex_assignedTo,0):-s85_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s86_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s85_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
1 {s86_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s85_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .

ex_Person_(X,"t"):-s87_(X,"t*") .
ex_Person_(X,"f"):-s87_(X,"f") .

s82_(X,"f");s84_(X,"f"):-ex_Issue__assignedTo_(X,"f") .
s88_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue__submittedBy_(X,"t*"):-s88_(X,"t*") .
ex_Issue__submittedBy_(X,"f"):-s88_(X,"f") .

% sh:minCount 1 for ex_Issue__submittedBy
s89_(X,"t*"):-ex_Issue__submittedBy_(X,"t*") .
ex_submittedBy_(X,@new(s89,X,ex_submittedBy,1..1),"t"):-choose(s89,X,ex_submittedBy,1) .
choose(s89,X,ex_submittedBy,1);choose(s89,X,ex_submittedBy,0):-s89_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s90_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s89_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s90_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s89_(X,"t*") .


s91_(X,"t*"):-ex_Issue__submittedBy_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .
ex_submittedBy_(X,@new(s92,X,ex_submittedBy,1..1),"t"):-choose(s92,X,ex_submittedBy,1) .
choose(s92,X,ex_submittedBy,1);choose(s92,X,ex_submittedBy,0):-s92_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s93_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s92_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s93_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s92_(X,"t*") .
s94_(X,"f"):-s93_(X,"t*") .
s94_(X,"t*"):-s93_(X,"f") .


s89_(X,"f");s91_(X,"f"):-ex_Issue__submittedBy_(X,"f") .
s31_(X,"f");s38_(X,"f");s81_(X,"f");s88_(X,"f"):-ex_Issue_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388508_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388508_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388508_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .
ex_lastName_(X,Y,"t**"):-ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388509_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388509_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388509_st_(X,Y,"f") .
ex_submittedBy_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f") .
ex_Issue__submittedBy_st_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t**"),ex_Issue__submittedBy_st_(X,Y,"t*"),not ex_Issue__submittedBy_st_(X,Y,"f") .
ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .
ex_assignedTo_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f") .
ex_Issue__assignedTo_st_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t**"),ex_Issue__assignedTo_st_(X,Y,"t*"),not ex_Issue__assignedTo_st_(X,Y,"f") .
ex_email_(X,Y,"t**"):-ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388505_st_(X,Y,"t**"):-ex_email_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388505_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388505_st_(X,Y,"f") .
bnode_0465bff3129e4f3db89e6d0321ce7388506_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),bnode_0465bff3129e4f3db89e6d0321ce7388506_st_(X,Y,"t*"),not bnode_0465bff3129e4f3db89e6d0321ce7388506_st_(X,Y,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s9_(X,"f") .
:-s13_(X,"f") .
:-ex_lastName_(X,Y,"t"),ex_lastName_(X,Y,"f") .
:-s23_(X,"f") .
:-s26_(X,"f") .
:-s30_(X,"f") .
:-ex_submittedBy_(X,Y,"t"),ex_submittedBy_(X,Y,"f") .
:-ex_Person_(X,"t"),ex_Person_(X,"f") .
:-ex_assignedTo_(X,Y,"t"),ex_assignedTo_(X,Y,"f") .
:-ex_email_(X,Y,"t"),ex_email_(X,Y,"f") .
:-s42_(X,"f") .
:-s45_(X,"f") .
:-s49_(X,"f") .
:-s52_(X,"f") .
:-s54_(X,"f") .
:-s58_(X,"f") .
:-s64_(X,"f") .
:-s67_(X,"f") .
:-s71_(X,"f") .
:-s74_(X,"f") .
:-s76_(X,"f") .
:-s80_(X,"f") .
:-s90_(X,"f") .
:-s94_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
add(ex_lastName(X,Y)):-ex_lastName_(X,Y,"t**"),not ex_lastName(X,Y) .
del(ex_lastName(X,Y)):-ex_lastName_(X,Y,"f"),ex_lastName(X,Y) .
add(ex_submittedBy(X,Y)):-ex_submittedBy_(X,Y,"t**"),not ex_submittedBy(X,Y) .
del(ex_submittedBy(X,Y)):-ex_submittedBy_(X,Y,"f"),ex_submittedBy(X,Y) .
add(ex_Person(X)):-ex_Person_(X,"t**"),not ex_Person(X) .
del(ex_Person(X)):-ex_Person_(X,"f"),ex_Person(X) .
add(ex_assignedTo(X,Y)):-ex_assignedTo_(X,Y,"t**"),not ex_assignedTo(X,Y) .
del(ex_assignedTo(X,Y)):-ex_assignedTo_(X,Y,"f"),ex_assignedTo(X,Y) .
add(ex_email(X,Y)):-ex_email_(X,Y,"t**"),not ex_email(X,Y) .
del(ex_email(X,Y)):-ex_email_(X,Y,"f"),ex_email(X,Y) .
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
