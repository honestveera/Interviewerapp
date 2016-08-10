CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "candidatedetails" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "candidatename" varchar, "candidateemail" varchar, "candidatecontact" decimal, "yoe" varchar, "skills" varchar, "jobdescription" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "attachedfile_file_name" varchar, "attachedfile_content_type" varchar, "attachedfile_file_size" integer, "attachedfile_updated_at" datetime, "status" varchar, "jobtitle" varchar);
CREATE TABLE "candidateprofiles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "candidatename" varchar, "candidateemail" varchar, "skills" varchar, "YOE" text, "interviewername" varchar, "intervieweremail" varchar, "scheduledate" varchar, "scheduletime" varchar, "jobdescription" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "candidatecontact" decimal, "jobtitle" varchar, "candidatedetail_id" integer, "status" varchar);
CREATE INDEX "index_candidateprofiles_on_candidatedetail_id" ON "candidateprofiles" ("candidatedetail_id");
CREATE TABLE "companies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "companyname" varchar, "companyaddress" text, "contactperson" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "companyemail" varchar, "username" varchar, "password" varchar, "password_confirmation" varchar, "contactnumber" decimal);
CREATE TABLE "interviewerfeedbacks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "interviewername" varchar, "candidatename" varchar, "status" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "skills" varchar, "attachedfile_file_name" varchar, "attachedfile_content_type" varchar, "attachedfile_file_size" integer, "attachedfile_updated_at" datetime, "relevanceexperience" integer, "personality" integer, "communication" integer, "technicalskills" integer, "analyticalskills" integer, "jobknowledge" integer, "timemanagement" integer, "commitementtask" integer, "leadership" integer, "teamwork" integer, "goalsettings" integer, "creativity" integer, "flexibility" integer, "assertiveness" integer, "scheduletime" varchar, "scheduledate" varchar, "overallassesment" float, "candidatemail" varchar);
CREATE TABLE "interviewers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "interviewername" varchar, "interviewercompany" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "companyemail" varchar, "skills" varchar);
CREATE TABLE "skillsets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "skills" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20160719074935');
INSERT INTO schema_migrations (version) VALUES ('20160719074952');

INSERT INTO schema_migrations (version) VALUES ('20160719075027');

INSERT INTO schema_migrations (version) VALUES ('20160719092152');

INSERT INTO schema_migrations (version) VALUES ('20160719101800');

INSERT INTO schema_migrations (version) VALUES ('20160719125516');

INSERT INTO schema_migrations (version) VALUES ('20160719125641');

INSERT INTO schema_migrations (version) VALUES ('20160719135450');

INSERT INTO schema_migrations (version) VALUES ('20160720043313');

INSERT INTO schema_migrations (version) VALUES ('20160720044739');

INSERT INTO schema_migrations (version) VALUES ('20160720054058');

INSERT INTO schema_migrations (version) VALUES ('20160720061412');

INSERT INTO schema_migrations (version) VALUES ('20160720095042');

INSERT INTO schema_migrations (version) VALUES ('20160720103000');

INSERT INTO schema_migrations (version) VALUES ('20160720123155');

INSERT INTO schema_migrations (version) VALUES ('20160720125432');

INSERT INTO schema_migrations (version) VALUES ('20160720125500');

INSERT INTO schema_migrations (version) VALUES ('20160721044234');

INSERT INTO schema_migrations (version) VALUES ('20160721111257');

INSERT INTO schema_migrations (version) VALUES ('20160721111419');

INSERT INTO schema_migrations (version) VALUES ('20160721112402');

INSERT INTO schema_migrations (version) VALUES ('20160721112501');

INSERT INTO schema_migrations (version) VALUES ('20160721112812');

INSERT INTO schema_migrations (version) VALUES ('20160721112847');

INSERT INTO schema_migrations (version) VALUES ('20160721113201');

INSERT INTO schema_migrations (version) VALUES ('20160721113736');

INSERT INTO schema_migrations (version) VALUES ('20160721113808');

INSERT INTO schema_migrations (version) VALUES ('20160721114602');

INSERT INTO schema_migrations (version) VALUES ('20160725043541');

INSERT INTO schema_migrations (version) VALUES ('20160725043624');

INSERT INTO schema_migrations (version) VALUES ('20160725043810');

INSERT INTO schema_migrations (version) VALUES ('20160725043851');

INSERT INTO schema_migrations (version) VALUES ('20160725053131');

INSERT INTO schema_migrations (version) VALUES ('20160725060957');

INSERT INTO schema_migrations (version) VALUES ('20160725101018');

INSERT INTO schema_migrations (version) VALUES ('20160725101057');

INSERT INTO schema_migrations (version) VALUES ('20160725101236');

INSERT INTO schema_migrations (version) VALUES ('20160725105037');

INSERT INTO schema_migrations (version) VALUES ('20160725105604');

INSERT INTO schema_migrations (version) VALUES ('20160725111334');

INSERT INTO schema_migrations (version) VALUES ('20160726060053');

INSERT INTO schema_migrations (version) VALUES ('20160726060144');

INSERT INTO schema_migrations (version) VALUES ('20160726060418');

INSERT INTO schema_migrations (version) VALUES ('20160726060538');

INSERT INTO schema_migrations (version) VALUES ('20160727115937');

INSERT INTO schema_migrations (version) VALUES ('20160728044303');

INSERT INTO schema_migrations (version) VALUES ('20160728044406');

INSERT INTO schema_migrations (version) VALUES ('20160728053633');

INSERT INTO schema_migrations (version) VALUES ('20160728053818');

INSERT INTO schema_migrations (version) VALUES ('20160728054146');

INSERT INTO schema_migrations (version) VALUES ('20160728054230');

INSERT INTO schema_migrations (version) VALUES ('20160728054316');

INSERT INTO schema_migrations (version) VALUES ('20160728054810');

INSERT INTO schema_migrations (version) VALUES ('20160728054937');

INSERT INTO schema_migrations (version) VALUES ('20160728055030');

INSERT INTO schema_migrations (version) VALUES ('20160728055110');

INSERT INTO schema_migrations (version) VALUES ('20160728055136');

INSERT INTO schema_migrations (version) VALUES ('20160728055233');

INSERT INTO schema_migrations (version) VALUES ('20160728055316');

INSERT INTO schema_migrations (version) VALUES ('20160728055344');

INSERT INTO schema_migrations (version) VALUES ('20160728055435');

INSERT INTO schema_migrations (version) VALUES ('20160728055528');

INSERT INTO schema_migrations (version) VALUES ('20160729120747');

INSERT INTO schema_migrations (version) VALUES ('20160804062523');

INSERT INTO schema_migrations (version) VALUES ('20160804064052');

INSERT INTO schema_migrations (version) VALUES ('20160804084635');

INSERT INTO schema_migrations (version) VALUES ('20160804084653');

INSERT INTO schema_migrations (version) VALUES ('20160804084757');

INSERT INTO schema_migrations (version) VALUES ('20160804084820');

INSERT INTO schema_migrations (version) VALUES ('20160804084855');

INSERT INTO schema_migrations (version) VALUES ('20160804084919');

INSERT INTO schema_migrations (version) VALUES ('20160804095019');

INSERT INTO schema_migrations (version) VALUES ('20160804095116');

INSERT INTO schema_migrations (version) VALUES ('20160804111044');

INSERT INTO schema_migrations (version) VALUES ('20160808095100');

INSERT INTO schema_migrations (version) VALUES ('20160809044618');
