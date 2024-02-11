
% Graph Data

ex_Person("ex_Anon") .
ex_firstName("ex_Anon","Anon") .
xsd_string("Anon") .
rdfs_Class("ex_Issue") .
sh_NodeShape("ex_Issue") .
rdfs_label("ex_Issue","Issue") .
xsd_string("Issue") .
rdfs_Resource(X):-ex_Issue(X) .
sh_property("ex_Issue","ex_Issue_assignedTo") .
sh_property("ex_Issue","ex_Issue_submittedBy") .
sh_path("ex_Issue_assignedTo","ex_assignedTo") .
sh_class("ex_Issue_assignedTo","ex_Person") .
sh_node("ex_Issue_assignedTo","node1hmcimj6lx448") .
rdfs_comment("node1hmcimj6lx448","All assignees must have an email and a last name.") .
xsd_string("All assignees must have an email and a last name.") .
sh_property("node1hmcimj6lx448","node1hmcimj6lx449") .
sh_path("node1hmcimj6lx449","ex_email") .
sh_maxCount("node1hmcimj6lx449","1") .
xsd_integer("1") .
sh_minCount("node1hmcimj6lx449","1") .
sh_property("node1hmcimj6lx448","node1hmcimj6lx450") .
sh_path("node1hmcimj6lx450","ex_lastName") .
sh_maxCount("node1hmcimj6lx450","1") .
sh_minCount("node1hmcimj6lx450","1") .
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
rdfs_Resource(X):-ex_Person(X) .
sh_property("ex_Person","node1hmcimj6lx451") .
sh_path("node1hmcimj6lx451","ex_email") .
ex_datatype("node1hmcimj6lx451","xsd_string") .
rdfs_label("node1hmcimj6lx451","email") .
xsd_string("email") .
sh_property("ex_Person","node1hmcimj6lx452") .
sh_path("node1hmcimj6lx452","ex_firstName") .
rdfs_label("node1hmcimj6lx452","first name") .
xsd_string("first name") .
sh_datatype("node1hmcimj6lx452","xsd_string") .
sh_maxCount("node1hmcimj6lx452","1") .
sh_minCount("node1hmcimj6lx452","1") .
sh_property("ex_Person","node1hmcimj6lx453") .
sh_path("node1hmcimj6lx453","ex_lastName") .
rdfs_label("node1hmcimj6lx453","last name") .
xsd_string("last name") .
sh_datatype("node1hmcimj6lx453","xsd_string") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1hmcimj6lx454") .
rdf_first("node1hmcimj6lx454","http://repairs.shacl.org/node_001") .
rdf_rest("node1hmcimj6lx454","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node_001") .
rdfs_label("http://repairs.shacl.org/node_001","Test of sh:node at property shape 001") .
xsd_string("Test of sh:node at property shape 001") .
mf_action("http://repairs.shacl.org/node_001","node1hmcimj6lx455") .
sht_dataGraph("node1hmcimj6lx455","http://repairs.shacl.org") .
sht_shapesGraph("node1hmcimj6lx455","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node_001","node1hmcimj6lx456") .
sh_ValidationReport("node1hmcimj6lx456") .
sh_conforms("node1hmcimj6lx456","false") .
xsd_boolean("false") .
sh_result("node1hmcimj6lx456","node1hmcimj6lx457") .
sh_ValidationResult("node1hmcimj6lx457") .
sh_focusNode("node1hmcimj6lx457","ex_Issue_1") .
sh_resultPath("node1hmcimj6lx457","ex_assignedTo") .
sh_resultSeverity("node1hmcimj6lx457","sh_Violation") .
sh_sourceConstraintComponent("node1hmcimj6lx457","sh_NodeConstraintComponent") .
sh_sourceShape("node1hmcimj6lx457","ex_Issue_assignedTo") .
sh_value("node1hmcimj6lx457","ex_Anon") .
mf_status("http://repairs.shacl.org/node_001","sht_approved") .

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
node1hmcimj6lx462_st_(X,Y,"t*"):-node1hmcimj6lx462_(X,_),ex_firstName_(X,Y,"t*") .
ex_lastName_(X,Y,"t*"):-ex_lastName(X,Y) .
ex_lastName_(X,Y,"t*"):-ex_lastName_(X,Y,"t") .
node1hmcimj6lx463_st_(X,Y,"t*"):-node1hmcimj6lx463_(X,_),ex_lastName_(X,Y,"t*") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo(X,Y) .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo_(X,Y,"t") .
ex_Issue_assignedTo_st_(X,Y,"t*"):-ex_Issue_assignedTo_(X,_),ex_assignedTo_(X,Y,"t*") .
ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy(X,Y) .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy_(X,Y,"t") .
ex_Issue_submittedBy_st_(X,Y,"t*"):-ex_Issue_submittedBy_(X,_),ex_submittedBy_(X,Y,"t*") .
ex_email_(X,Y,"t*"):-ex_email(X,Y) .
ex_email_(X,Y,"t*"):-ex_email_(X,Y,"t") .
node1hmcimj6lx459_st_(X,Y,"t*"):-node1hmcimj6lx459_(X,_),ex_email_(X,Y,"t*") .
node1hmcimj6lx460_st_(X,Y,"t*"):-node1hmcimj6lx460_(X,_),ex_lastName_(X,Y,"t*") .

% Repair Rules

s0_(X,"t*"):-ex_Person_(X,"t*") .
node1hmcimj6lx462_(X,"t*"):-s0_(X,"t*") .
node1hmcimj6lx462_(X,"f"):-s0_(X,"f") .

% sh:minCount 1 for node1hmcimj6lx462
s1_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
ex_firstName_(X,@new(s1,X,ex_firstName,1..1),"t"):-choose(s1,X,ex_firstName,1) .
choose(s1,X,ex_firstName,1);choose(s1,X,ex_firstName,0):-s1_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s2_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s1_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s1_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s2_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s1_(X,"t*") .


% universal for node1hmcimj6lx462
s3_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
s4_(X,"f"):-s3_(X,"t*") .
s4_(X,"t*"):-s3_(X,"f") .
ex_firstName_(X,@new(s4,X,ex_firstName,1..1),"t"):-choose(s4,X,ex_firstName,1) .
choose(s4,X,ex_firstName,1);choose(s4,X,ex_firstName,0):-s4_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s5_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s4_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s4_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s5_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s4_(X,"t*") .
s6_(X,"f"):-s5_(X,"t*") .
s6_(X,"t*"):-s5_(X,"f") .


s1_(X,"f");s3_(X,"f"):-node1hmcimj6lx462_(X,"f") .
s7_(X,"t*"):-ex_Person_(X,"t*") .
node1hmcimj6lx463_(X,"t*"):-s7_(X,"t*") .
node1hmcimj6lx463_(X,"f"):-s7_(X,"f") .

% sh:minCount 0 for node1hmcimj6lx463
s8_(X,"t*"):-node1hmcimj6lx463_(X,"t*") .
choose(s8,X,ex_lastName,0):-s8_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s9_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s8_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s8_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
0 {s9_(Y,"t*"):ex_lastName_(X,Y,"t**")} 0:-s8_(X,"t*") .

xsd_string_(X,"t"):-s9_(X,"t*") .
xsd_string_(X,"f"):-s9_(X,"f") .

% universal for node1hmcimj6lx463
s10_(X,"t*"):-node1hmcimj6lx463_(X,"t*") .
s11_(X,"f"):-s10_(X,"t*") .
s11_(X,"t*"):-s10_(X,"f") .
ex_lastName_(X,@new(s11,X,ex_lastName,1..1),"t"):-choose(s11,X,ex_lastName,1) .
choose(s11,X,ex_lastName,1);choose(s11,X,ex_lastName,0):-s11_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s12_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s11_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s11_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s12_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s11_(X,"t*") .
s13_(X,"f"):-s12_(X,"t*") .
s13_(X,"t*"):-s12_(X,"f") .

xsd_string_(X,"t"):-s13_(X,"t*") .
xsd_string_(X,"f"):-s13_(X,"f") .

s8_(X,"f");s10_(X,"f"):-node1hmcimj6lx463_(X,"f") .
s14_(X,"t*"):-ex_Person_(X,"t*") .
node1hmcimj6lx462_(X,"t*"):-s14_(X,"t*") .
node1hmcimj6lx462_(X,"f"):-s14_(X,"f") .

% sh:minCount 0 for node1hmcimj6lx462
s15_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
choose(s15,X,ex_firstName,0):-s15_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s16_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s15_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s16_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s15_(X,"t*") .

xsd_string_(X,"t"):-s16_(X,"t*") .
xsd_string_(X,"f"):-s16_(X,"f") .

s17_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
ex_firstName_(X,@new(s18,X,ex_firstName,1..1),"t"):-choose(s18,X,ex_firstName,1) .
choose(s18,X,ex_firstName,1);choose(s18,X,ex_firstName,0):-s18_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s19_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s18_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s19_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s18_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .

xsd_string_(X,"t"):-s20_(X,"t*") .
xsd_string_(X,"f"):-s20_(X,"f") .

s15_(X,"f");s17_(X,"f"):-node1hmcimj6lx462_(X,"f") .
s21_(X,"t*"):-ex_Person_(X,"t*") .
node1hmcimj6lx462_(X,"t*"):-s21_(X,"t*") .
node1hmcimj6lx462_(X,"f"):-s21_(X,"f") .

% sh:maxCount 1 for node1hmcimj6lx462
s22_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
s23_(X,"f"):-s22_(X,"t*") .
s23_(X,"t*"):-s22_(X,"f") .
ex_firstName_(X,@new(s23,X,ex_firstName,1..1),"t"):-choose(s23,X,ex_firstName,1) .
ex_firstName_(X,@new(s23,X,ex_firstName,1..2),"t"):-choose(s23,X,ex_firstName,2) .
choose(s23,X,ex_firstName,2);choose(s23,X,ex_firstName,1);choose(s23,X,ex_firstName,0):-s23_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s24_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s23_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
ex_firstName_(X,Y,"f"):-s23_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
2 {s24_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s23_(X,"t*") .


s25_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
choose(s25,X,ex_firstName,0):-s25_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s26_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s25_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
0 {s26_(Y,"t*"):ex_firstName_(X,Y,"t**")} 0:-s25_(X,"t*") .


s27_(X,"t*"):-node1hmcimj6lx462_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
ex_firstName_(X,@new(s28,X,ex_firstName,1..1),"t"):-choose(s28,X,ex_firstName,1) .
choose(s28,X,ex_firstName,1);choose(s28,X,ex_firstName,0):-s28_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName_(X,Y,"t*");s29_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s28_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
ex_firstName_(X,Y,"f"):-s28_(X,"f"),ex_firstName_(X,Y,"t*"),ex_firstName_(X,Y,"f") .
1 {s29_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s28_(X,"t*") .
s30_(X,"f"):-s29_(X,"t*") .
s30_(X,"t*"):-s29_(X,"f") .


s22_(X,"f");s25_(X,"f");s27_(X,"f"):-node1hmcimj6lx462_(X,"f") .
s0_(X,"f");s7_(X,"f");s14_(X,"f");s21_(X,"f"):-ex_Person_(X,"f") .
s31_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_assignedTo_(X,"t*"):-s31_(X,"t*") .
ex_Issue_assignedTo_(X,"f"):-s31_(X,"f") .

% sh:minCount 0 for ex_Issue_assignedTo
s32_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
choose(s32,X,ex_assignedTo,0):-s32_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s33_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s32_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
ex_assignedTo_(X,Y,"f"):-s32_(X,"f"),ex_assignedTo_(X,Y,"t*"),ex_assignedTo_(X,Y,"f") .
0 {s33_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s32_(X,"t*") .

ex_Person_(X,"t"):-s33_(X,"t*") .
ex_Person_(X,"f"):-s33_(X,"f") .

% universal for ex_Issue_assignedTo
s34_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .
ex_assignedTo_(X,@new(s35,X,ex_assignedTo,1..1),"t"):-choose(s35,X,ex_assignedTo,1) .
choose(s35,X,ex_assignedTo,1);choose(s35,X,ex_assignedTo,0):-s35_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s36_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s35_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
ex_assignedTo_(X,Y,"f"):-s35_(X,"f"),ex_assignedTo_(X,Y,"t*"),ex_assignedTo_(X,Y,"f") .
1 {s36_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s35_(X,"t*") .
s37_(X,"f"):-s36_(X,"t*") .
s37_(X,"t*"):-s36_(X,"f") .

ex_Person_(X,"t"):-s37_(X,"t*") .
ex_Person_(X,"f"):-s37_(X,"f") .

s32_(X,"f");s34_(X,"f"):-ex_Issue_assignedTo_(X,"f") .
s38_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_submittedBy_(X,"t*"):-s38_(X,"t*") .
ex_Issue_submittedBy_(X,"f"):-s38_(X,"f") .

% sh:minCount 0 for ex_Issue_submittedBy
s39_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
choose(s39,X,ex_submittedBy,0):-s39_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s40_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s39_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
ex_submittedBy_(X,Y,"f"):-s39_(X,"f"),ex_submittedBy_(X,Y,"t*"),ex_submittedBy_(X,Y,"f") .
0 {s40_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 0:-s39_(X,"t*") .

ex_Person_(X,"t"):-s40_(X,"t*") .
ex_Person_(X,"f"):-s40_(X,"f") .

% universal for ex_Issue_submittedBy
s41_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .
ex_submittedBy_(X,@new(s42,X,ex_submittedBy,1..1),"t"):-choose(s42,X,ex_submittedBy,1) .
choose(s42,X,ex_submittedBy,1);choose(s42,X,ex_submittedBy,0):-s42_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s43_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s42_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
ex_submittedBy_(X,Y,"f"):-s42_(X,"f"),ex_submittedBy_(X,Y,"t*"),ex_submittedBy_(X,Y,"f") .
1 {s43_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s42_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .

ex_Person_(X,"t"):-s44_(X,"t*") .
ex_Person_(X,"f"):-s44_(X,"f") .

s39_(X,"f");s41_(X,"f"):-ex_Issue_submittedBy_(X,"f") .
s45_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_assignedTo_(X,"t*"):-s45_(X,"t*") .
ex_Issue_assignedTo_(X,"f"):-s45_(X,"f") .

s46_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
choose(s46,X,ex_assignedTo,0):-s46_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s47_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s46_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
ex_assignedTo_(X,Y,"f"):-s46_(X,"f"),ex_assignedTo_(X,Y,"t*"),ex_assignedTo_(X,Y,"f") .
0 {s47_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s46_(X,"t*") .

node1hmcimj6lx459_(X,"t*"):-s47_(X,"t*") .

% sh:maxCount 1 for node1hmcimj6lx459
s48_(X,"t*"):-node1hmcimj6lx459_(X,"t*") .
s49_(X,"f"):-s48_(X,"t*") .
s49_(X,"t*"):-s48_(X,"f") .
ex_email_(X,@new(s49,X,ex_email,1..1),"t"):-choose(s49,X,ex_email,1) .
ex_email_(X,@new(s49,X,ex_email,1..2),"t"):-choose(s49,X,ex_email,2) .
choose(s49,X,ex_email,2);choose(s49,X,ex_email,1);choose(s49,X,ex_email,0):-s49_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s50_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s49_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
ex_email_(X,Y,"f"):-s49_(X,"f"),ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
2 {s50_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s49_(X,"t*") .


% sh:minCount 1 for node1hmcimj6lx459
s51_(X,"t*"):-node1hmcimj6lx459_(X,"t*") .
ex_email_(X,@new(s51,X,ex_email,1..1),"t"):-choose(s51,X,ex_email,1) .
choose(s51,X,ex_email,1);choose(s51,X,ex_email,0):-s51_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s52_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s51_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
ex_email_(X,Y,"f"):-s51_(X,"f"),ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
1 {s52_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s51_(X,"t*") .


% universal for node1hmcimj6lx459
s53_(X,"t*"):-node1hmcimj6lx459_(X,"t*") .
s54_(X,"f"):-s53_(X,"t*") .
s54_(X,"t*"):-s53_(X,"f") .
ex_email_(X,@new(s54,X,ex_email,1..1),"t"):-choose(s54,X,ex_email,1) .
choose(s54,X,ex_email,1);choose(s54,X,ex_email,0):-s54_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s55_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s54_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
ex_email_(X,Y,"f"):-s54_(X,"f"),ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
1 {s55_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s54_(X,"t*") .
s56_(X,"f"):-s55_(X,"t*") .
s56_(X,"t*"):-s55_(X,"f") .


s48_(X,"f");s51_(X,"f");s53_(X,"f"):-node1hmcimj6lx459_(X,"f") .
node1hmcimj6lx460_(X,"t*"):-s47_(X,"t*") .

% sh:minCount 1 for node1hmcimj6lx460
s57_(X,"t*"):-node1hmcimj6lx460_(X,"t*") .
ex_lastName_(X,@new(s57,X,ex_lastName,1..1),"t"):-choose(s57,X,ex_lastName,1) .
choose(s57,X,ex_lastName,1);choose(s57,X,ex_lastName,0):-s57_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s58_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s57_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s57_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s58_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s57_(X,"t*") .


% sh:maxCount 1 for node1hmcimj6lx460
s59_(X,"t*"):-node1hmcimj6lx460_(X,"t*") .
s60_(X,"f"):-s59_(X,"t*") .
s60_(X,"t*"):-s59_(X,"f") .
ex_lastName_(X,@new(s60,X,ex_lastName,1..1),"t"):-choose(s60,X,ex_lastName,1) .
ex_lastName_(X,@new(s60,X,ex_lastName,1..2),"t"):-choose(s60,X,ex_lastName,2) .
choose(s60,X,ex_lastName,2);choose(s60,X,ex_lastName,1);choose(s60,X,ex_lastName,0):-s60_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s61_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s60_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
ex_lastName_(X,Y,"f"):-s60_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
2 {s61_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s60_(X,"t*") .


% universal for node1hmcimj6lx460
s62_(X,"t*"):-node1hmcimj6lx460_(X,"t*") .
s63_(X,"f"):-s62_(X,"t*") .
s63_(X,"t*"):-s62_(X,"f") .
ex_lastName_(X,@new(s63,X,ex_lastName,1..1),"t"):-choose(s63,X,ex_lastName,1) .
choose(s63,X,ex_lastName,1);choose(s63,X,ex_lastName,0):-s63_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s64_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s63_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s63_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s64_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s63_(X,"t*") .
s65_(X,"f"):-s64_(X,"t*") .
s65_(X,"t*"):-s64_(X,"f") .


s57_(X,"f");s59_(X,"f");s62_(X,"f"):-node1hmcimj6lx460_(X,"f") .
node1hmcimj6lx459_(X,"f");node1hmcimj6lx460_(X,"f"):-s47_(X,"f") .

s66_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
s67_(X,"f"):-s66_(X,"t*") .
s67_(X,"t*"):-s66_(X,"f") .
ex_assignedTo_(X,@new(s67,X,ex_assignedTo,1..1),"t"):-choose(s67,X,ex_assignedTo,1) .
choose(s67,X,ex_assignedTo,1);choose(s67,X,ex_assignedTo,0):-s67_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo_(X,Y,"t*");s68_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s67_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
ex_assignedTo_(X,Y,"f"):-s67_(X,"f"),ex_assignedTo_(X,Y,"t*"),ex_assignedTo_(X,Y,"f") .
1 {s68_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s67_(X,"t*") .
s69_(X,"f"):-s68_(X,"t*") .
s69_(X,"t*"):-s68_(X,"f") .

node1hmcimj6lx459_(X,"t*"):-s69_(X,"t*") .

s70_(X,"t*"):-node1hmcimj6lx459_(X,"t*") .
s71_(X,"f"):-s70_(X,"t*") .
s71_(X,"t*"):-s70_(X,"f") .
ex_email_(X,@new(s71,X,ex_email,1..1),"t"):-choose(s71,X,ex_email,1) .
ex_email_(X,@new(s71,X,ex_email,1..2),"t"):-choose(s71,X,ex_email,2) .
choose(s71,X,ex_email,2);choose(s71,X,ex_email,1);choose(s71,X,ex_email,0):-s71_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s72_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s71_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
ex_email_(X,Y,"f"):-s71_(X,"f"),ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
2 {s72_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s71_(X,"t*") .


s73_(X,"t*"):-node1hmcimj6lx459_(X,"t*") .
ex_email_(X,@new(s73,X,ex_email,1..1),"t"):-choose(s73,X,ex_email,1) .
choose(s73,X,ex_email,1);choose(s73,X,ex_email,0):-s73_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s74_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s73_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
ex_email_(X,Y,"f"):-s73_(X,"f"),ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
1 {s74_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s73_(X,"t*") .


s75_(X,"t*"):-node1hmcimj6lx459_(X,"t*") .
s76_(X,"f"):-s75_(X,"t*") .
s76_(X,"t*"):-s75_(X,"f") .
ex_email_(X,@new(s76,X,ex_email,1..1),"t"):-choose(s76,X,ex_email,1) .
choose(s76,X,ex_email,1);choose(s76,X,ex_email,0):-s76_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email_(X,Y,"t*");s77_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s76_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
ex_email_(X,Y,"f"):-s76_(X,"f"),ex_email_(X,Y,"t*"),ex_email_(X,Y,"f") .
1 {s77_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s76_(X,"t*") .
s78_(X,"f"):-s77_(X,"t*") .
s78_(X,"t*"):-s77_(X,"f") .


s70_(X,"f");s73_(X,"f");s75_(X,"f"):-node1hmcimj6lx459_(X,"f") .
node1hmcimj6lx460_(X,"t*"):-s69_(X,"t*") .

s79_(X,"t*"):-node1hmcimj6lx460_(X,"t*") .
ex_lastName_(X,@new(s79,X,ex_lastName,1..1),"t"):-choose(s79,X,ex_lastName,1) .
choose(s79,X,ex_lastName,1);choose(s79,X,ex_lastName,0):-s79_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s80_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s79_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s79_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s80_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s79_(X,"t*") .


s81_(X,"t*"):-node1hmcimj6lx460_(X,"t*") .
s82_(X,"f"):-s81_(X,"t*") .
s82_(X,"t*"):-s81_(X,"f") .
ex_lastName_(X,@new(s82,X,ex_lastName,1..1),"t"):-choose(s82,X,ex_lastName,1) .
ex_lastName_(X,@new(s82,X,ex_lastName,1..2),"t"):-choose(s82,X,ex_lastName,2) .
choose(s82,X,ex_lastName,2);choose(s82,X,ex_lastName,1);choose(s82,X,ex_lastName,0):-s82_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s83_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s82_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
ex_lastName_(X,Y,"f"):-s82_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
2 {s83_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s82_(X,"t*") .


s84_(X,"t*"):-node1hmcimj6lx460_(X,"t*") .
s85_(X,"f"):-s84_(X,"t*") .
s85_(X,"t*"):-s84_(X,"f") .
ex_lastName_(X,@new(s85,X,ex_lastName,1..1),"t"):-choose(s85,X,ex_lastName,1) .
choose(s85,X,ex_lastName,1);choose(s85,X,ex_lastName,0):-s85_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName_(X,Y,"t*");s86_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s85_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
ex_lastName_(X,Y,"f"):-s85_(X,"f"),ex_lastName_(X,Y,"t*"),ex_lastName_(X,Y,"f") .
1 {s86_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s85_(X,"t*") .
s87_(X,"f"):-s86_(X,"t*") .
s87_(X,"t*"):-s86_(X,"f") .


s79_(X,"f");s81_(X,"f");s84_(X,"f"):-node1hmcimj6lx460_(X,"f") .
node1hmcimj6lx459_(X,"f");node1hmcimj6lx460_(X,"f"):-s69_(X,"f") .

s46_(X,"f");s66_(X,"f"):-ex_Issue_assignedTo_(X,"f") .
s88_(X,"t*"):-ex_Issue_(X,"t*") .
ex_Issue_submittedBy_(X,"t*"):-s88_(X,"t*") .
ex_Issue_submittedBy_(X,"f"):-s88_(X,"f") .

% sh:minCount 1 for ex_Issue_submittedBy
s89_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
ex_submittedBy_(X,@new(s89,X,ex_submittedBy,1..1),"t"):-choose(s89,X,ex_submittedBy,1) .
choose(s89,X,ex_submittedBy,1);choose(s89,X,ex_submittedBy,0):-s89_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s90_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s89_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
ex_submittedBy_(X,Y,"f"):-s89_(X,"f"),ex_submittedBy_(X,Y,"t*"),ex_submittedBy_(X,Y,"f") .
1 {s90_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s89_(X,"t*") .


s91_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
s92_(X,"f"):-s91_(X,"t*") .
s92_(X,"t*"):-s91_(X,"f") .
ex_submittedBy_(X,@new(s92,X,ex_submittedBy,1..1),"t"):-choose(s92,X,ex_submittedBy,1) .
choose(s92,X,ex_submittedBy,1);choose(s92,X,ex_submittedBy,0):-s92_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy_(X,Y,"t*");s93_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s92_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
ex_submittedBy_(X,Y,"f"):-s92_(X,"f"),ex_submittedBy_(X,Y,"t*"),ex_submittedBy_(X,Y,"f") .
1 {s93_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s92_(X,"t*") .
s94_(X,"f"):-s93_(X,"t*") .
s94_(X,"t*"):-s93_(X,"f") .


s89_(X,"f");s91_(X,"f"):-ex_Issue_submittedBy_(X,"f") .
s31_(X,"f");s38_(X,"f");s45_(X,"f");s88_(X,"f"):-ex_Issue_(X,"f") .

% Interpretation Rules

ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
node1hmcimj6lx462_st_(X,Y,"t**"):-ex_firstName_(X,Y,"t**"),node1hmcimj6lx462_st_(X,Y,"t*"),not node1hmcimj6lx462_st_(X,Y,"f") .
ex_lastName_(X,Y,"t**"):-ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f") .
node1hmcimj6lx463_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),node1hmcimj6lx463_st_(X,Y,"t*"),not node1hmcimj6lx463_st_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .
ex_assignedTo_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f") .
ex_Issue_assignedTo_st_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t**"),ex_Issue_assignedTo_st_(X,Y,"t*"),not ex_Issue_assignedTo_st_(X,Y,"f") .
ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .
ex_submittedBy_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f") .
ex_Issue_submittedBy_st_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t**"),ex_Issue_submittedBy_st_(X,Y,"t*"),not ex_Issue_submittedBy_st_(X,Y,"f") .
ex_email_(X,Y,"t**"):-ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f") .
node1hmcimj6lx459_st_(X,Y,"t**"):-ex_email_(X,Y,"t**"),node1hmcimj6lx459_st_(X,Y,"t*"),not node1hmcimj6lx459_st_(X,Y,"f") .
node1hmcimj6lx460_st_(X,Y,"t**"):-ex_lastName_(X,Y,"t**"),node1hmcimj6lx460_st_(X,Y,"t*"),not node1hmcimj6lx460_st_(X,Y,"f") .

% Program Constraints

:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-s2_(X,"f") .
:-s6_(X,"f") .
:-ex_lastName_(X,Y,"t"),ex_lastName_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-s24_(X,"f") .
:-s26_(X,"f") .
:-s30_(X,"f") .
:-ex_assignedTo_(X,Y,"t"),ex_assignedTo_(X,Y,"f") .
:-ex_Person_(X,"t"),ex_Person_(X,"f") .
:-ex_submittedBy_(X,Y,"t"),ex_submittedBy_(X,Y,"f") .
:-ex_email_(X,Y,"t"),ex_email_(X,Y,"f") .
:-s50_(X,"f") .
:-s52_(X,"f") .
:-s56_(X,"f") .
:-s58_(X,"f") .
:-s61_(X,"f") .
:-s65_(X,"f") .
:-s72_(X,"f") .
:-s74_(X,"f") .
:-s78_(X,"f") .
:-s80_(X,"f") .
:-s83_(X,"f") .
:-s87_(X,"f") .
:-s90_(X,"f") .
:-s94_(X,"f") .

% Change Set Rules

add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
add(ex_lastName(X,Y)):-ex_lastName_(X,Y,"t**"),not ex_lastName(X,Y) .
del(ex_lastName(X,Y)):-ex_lastName_(X,Y,"f"),ex_lastName(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
add(ex_assignedTo(X,Y)):-ex_assignedTo_(X,Y,"t**"),not ex_assignedTo(X,Y) .
del(ex_assignedTo(X,Y)):-ex_assignedTo_(X,Y,"f"),ex_assignedTo(X,Y) .
add(ex_Person(X)):-ex_Person_(X,"t**"),not ex_Person(X) .
del(ex_Person(X)):-ex_Person_(X,"f"),ex_Person(X) .
add(ex_submittedBy(X,Y)):-ex_submittedBy_(X,Y,"t**"),not ex_submittedBy(X,Y) .
del(ex_submittedBy(X,Y)):-ex_submittedBy_(X,Y,"f"),ex_submittedBy(X,Y) .
add(ex_email(X,Y)):-ex_email_(X,Y,"t**"),not ex_email(X,Y) .
del(ex_email(X,Y)):-ex_email_(X,Y,"f"),ex_email(X,Y) .
% Get optimal models: --opt-mode=optN -n 100 --quiet=1 -t 3
% Change the scores of add and del to prioritize additions or deletions
#minimize { 1@2,A: add(A); 1@2,D: del(D) } .
#minimize { 1@3,X,S: skipTarget(X,S) } .

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
