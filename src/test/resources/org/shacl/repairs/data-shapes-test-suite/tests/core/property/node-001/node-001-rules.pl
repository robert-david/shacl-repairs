
% Graph Data

ex_Person("ex_Anon") .
ex_firstName("ex_Anon","Anon") .
xsd_string("Anon") .
rdfs_Class("ex_Issue") .
sh_NodeShape("ex_Issue") .
rdfs_label("ex_Issue","Issue") .
xsd_string("Issue") .
rdfs_subClassOf("ex_Issue","rdfs_Resource") .
sh_property("ex_Issue","ex_Issue_assignedTo") .
sh_property("ex_Issue","ex_Issue_submittedBy") .
sh_path("ex_Issue_assignedTo","ex_assignedTo") .
sh_class("ex_Issue_assignedTo","ex_Person") .
sh_node("ex_Issue_assignedTo","bnode_6e957a6331f648adaec55884eab70e68494") .
rdfs_comment("bnode_6e957a6331f648adaec55884eab70e68494","All assignees must have an email and a last name.") .
xsd_string("All assignees must have an email and a last name.") .
sh_property("bnode_6e957a6331f648adaec55884eab70e68494","bnode_6e957a6331f648adaec55884eab70e68495") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68495","ex_email") .
sh_maxCount("bnode_6e957a6331f648adaec55884eab70e68495","1") .
xsd_integer("1") .
sh_minCount("bnode_6e957a6331f648adaec55884eab70e68495","1") .
sh_property("bnode_6e957a6331f648adaec55884eab70e68494","bnode_6e957a6331f648adaec55884eab70e68496") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68496","ex_lastName") .
sh_maxCount("bnode_6e957a6331f648adaec55884eab70e68496","1") .
sh_minCount("bnode_6e957a6331f648adaec55884eab70e68496","1") .
sh_path("ex_Issue_submittedBy","ex_submittedBy") .
sh_class("ex_Issue_submittedBy","ex_Person") .
sh_minCount("ex_Issue_submittedBy","1") .
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
sh_property("ex_Person","bnode_6e957a6331f648adaec55884eab70e68497") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68497","ex_email") .
ex_datatype("bnode_6e957a6331f648adaec55884eab70e68497","xsd_string") .
rdfs_label("bnode_6e957a6331f648adaec55884eab70e68497","email") .
xsd_string("email") .
sh_property("ex_Person","bnode_6e957a6331f648adaec55884eab70e68498") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68498","ex_firstName") .
rdfs_label("bnode_6e957a6331f648adaec55884eab70e68498","first name") .
xsd_string("first name") .
sh_datatype("bnode_6e957a6331f648adaec55884eab70e68498","xsd_string") .
sh_maxCount("bnode_6e957a6331f648adaec55884eab70e68498","1") .
sh_minCount("bnode_6e957a6331f648adaec55884eab70e68498","1") .
sh_property("ex_Person","bnode_6e957a6331f648adaec55884eab70e68499") .
sh_path("bnode_6e957a6331f648adaec55884eab70e68499","ex_lastName") .
rdfs_label("bnode_6e957a6331f648adaec55884eab70e68499","last name") .
xsd_string("last name") .
sh_datatype("bnode_6e957a6331f648adaec55884eab70e68499","xsd_string") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","bnode_6e957a6331f648adaec55884eab70e68500") .
rdf_first("bnode_6e957a6331f648adaec55884eab70e68500","http://repairs.shacl.org/node_001") .
rdf_rest("bnode_6e957a6331f648adaec55884eab70e68500","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node_001") .
rdfs_label("http://repairs.shacl.org/node_001","Test of sh:node at property shape 001") .
xsd_string("Test of sh:node at property shape 001") .
mf_action("http://repairs.shacl.org/node_001","bnode_6e957a6331f648adaec55884eab70e68501") .
sht_dataGraph("bnode_6e957a6331f648adaec55884eab70e68501","http://repairs.shacl.org") .
sht_shapesGraph("bnode_6e957a6331f648adaec55884eab70e68501","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node_001","bnode_6e957a6331f648adaec55884eab70e68502") .
sh_ValidationReport("bnode_6e957a6331f648adaec55884eab70e68502") .
sh_conforms("bnode_6e957a6331f648adaec55884eab70e68502","false") .
xsd_boolean("false") .
sh_result("bnode_6e957a6331f648adaec55884eab70e68502","bnode_6e957a6331f648adaec55884eab70e68503") .
sh_ValidationResult("bnode_6e957a6331f648adaec55884eab70e68503") .
sh_focusNode("bnode_6e957a6331f648adaec55884eab70e68503","ex_Issue_1") .
sh_resultPath("bnode_6e957a6331f648adaec55884eab70e68503","ex_assignedTo") .
sh_resultSeverity("bnode_6e957a6331f648adaec55884eab70e68503","sh_Violation") .
sh_sourceConstraintComponent("bnode_6e957a6331f648adaec55884eab70e68503","sh_NodeConstraintComponent") .
sh_sourceShape("bnode_6e957a6331f648adaec55884eab70e68503","ex_Issue_assignedTo") .
sh_value("bnode_6e957a6331f648adaec55884eab70e68503","ex_Anon") .
mf_status("http://repairs.shacl.org/node_001","sht_approved") .
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
bnode_6e957a6331f648adaec55884eab70e68508_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,_),ex_firstName_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .
ex_lastName_(X,Y,"t*"):-ex_lastName(X,Y) .
ex_lastName_(X,Y,"t*"):-ex_lastName_(X,Y,"t") .
bnode_6e957a6331f648adaec55884eab70e68509_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e68509_(X,_),ex_lastName_(X,Y,"t*") .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy(X,Y) .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy_(X,Y,"t") .
ex_Issue_submittedBy_st_(X,Y,"t*"):-ex_Issue_submittedBy_(X,_),ex_submittedBy_(X,Y,"t*") .
ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo(X,Y) .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo_(X,Y,"t") .
ex_Issue_assignedTo_st_(X,Y,"t*"):-ex_Issue_assignedTo_(X,_),ex_assignedTo_(X,Y,"t*") .
ex_email_(X,Y,"t*"):-ex_email(X,Y) .
ex_email_(X,Y,"t*"):-ex_email_(X,Y,"t") .
bnode_6e957a6331f648adaec55884eab70e68505_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,_),ex_email_(X,Y,"t*") .
bnode_6e957a6331f648adaec55884eab70e68506_st_(X,Y,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,_),ex_lastName_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_Person_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*"):-s0_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68508_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for bnode_6e957a6331f648adaec55884eab70e68508
s1_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
ex_firstName_(X,@new(s1,X,ex_firstName,1..1),"t"):-choose(s1,X,ex_firstName,1) .
choose(s1,X,ex_firstName,1);choose(s1,X,ex_firstName,0):-s1_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for bnode_6e957a6331f648adaec55884eab70e68508
s3_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"f") .
s7_(X,"t*"):-ex_Person_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*"):-s7_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68508_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for bnode_6e957a6331f648adaec55884eab70e68508
s8_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s9_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s9_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s8_(X,"t*") .

xsd_string_(X,"t"):-s9_(X,"t*") .
xsd_string_(X,"f"):-s9_(X,"f") .

s10_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_firstName_(X,@new(s11,X,ex_firstName,1..1),"t"):-choose(s11,X,ex_firstName,1) .
choose(s11,X,ex_firstName,1);choose(s11,X,ex_firstName,0):-s11_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s12_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s12_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

xsd_string_(X,"t"):-s13_(X,"t*") .
xsd_string_(X,"f"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"f") .
s14_(X,"t*"):-ex_Person_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*"):-s14_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68508_(X,"f"):-s14_(X,"f") .

% sh:maxCount 1 for bnode_6e957a6331f648adaec55884eab70e68508
s15_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
s16_(X,"f"):-s15_(X,"t*") .
s16_(X,"t*"):-s15_(X,"f") .
ex_firstName_(X,@new(s16,X,ex_firstName,1..1),"t"):-choose(s16,X,ex_firstName,1) .
ex_firstName_(X,@new(s16,X,ex_firstName,1..2),"t"):-choose(s16,X,ex_firstName,2) .
choose(s16,X,ex_firstName,2);choose(s16,X,ex_firstName,1);choose(s16,X,ex_firstName,0):-s16_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s17_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s16_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s17_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s16_(X,"t*") .


s18_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s19_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
0 {s19_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s18_(X,"t*") .


s20_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"t*") .
s21_(X,"f"):-s20_(X,"t*") .
s21_(X,"t*"):-s20_(X,"f") .
ex_firstName_(X,@new(s21,X,ex_firstName,1..1),"t"):-choose(s21,X,ex_firstName,1) .
choose(s21,X,ex_firstName,1);choose(s21,X,ex_firstName,0):-s21_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s22_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s22_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s21_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .


s15_(X,"f");s18_(X,"f");s20_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68508_(X,"f") .
s24_(X,"t*"):-ex_Person_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68509_(X,"t*"):-s24_(X,"t*") .
bnode_6e957a6331f648adaec55884eab70e68509_(X,"f"):-s24_(X,"f") .

% sh:minCount 0 for bnode_6e957a6331f648adaec55884eab70e68509
s25_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68509_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s26_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
0 {s26_(Y,"t*"):ex_lastName_(X,Y,"t**")} 0:-s25_(X,"t*") .

xsd_string_(X,"t"):-s26_(X,"t*") .
xsd_string_(X,"f"):-s26_(X,"f") .

% universal for bnode_6e957a6331f648adaec55884eab70e68509
s27_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68509_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
ex_lastName_(X,@new(s28,X,ex_lastName,1..1),"t"):-choose(s28,X,ex_lastName,1) .
choose(s28,X,ex_lastName,1);choose(s28,X,ex_lastName,0):-s28_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s29_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s29_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .

xsd_string_(X,"t"):-s30_(X,"t*") .
xsd_string_(X,"f"):-s30_(X,"f") .

s25_(X,"f");s27_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68509_(X,"f") .
s0_(X,"f");s7_(X,"f");s14_(X,"f");s24_(X,"f"):-ex_Person_(X,"f") .
s31_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_submittedBy_(X,"t*"):-s31_(X,"t*") .
ex_Issue_submittedBy_(X,"f"):-s31_(X,"f") .

% sh:minCount 0 for ex_Issue_submittedBy
s32_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s33_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s32_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
ex_submittedBy_(X,Y,"f"):-ex_submittedBy_(X,Y,"t*"),ex_submittedBy_(X,Y,"f") .
0 {s33_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 0:-s32_(X,"t*") .

ex_Person_(X,"t"):-s33_(X,"t*") .
ex_Person_(X,"f"):-s33_(X,"f") .

% universal for ex_Issue_submittedBy
s34_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
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

s32_(X,"f");s34_(X,"f"):-ex_Issue_submittedBy_(X,"f") .
s38_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_assignedTo_(X,"t*"):-s38_(X,"t*") .
ex_Issue_assignedTo_(X,"f"):-s38_(X,"f") .

% sh:minCount 0 for ex_Issue_assignedTo
s39_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s40_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
ex_assignedTo_(X,Y,"f"):-ex_assignedTo_(X,Y,"t*"),ex_assignedTo_(X,Y,"f") .
0 {s40_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s39_(X,"t*") .

ex_Person_(X,"t"):-s40_(X,"t*") .
ex_Person_(X,"f"):-s40_(X,"f") .

% universal for ex_Issue_assignedTo
s41_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .
ex_assignedTo_(X,@new(s42,X,ex_assignedTo,1..1),"t"):-choose(s42,X,ex_assignedTo,1) .
choose(s42,X,ex_assignedTo,1);choose(s42,X,ex_assignedTo,0):-s42_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s43_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s42_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
1 {s43_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s42_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .

ex_Person_(X,"t"):-s44_(X,"t*") .
ex_Person_(X,"f"):-s44_(X,"f") .

s39_(X,"f");s41_(X,"f"):-ex_Issue_assignedTo_(X,"f") .
s45_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_submittedBy_(X,"t*"):-s45_(X,"t*") .
ex_Issue_submittedBy_(X,"f"):-s45_(X,"f") .

% sh:minCount 1 for ex_Issue_submittedBy
s46_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
ex_submittedBy_(X,@new(s46,X,ex_submittedBy,1..1),"t"):-choose(s46,X,ex_submittedBy,1) .
choose(s46,X,ex_submittedBy,1);choose(s46,X,ex_submittedBy,0):-s46_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s47_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s47_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s46_(X,"t*") .


s48_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
s49_(X,"f"):-s48_(X,"t*") .
s49_(X,"t*"):-s48_(X,"f") .
ex_submittedBy_(X,@new(s49,X,ex_submittedBy,1..1),"t"):-choose(s49,X,ex_submittedBy,1) .
choose(s49,X,ex_submittedBy,1);choose(s49,X,ex_submittedBy,0):-s49_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s50_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s49_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s50_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s49_(X,"t*") .
s51_(X,"f"):-s50_(X,"t*") .
s51_(X,"t*"):-s50_(X,"f") .


s46_(X,"f");s48_(X,"f"):-ex_Issue_submittedBy_(X,"f") .
s52_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_assignedTo_(X,"t*"):-s52_(X,"t*") .
ex_Issue_assignedTo_(X,"f"):-s52_(X,"f") .

s53_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s54_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s53_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
0 {s54_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s53_(X,"t*") .

bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*"):-s54_(X,"t*") .

% sh:maxCount 1 for bnode_6e957a6331f648adaec55884eab70e68505
s55_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .
ex_email_(X,@new(s56,X,ex_email,1..1),"t"):-choose(s56,X,ex_email,1) .
ex_email_(X,@new(s56,X,ex_email,1..2),"t"):-choose(s56,X,ex_email,2) .
choose(s56,X,ex_email,2);choose(s56,X,ex_email,1);choose(s56,X,ex_email,0):-s56_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s57_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s56_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
ex_email_(X,Y,"f"):-ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
2 {s57_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s56_(X,"t*") .


% sh:minCount 1 for bnode_6e957a6331f648adaec55884eab70e68505
s58_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*") .
ex_email_(X,@new(s58,X,ex_email,1..1),"t"):-choose(s58,X,ex_email,1) .
choose(s58,X,ex_email,1);choose(s58,X,ex_email,0):-s58_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s59_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s58_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s59_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s58_(X,"t*") .


% universal for bnode_6e957a6331f648adaec55884eab70e68505
s60_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*") .
s61_(X,"f"):-s60_(X,"t*") .
s61_(X,"t*"):-s60_(X,"f") .
ex_email_(X,@new(s61,X,ex_email,1..1),"t"):-choose(s61,X,ex_email,1) .
choose(s61,X,ex_email,1);choose(s61,X,ex_email,0):-s61_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s62_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s62_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s61_(X,"t*") .
s63_(X,"f"):-s62_(X,"t*") .
s63_(X,"t*"):-s62_(X,"f") .


s55_(X,"f");s58_(X,"f");s60_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"f") .
bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*"):-s54_(X,"t*") .

% sh:maxCount 1 for bnode_6e957a6331f648adaec55884eab70e68506
s64_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*") .
s65_(X,"f"):-s64_(X,"t*") .
s65_(X,"t*"):-s64_(X,"f") .
ex_lastName_(X,@new(s65,X,ex_lastName,1..1),"t"):-choose(s65,X,ex_lastName,1) .
ex_lastName_(X,@new(s65,X,ex_lastName,1..2),"t"):-choose(s65,X,ex_lastName,2) .
choose(s65,X,ex_lastName,2);choose(s65,X,ex_lastName,1);choose(s65,X,ex_lastName,0):-s65_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s66_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s65_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
2 {s66_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s65_(X,"t*") .


% sh:minCount 1 for bnode_6e957a6331f648adaec55884eab70e68506
s67_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*") .
ex_lastName_(X,@new(s67,X,ex_lastName,1..1),"t"):-choose(s67,X,ex_lastName,1) .
choose(s67,X,ex_lastName,1);choose(s67,X,ex_lastName,0):-s67_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s68_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s68_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s67_(X,"t*") .


% universal for bnode_6e957a6331f648adaec55884eab70e68506
s69_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*") .
s70_(X,"f"):-s69_(X,"t*") .
s70_(X,"t*"):-s69_(X,"f") .
ex_lastName_(X,@new(s70,X,ex_lastName,1..1),"t"):-choose(s70,X,ex_lastName,1) .
choose(s70,X,ex_lastName,1);choose(s70,X,ex_lastName,0):-s70_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s71_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s70_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s71_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s70_(X,"t*") .
s72_(X,"f"):-s71_(X,"t*") .
s72_(X,"t*"):-s71_(X,"f") .


s64_(X,"f");s67_(X,"f");s69_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"f") .
bnode_6e957a6331f648adaec55884eab70e68505_(X,"f");bnode_6e957a6331f648adaec55884eab70e68506_(X,"f"):-s54_(X,"f") .

s73_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
s74_(X,"f"):-s73_(X,"t*") .
s74_(X,"t*"):-s73_(X,"f") .
ex_assignedTo_(X,@new(s74,X,ex_assignedTo,1..1),"t"):-choose(s74,X,ex_assignedTo,1) .
choose(s74,X,ex_assignedTo,1);choose(s74,X,ex_assignedTo,0):-s74_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s75_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s74_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
1 {s75_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s74_(X,"t*") .
s76_(X,"f"):-s75_(X,"t*") .
s76_(X,"t*"):-s75_(X,"f") .

bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*"):-s76_(X,"t*") .

s77_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*") .
s78_(X,"f"):-s77_(X,"t*") .
s78_(X,"t*"):-s77_(X,"f") .
ex_email_(X,@new(s78,X,ex_email,1..1),"t"):-choose(s78,X,ex_email,1) .
ex_email_(X,@new(s78,X,ex_email,1..2),"t"):-choose(s78,X,ex_email,2) .
choose(s78,X,ex_email,2);choose(s78,X,ex_email,1);choose(s78,X,ex_email,0):-s78_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s79_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s78_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
2 {s79_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s78_(X,"t*") .


s80_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*") .
ex_email_(X,@new(s80,X,ex_email,1..1),"t"):-choose(s80,X,ex_email,1) .
choose(s80,X,ex_email,1);choose(s80,X,ex_email,0):-s80_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s81_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s80_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s81_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s80_(X,"t*") .


s82_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"t*") .
s83_(X,"f"):-s82_(X,"t*") .
s83_(X,"t*"):-s82_(X,"f") .
ex_email_(X,@new(s83,X,ex_email,1..1),"t"):-choose(s83,X,ex_email,1) .
choose(s83,X,ex_email,1);choose(s83,X,ex_email,0):-s83_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s84_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s83_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s84_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s83_(X,"t*") .
s85_(X,"f"):-s84_(X,"t*") .
s85_(X,"t*"):-s84_(X,"f") .


s77_(X,"f");s80_(X,"f");s82_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68505_(X,"f") .
bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*"):-s76_(X,"t*") .

s86_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .
ex_lastName_(X,@new(s87,X,ex_lastName,1..1),"t"):-choose(s87,X,ex_lastName,1) .
ex_lastName_(X,@new(s87,X,ex_lastName,1..2),"t"):-choose(s87,X,ex_lastName,2) .
choose(s87,X,ex_lastName,2);choose(s87,X,ex_lastName,1);choose(s87,X,ex_lastName,0):-s87_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s88_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s87_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
2 {s88_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s87_(X,"t*") .


s89_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*") .
ex_lastName_(X,@new(s89,X,ex_lastName,1..1),"t"):-choose(s89,X,ex_lastName,1) .
choose(s89,X,ex_lastName,1);choose(s89,X,ex_lastName,0):-s89_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s90_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s89_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s90_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s89_(X,"t*") .


s91_(X,"t*"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .
ex_lastName_(X,@new(s92,X,ex_lastName,1..1),"t"):-choose(s92,X,ex_lastName,1) .
choose(s92,X,ex_lastName,1);choose(s92,X,ex_lastName,0):-s92_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s93_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s92_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s93_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s92_(X,"t*") .
s94_(X,"f"):-s93_(X,"t*") .
s94_(X,"t*"):-s93_(X,"f") .


s86_(X,"f");s89_(X,"f");s91_(X,"f"):-bnode_6e957a6331f648adaec55884eab70e68506_(X,"f") .
bnode_6e957a6331f648adaec55884eab70e68505_(X,"f");bnode_6e957a6331f648adaec55884eab70e68506_(X,"f"):-s76_(X,"f") .

s53_(X,"f");s73_(X,"f"):-ex_Issue_assignedTo_(X,"f") .
s31_(X,"f");s38_(X,"f");s45_(X,"f");s52_(X,"f"):-ex_Issue_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e68508_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e68508_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e68508_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .
ex_lastName_(X,Y,"t**"):-ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e68509_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e68509_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e68509_st_(X,Y,"f") .
ex_submittedBy_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f") .
ex_Issue_submittedBy_st_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t**"),ex_Issue_submittedBy_st_(X,Y,"t*"),not ex_Issue_submittedBy_st_(X,Y,"f") .
ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .
ex_assignedTo_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f") .
ex_Issue_assignedTo_st_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t**"),ex_Issue_assignedTo_st_(X,Y,"t*"),not ex_Issue_assignedTo_st_(X,Y,"f") .
ex_email_(X,Y,"t**"):-ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e68505_st_(X,Y,"t**"):-ex_email_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e68505_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e68505_st_(X,Y,"f") .
bnode_6e957a6331f648adaec55884eab70e68506_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),bnode_6e957a6331f648adaec55884eab70e68506_st_(X,Y,"t*"),not bnode_6e957a6331f648adaec55884eab70e68506_st_(X,Y,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s17_(X,"f") .
:-s19_(X,"f") .
:-s23_(X,"f") .
:-ex_lastName_(X,Y,"t"),ex_lastName_(X,Y,"f") .
:-ex_submittedBy_(X,Y,"t"),ex_submittedBy_(X,Y,"f") .
:-ex_Person_(X,"t"),ex_Person_(X,"f") .
:-ex_assignedTo_(X,Y,"t"),ex_assignedTo_(X,Y,"f") .
:-s47_(X,"f") .
:-s51_(X,"f") .
:-ex_email_(X,Y,"t"),ex_email_(X,Y,"f") .
:-s57_(X,"f") .
:-s59_(X,"f") .
:-s63_(X,"f") .
:-s66_(X,"f") .
:-s68_(X,"f") .
:-s72_(X,"f") .
:-s79_(X,"f") .
:-s81_(X,"f") .
:-s85_(X,"f") .
:-s88_(X,"f") .
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
#minimize { 1@5,X,S: skipTarget(X,S) } .

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
