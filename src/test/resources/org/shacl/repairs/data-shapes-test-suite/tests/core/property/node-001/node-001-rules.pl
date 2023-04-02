
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
sh_node("ex_Issue_assignedTo","node1g835dclmx448") .
rdfs_comment("node1g835dclmx448","All assignees must have an email and a last name.") .
xsd_string("All assignees must have an email and a last name.") .
sh_property("node1g835dclmx448","node1g835dclmx449") .
sh_path("node1g835dclmx449","ex_email") .
sh_maxCount("node1g835dclmx449","1") .
xsd_integer("1") .
sh_minCount("node1g835dclmx449","1") .
sh_property("node1g835dclmx448","node1g835dclmx450") .
sh_path("node1g835dclmx450","ex_lastName") .
sh_maxCount("node1g835dclmx450","1") .
sh_minCount("node1g835dclmx450","1") .
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
sh_property("ex_Person","node1g835dclmx451") .
sh_path("node1g835dclmx451","ex_email") .
ex_datatype("node1g835dclmx451","xsd_string") .
rdfs_label("node1g835dclmx451","email") .
xsd_string("email") .
sh_property("ex_Person","node1g835dclmx452") .
sh_path("node1g835dclmx452","ex_firstName") .
rdfs_label("node1g835dclmx452","first name") .
xsd_string("first name") .
sh_datatype("node1g835dclmx452","xsd_string") .
sh_maxCount("node1g835dclmx452","1") .
sh_minCount("node1g835dclmx452","1") .
sh_property("ex_Person","node1g835dclmx453") .
sh_path("node1g835dclmx453","ex_lastName") .
rdfs_label("node1g835dclmx453","last name") .
xsd_string("last name") .
sh_datatype("node1g835dclmx453","xsd_string") .
mf_Manifest("http://repairs.shacl.org") .
mf_entries("http://repairs.shacl.org","node1g835dclmx454") .
rdf_first("node1g835dclmx454","http://repairs.shacl.org/node_001") .
rdf_rest("node1g835dclmx454","rdf_nil") .
sht_Validate("http://repairs.shacl.org/node_001") .
rdfs_label("http://repairs.shacl.org/node_001","Test of sh:node at property shape 001") .
xsd_string("Test of sh:node at property shape 001") .
mf_action("http://repairs.shacl.org/node_001","node1g835dclmx455") .
sht_dataGraph("node1g835dclmx455","http://repairs.shacl.org") .
sht_shapesGraph("node1g835dclmx455","http://repairs.shacl.org") .
mf_result("http://repairs.shacl.org/node_001","node1g835dclmx456") .
sh_ValidationReport("node1g835dclmx456") .
sh_conforms("node1g835dclmx456","false") .
xsd_boolean("false") .
sh_result("node1g835dclmx456","node1g835dclmx457") .
sh_ValidationResult("node1g835dclmx457") .
sh_focusNode("node1g835dclmx457","ex_Issue_1") .
sh_resultPath("node1g835dclmx457","ex_assignedTo") .
sh_resultSeverity("node1g835dclmx457","sh_Violation") .
sh_sourceConstraintComponent("node1g835dclmx457","sh_NodeConstraintComponent") .
sh_sourceShape("node1g835dclmx457","ex_Issue_assignedTo") .
sh_value("node1g835dclmx457","ex_Anon") .
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

ex_lastName_(X,Y,"t*"):-ex_lastName(X,Y) .
ex_lastName_(X,Y,"t*"):-ex_lastName_(X,Y,"t") .
xsd_string_(X,"t*"):-xsd_string(X) .
xsd_string_(X,"t*"):-xsd_string_(X,"t") .
ex_firstName_(X,Y,"t*"):-ex_firstName(X,Y) .
ex_firstName_(X,Y,"t*"):-ex_firstName_(X,Y,"t") .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy(X,Y) .
ex_submittedBy_(X,Y,"t*"):-ex_submittedBy_(X,Y,"t") .
ex_Person_(X,"t*"):-ex_Person(X) .
ex_Person_(X,"t*"):-ex_Person_(X,"t") .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo(X,Y) .
ex_assignedTo_(X,Y,"t*"):-ex_assignedTo_(X,Y,"t") .
ex_email_(X,Y,"t*"):-ex_email(X,Y) .
ex_email_(X,Y,"t*"):-ex_email_(X,Y,"t") .

% Repair Rules

node1g835dclmx463_(X,"t*"):-ex_Person_(X,"t*") .

% sh:minCount 0 for node1g835dclmx463
s0_(X,"t*"):-node1g835dclmx463_(X,"t*") .
choose(s0,X,ex_lastName,0):-s0_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s1_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s0_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
0 {s1_(Y,"t*"):ex_lastName_(X,Y,"t**")} 0:-s0_(X,"t*") .

xsd_string_(X,"t"):-s1_(X,"t*") .
xsd_string_(X,"f"):-s1_(X,"f") .

% universal for node1g835dclmx463
s2_(X,"t*"):-node1g835dclmx463_(X,"t*") .
s3_(X,"f"):-s2_(X,"t*") .
s3_(X,"t*"):-s2_(X,"f") .
ex_lastName_(X,@new(s3,X,ex_lastName,1..1),"t"):-choose(s3,X,ex_lastName,1) .
choose(s3,X,ex_lastName,1);choose(s3,X,ex_lastName,0):-s3_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s4_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s3_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s4_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s3_(X,"t*") .
s5_(X,"f"):-s4_(X,"t*") .
s5_(X,"t*"):-s4_(X,"f") .

xsd_string_(X,"t"):-s5_(X,"t*") .
xsd_string_(X,"f"):-s5_(X,"f") .

s0_(X,"f");s2_(X,"f"):-node1g835dclmx463_(X,"f") .
node1g835dclmx462_(X,"t*"):-ex_Person_(X,"t*") .

% sh:maxCount 1 for node1g835dclmx462
s6_(X,"t*"):-node1g835dclmx462_(X,"t*") .
s7_(X,"f"):-s6_(X,"t*") .
s7_(X,"t*"):-s6_(X,"f") .
ex_firstName_(X,@new(s7,X,ex_firstName,1..1),"t"):-choose(s7,X,ex_firstName,1) .
ex_firstName_(X,@new(s7,X,ex_firstName,1..2),"t"):-choose(s7,X,ex_firstName,2) .
choose(s7,X,ex_firstName,2);choose(s7,X,ex_firstName,1);choose(s7,X,ex_firstName,0):-s7_(X,"t*") .
(C-1) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s8_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-1):-s7_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>1 .
2 {s8_(Y,"t*"):ex_firstName_(X,Y,"t**")} 2:-s7_(X,"t*") .

xsd_string_(X,"t"):-s8_(X,"t*") .
xsd_string_(X,"f"):-s8_(X,"f") .

% sh:minCount 1 for node1g835dclmx462
s9_(X,"t*"):-node1g835dclmx462_(X,"t*") .
ex_firstName_(X,@new(s9,X,ex_firstName,1..1),"t"):-choose(s9,X,ex_firstName,1) .
choose(s9,X,ex_firstName,1);choose(s9,X,ex_firstName,0):-s9_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s10_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s9_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s10_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s9_(X,"t*") .

xsd_string_(X,"t"):-s10_(X,"t*") .
xsd_string_(X,"f"):-s10_(X,"f") .

% universal for node1g835dclmx462
s11_(X,"t*"):-node1g835dclmx462_(X,"t*") .
s12_(X,"f"):-s11_(X,"t*") .
s12_(X,"t*"):-s11_(X,"f") .
ex_firstName_(X,@new(s12,X,ex_firstName,1..1),"t"):-choose(s12,X,ex_firstName,1) .
choose(s12,X,ex_firstName,1);choose(s12,X,ex_firstName,0):-s12_(X,"t*") .
(C-0) {ex_firstName_(X,Y,"f"):ex_firstName(X,Y);s13_(Y,"f"):ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f")} (C-0):-s12_(X,"f"),#count {Y:ex_firstName_(X,Y,"t*")}=C,C>0 .
1 {s13_(Y,"t*"):ex_firstName_(X,Y,"t**")} 1:-s12_(X,"t*") .
s14_(X,"f"):-s13_(X,"t*") .
s14_(X,"t*"):-s13_(X,"f") .

xsd_string_(X,"t"):-s14_(X,"t*") .
xsd_string_(X,"f"):-s14_(X,"f") .

s6_(X,"f");s9_(X,"f");s11_(X,"f"):-node1g835dclmx462_(X,"f") .
node1g835dclmx463_(X,"f");node1g835dclmx462_(X,"f"):-ex_Person_(X,"f") .
ex_Issue_submittedBy_(X,"t*"):-ex_Issue_(X,"t*") .

% sh:minCount 1 for ex_Issue_submittedBy
s15_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
ex_submittedBy_(X,@new(s15,X,ex_submittedBy,1..1),"t"):-choose(s15,X,ex_submittedBy,1) .
choose(s15,X,ex_submittedBy,1);choose(s15,X,ex_submittedBy,0):-s15_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy(X,Y);s16_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s15_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s16_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s15_(X,"t*") .

ex_Person_(X,"t"):-s16_(X,"t*") .
ex_Person_(X,"f"):-s16_(X,"f") .

% universal for ex_Issue_submittedBy
s17_(X,"t*"):-ex_Issue_submittedBy_(X,"t*") .
s18_(X,"f"):-s17_(X,"t*") .
s18_(X,"t*"):-s17_(X,"f") .
ex_submittedBy_(X,@new(s18,X,ex_submittedBy,1..1),"t"):-choose(s18,X,ex_submittedBy,1) .
choose(s18,X,ex_submittedBy,1);choose(s18,X,ex_submittedBy,0):-s18_(X,"t*") .
(C-0) {ex_submittedBy_(X,Y,"f"):ex_submittedBy(X,Y);s19_(Y,"f"):ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f")} (C-0):-s18_(X,"f"),#count {Y:ex_submittedBy_(X,Y,"t*")}=C,C>0 .
1 {s19_(Y,"t*"):ex_submittedBy_(X,Y,"t**")} 1:-s18_(X,"t*") .
s20_(X,"f"):-s19_(X,"t*") .
s20_(X,"t*"):-s19_(X,"f") .

ex_Person_(X,"t"):-s20_(X,"t*") .
ex_Person_(X,"f"):-s20_(X,"f") .

s15_(X,"f");s17_(X,"f"):-ex_Issue_submittedBy_(X,"f") .
ex_Issue_assignedTo_(X,"t*"):-ex_Issue_(X,"t*") .

% sh:minCount 0 for ex_Issue_assignedTo
s21_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
choose(s21,X,ex_assignedTo,0):-s21_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo(X,Y);s22_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s21_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
0 {s22_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 0:-s21_(X,"t*") .

s23_(X,"t*"):-s22_(X,"t*") .
ex_Person_(X,"t"):-s23_(X,"t*") .
ex_Person_(X,"f"):-s23_(X,"f") .
s24_(X,"t*"):-s22_(X,"t*") .
node1g835dclmx459_(X,"t*"):-s24_(X,"t*") .

% sh:minCount 1 for node1g835dclmx459
s25_(X,"t*"):-node1g835dclmx459_(X,"t*") .
ex_email_(X,@new(s25,X,ex_email,1..1),"t"):-choose(s25,X,ex_email,1) .
choose(s25,X,ex_email,1);choose(s25,X,ex_email,0):-s25_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email(X,Y);s26_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s25_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s26_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s25_(X,"t*") .


% sh:maxCount 1 for node1g835dclmx459
s27_(X,"t*"):-node1g835dclmx459_(X,"t*") .
s28_(X,"f"):-s27_(X,"t*") .
s28_(X,"t*"):-s27_(X,"f") .
ex_email_(X,@new(s28,X,ex_email,1..1),"t"):-choose(s28,X,ex_email,1) .
ex_email_(X,@new(s28,X,ex_email,1..2),"t"):-choose(s28,X,ex_email,2) .
choose(s28,X,ex_email,2);choose(s28,X,ex_email,1);choose(s28,X,ex_email,0):-s28_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email(X,Y);s29_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s28_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
2 {s29_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s28_(X,"t*") .


% universal for node1g835dclmx459
s30_(X,"t*"):-node1g835dclmx459_(X,"t*") .
s31_(X,"f"):-s30_(X,"t*") .
s31_(X,"t*"):-s30_(X,"f") .
ex_email_(X,@new(s31,X,ex_email,1..1),"t"):-choose(s31,X,ex_email,1) .
choose(s31,X,ex_email,1);choose(s31,X,ex_email,0):-s31_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email(X,Y);s32_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s31_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s32_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s31_(X,"t*") .
s33_(X,"f"):-s32_(X,"t*") .
s33_(X,"t*"):-s32_(X,"f") .


s25_(X,"f");s27_(X,"f");s30_(X,"f"):-node1g835dclmx459_(X,"f") .
node1g835dclmx460_(X,"t*"):-s24_(X,"t*") .

% sh:maxCount 1 for node1g835dclmx460
s34_(X,"t*"):-node1g835dclmx460_(X,"t*") .
s35_(X,"f"):-s34_(X,"t*") .
s35_(X,"t*"):-s34_(X,"f") .
ex_lastName_(X,@new(s35,X,ex_lastName,1..1),"t"):-choose(s35,X,ex_lastName,1) .
ex_lastName_(X,@new(s35,X,ex_lastName,1..2),"t"):-choose(s35,X,ex_lastName,2) .
choose(s35,X,ex_lastName,2);choose(s35,X,ex_lastName,1);choose(s35,X,ex_lastName,0):-s35_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s36_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s35_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
2 {s36_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s35_(X,"t*") .


% sh:minCount 1 for node1g835dclmx460
s37_(X,"t*"):-node1g835dclmx460_(X,"t*") .
ex_lastName_(X,@new(s37,X,ex_lastName,1..1),"t"):-choose(s37,X,ex_lastName,1) .
choose(s37,X,ex_lastName,1);choose(s37,X,ex_lastName,0):-s37_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s38_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s37_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s38_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s37_(X,"t*") .


% universal for node1g835dclmx460
s39_(X,"t*"):-node1g835dclmx460_(X,"t*") .
s40_(X,"f"):-s39_(X,"t*") .
s40_(X,"t*"):-s39_(X,"f") .
ex_lastName_(X,@new(s40,X,ex_lastName,1..1),"t"):-choose(s40,X,ex_lastName,1) .
choose(s40,X,ex_lastName,1);choose(s40,X,ex_lastName,0):-s40_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s41_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s40_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s41_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s40_(X,"t*") .
s42_(X,"f"):-s41_(X,"t*") .
s42_(X,"t*"):-s41_(X,"f") .


s34_(X,"f");s37_(X,"f");s39_(X,"f"):-node1g835dclmx460_(X,"f") .
node1g835dclmx459_(X,"f");node1g835dclmx460_(X,"f"):-s24_(X,"f") .
s23_(X,"f");s24_(X,"f"):-s22_(X,"f") .

% universal for ex_Issue_assignedTo
s43_(X,"t*"):-ex_Issue_assignedTo_(X,"t*") .
s44_(X,"f"):-s43_(X,"t*") .
s44_(X,"t*"):-s43_(X,"f") .
ex_assignedTo_(X,@new(s44,X,ex_assignedTo,1..1),"t"):-choose(s44,X,ex_assignedTo,1) .
choose(s44,X,ex_assignedTo,1);choose(s44,X,ex_assignedTo,0):-s44_(X,"t*") .
(C-0) {ex_assignedTo_(X,Y,"f"):ex_assignedTo(X,Y);s45_(Y,"f"):ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f")} (C-0):-s44_(X,"f"),#count {Y:ex_assignedTo_(X,Y,"t*")}=C,C>0 .
1 {s45_(Y,"t*"):ex_assignedTo_(X,Y,"t**")} 1:-s44_(X,"t*") .
s46_(X,"f"):-s45_(X,"t*") .
s46_(X,"t*"):-s45_(X,"f") .

s47_(X,"t*"):-s46_(X,"t*") .
ex_Person_(X,"t"):-s47_(X,"t*") .
ex_Person_(X,"f"):-s47_(X,"f") .
s48_(X,"t*"):-s46_(X,"t*") .
node1g835dclmx459_(X,"t*"):-s48_(X,"t*") .

s49_(X,"t*"):-node1g835dclmx459_(X,"t*") .
ex_email_(X,@new(s49,X,ex_email,1..1),"t"):-choose(s49,X,ex_email,1) .
choose(s49,X,ex_email,1);choose(s49,X,ex_email,0):-s49_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email(X,Y);s50_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s49_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s50_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s49_(X,"t*") .


s51_(X,"t*"):-node1g835dclmx459_(X,"t*") .
s52_(X,"f"):-s51_(X,"t*") .
s52_(X,"t*"):-s51_(X,"f") .
ex_email_(X,@new(s52,X,ex_email,1..1),"t"):-choose(s52,X,ex_email,1) .
ex_email_(X,@new(s52,X,ex_email,1..2),"t"):-choose(s52,X,ex_email,2) .
choose(s52,X,ex_email,2);choose(s52,X,ex_email,1);choose(s52,X,ex_email,0):-s52_(X,"t*") .
(C-1) {ex_email_(X,Y,"f"):ex_email(X,Y);s53_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-1):-s52_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>1 .
2 {s53_(Y,"t*"):ex_email_(X,Y,"t**")} 2:-s52_(X,"t*") .


s54_(X,"t*"):-node1g835dclmx459_(X,"t*") .
s55_(X,"f"):-s54_(X,"t*") .
s55_(X,"t*"):-s54_(X,"f") .
ex_email_(X,@new(s55,X,ex_email,1..1),"t"):-choose(s55,X,ex_email,1) .
choose(s55,X,ex_email,1);choose(s55,X,ex_email,0):-s55_(X,"t*") .
(C-0) {ex_email_(X,Y,"f"):ex_email(X,Y);s56_(Y,"f"):ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f")} (C-0):-s55_(X,"f"),#count {Y:ex_email_(X,Y,"t*")}=C,C>0 .
1 {s56_(Y,"t*"):ex_email_(X,Y,"t**")} 1:-s55_(X,"t*") .
s57_(X,"f"):-s56_(X,"t*") .
s57_(X,"t*"):-s56_(X,"f") .


s49_(X,"f");s51_(X,"f");s54_(X,"f"):-node1g835dclmx459_(X,"f") .
node1g835dclmx460_(X,"t*"):-s48_(X,"t*") .

s58_(X,"t*"):-node1g835dclmx460_(X,"t*") .
s59_(X,"f"):-s58_(X,"t*") .
s59_(X,"t*"):-s58_(X,"f") .
ex_lastName_(X,@new(s59,X,ex_lastName,1..1),"t"):-choose(s59,X,ex_lastName,1) .
ex_lastName_(X,@new(s59,X,ex_lastName,1..2),"t"):-choose(s59,X,ex_lastName,2) .
choose(s59,X,ex_lastName,2);choose(s59,X,ex_lastName,1);choose(s59,X,ex_lastName,0):-s59_(X,"t*") .
(C-1) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s60_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-1):-s59_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>1 .
2 {s60_(Y,"t*"):ex_lastName_(X,Y,"t**")} 2:-s59_(X,"t*") .


s61_(X,"t*"):-node1g835dclmx460_(X,"t*") .
ex_lastName_(X,@new(s61,X,ex_lastName,1..1),"t"):-choose(s61,X,ex_lastName,1) .
choose(s61,X,ex_lastName,1);choose(s61,X,ex_lastName,0):-s61_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s62_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s61_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s62_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s61_(X,"t*") .


s63_(X,"t*"):-node1g835dclmx460_(X,"t*") .
s64_(X,"f"):-s63_(X,"t*") .
s64_(X,"t*"):-s63_(X,"f") .
ex_lastName_(X,@new(s64,X,ex_lastName,1..1),"t"):-choose(s64,X,ex_lastName,1) .
choose(s64,X,ex_lastName,1);choose(s64,X,ex_lastName,0):-s64_(X,"t*") .
(C-0) {ex_lastName_(X,Y,"f"):ex_lastName(X,Y);s65_(Y,"f"):ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f")} (C-0):-s64_(X,"f"),#count {Y:ex_lastName_(X,Y,"t*")}=C,C>0 .
1 {s65_(Y,"t*"):ex_lastName_(X,Y,"t**")} 1:-s64_(X,"t*") .
s66_(X,"f"):-s65_(X,"t*") .
s66_(X,"t*"):-s65_(X,"f") .


s58_(X,"f");s61_(X,"f");s63_(X,"f"):-node1g835dclmx460_(X,"f") .
node1g835dclmx459_(X,"f");node1g835dclmx460_(X,"f"):-s48_(X,"f") .
s47_(X,"f");s48_(X,"f"):-s46_(X,"f") .

s21_(X,"f");s43_(X,"f"):-ex_Issue_assignedTo_(X,"f") .
ex_Issue_submittedBy_(X,"f");ex_Issue_assignedTo_(X,"f"):-ex_Issue_(X,"f") .

% Interpretation Rules

ex_lastName_(X,Y,"t**"):-ex_lastName_(X,Y,"t*"),not ex_lastName_(X,Y,"f") .
xsd_string_(X,"t**"):-xsd_string_(X,"t*"),not xsd_string_(X,"f") .
ex_firstName_(X,Y,"t**"):-ex_firstName_(X,Y,"t*"),not ex_firstName_(X,Y,"f") .
ex_submittedBy_(X,Y,"t**"):-ex_submittedBy_(X,Y,"t*"),not ex_submittedBy_(X,Y,"f") .
ex_Person_(X,"t**"):-ex_Person_(X,"t*"),not ex_Person_(X,"f") .
ex_assignedTo_(X,Y,"t**"):-ex_assignedTo_(X,Y,"t*"),not ex_assignedTo_(X,Y,"f") .
ex_email_(X,Y,"t**"):-ex_email_(X,Y,"t*"),not ex_email_(X,Y,"f") .

% Program Constraints

:-ex_lastName_(X,Y,"t"),ex_lastName_(X,Y,"f") .
:-xsd_string_(X,"t"),xsd_string_(X,"f") .
:-ex_firstName_(X,Y,"t"),ex_firstName_(X,Y,"f") .
:-ex_submittedBy_(X,Y,"t"),ex_submittedBy_(X,Y,"f") .
:-ex_Person_(X,"t"),ex_Person_(X,"f") .
:-ex_assignedTo_(X,Y,"t"),ex_assignedTo_(X,Y,"f") .
:-ex_email_(X,Y,"t"),ex_email_(X,Y,"f") .
:-s26_(X,"f") .
:-s29_(X,"f") .
:-s33_(X,"f") .
:-s36_(X,"f") .
:-s38_(X,"f") .
:-s42_(X,"f") .
:-s50_(X,"f") .
:-s53_(X,"f") .
:-s57_(X,"f") .
:-s60_(X,"f") .
:-s62_(X,"f") .
:-s66_(X,"f") .

% Change Set Rules

add(ex_lastName(X,Y)):-ex_lastName_(X,Y,"t**"),not ex_lastName(X,Y) .
del(ex_lastName(X,Y)):-ex_lastName_(X,Y,"f"),ex_lastName(X,Y) .
add(xsd_string(X)):-xsd_string_(X,"t**"),not xsd_string(X) .
del(xsd_string(X)):-xsd_string_(X,"f"),xsd_string(X) .
add(ex_firstName(X,Y)):-ex_firstName_(X,Y,"t**"),not ex_firstName(X,Y) .
del(ex_firstName(X,Y)):-ex_firstName_(X,Y,"f"),ex_firstName(X,Y) .
add(ex_submittedBy(X,Y)):-ex_submittedBy_(X,Y,"t**"),not ex_submittedBy(X,Y) .
del(ex_submittedBy(X,Y)):-ex_submittedBy_(X,Y,"f"),ex_submittedBy(X,Y) .
add(ex_Person(X)):-ex_Person_(X,"t**"),not ex_Person(X) .
del(ex_Person(X)):-ex_Person_(X,"f"),ex_Person(X) .
add(ex_assignedTo(X,Y)):-ex_assignedTo_(X,Y,"t**"),not ex_assignedTo(X,Y) .
del(ex_assignedTo(X,Y)):-ex_assignedTo_(X,Y,"f"),ex_assignedTo(X,Y) .
add(ex_email(X,Y)):-ex_email_(X,Y,"t**"),not ex_email(X,Y) .
del(ex_email(X,Y)):-ex_email_(X,Y,"f"),ex_email(X,Y) .
% Get all optimal models: --opt-mode=optN -n 10 --quiet=1
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
