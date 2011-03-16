PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20110106062304');
INSERT INTO "schema_migrations" VALUES('20110106062311');
INSERT INTO "schema_migrations" VALUES('20110106062343');
INSERT INTO "schema_migrations" VALUES('20110106062357');
INSERT INTO "schema_migrations" VALUES('20110106062548');
INSERT INTO "schema_migrations" VALUES('20110106062558');
INSERT INTO "schema_migrations" VALUES('20110106062620');
INSERT INTO "schema_migrations" VALUES('20110131054555');
INSERT INTO "schema_migrations" VALUES('20110202065740');
INSERT INTO "schema_migrations" VALUES('20110204015113');
INSERT INTO "schema_migrations" VALUES('20110204015435');
INSERT INTO "schema_migrations" VALUES('20110204032510');
INSERT INTO "schema_migrations" VALUES('20110204032607');
INSERT INTO "schema_migrations" VALUES('20110204040114');
INSERT INTO "schema_migrations" VALUES('20110204040340');
INSERT INTO "schema_migrations" VALUES('20110205211631');
INSERT INTO "schema_migrations" VALUES('20110208020534');
INSERT INTO "schema_migrations" VALUES('20110208044652');
INSERT INTO "schema_migrations" VALUES('20110208054418');
INSERT INTO "schema_migrations" VALUES('20110209054109');
INSERT INTO "schema_migrations" VALUES('20110213054940');
INSERT INTO "schema_migrations" VALUES('20110310042222');
CREATE TABLE "softwares" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "created_at" datetime, "updated_at" datetime, "slug" varchar(255));
INSERT INTO "softwares" VALUES(1,'Adobe Photoshop','2011-01-06 06:30:21.530926','2011-02-13 06:15:14.250624','photoshop');
INSERT INTO "softwares" VALUES(2,'Adobe Illustrator','2011-01-30 21:01:59.892734','2011-02-13 06:15:23.509154','illustrator');
INSERT INTO "softwares" VALUES(3,'Eclipse IDE','2011-01-30 21:02:09.075259','2011-02-13 06:15:32.493668','eclipse');
INSERT INTO "softwares" VALUES(4,'JetBrains RubyMine','2011-01-30 21:02:48.826533','2011-02-13 06:15:40.402120','rubymine');
INSERT INTO "softwares" VALUES(5,'Git','2011-01-30 21:03:06.626551','2011-02-13 06:15:47.949552','git');
INSERT INTO "softwares" VALUES(6,'Perforce','2011-01-30 21:03:14.724014','2011-02-13 06:15:55.756998','perforce');
INSERT INTO "softwares" VALUES(7,'Subversion/SVN','2011-01-30 21:03:24.850593','2011-02-13 06:16:06.268600','subversion');
INSERT INTO "softwares" VALUES(8,'YSlow','2011-02-05 21:57:27.937590','2011-02-13 06:16:14.055045','yslow');
INSERT INTO "softwares" VALUES(9,'Google PageSpeed','2011-02-05 21:57:37.352128','2011-02-13 06:16:22.978555','pagespeed');
INSERT INTO "softwares" VALUES(10,'WordPress','2011-02-11 02:21:49.356624','2011-02-13 06:16:36.356321','wordpress');
INSERT INTO "softwares" VALUES(11,'Selenium IDE','2011-02-13 06:19:08.504023','2011-02-13 06:19:08.504023','selenium-ide');
INSERT INTO "softwares" VALUES(12,'Selenium RC','2011-02-13 06:19:24.309927','2011-02-13 06:19:24.309927','selenium-rc');
INSERT INTO "softwares" VALUES(13,'Cucumber','2011-02-13 06:19:35.432563','2011-02-13 06:19:35.432563','cucumber');
CREATE TABLE "job_skills" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "job_id" integer, "skill_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "job_skills" VALUES(1,1,1,'2011-01-06 06:30:48.290456','2011-01-06 06:30:48.290456');
INSERT INTO "job_skills" VALUES(2,1,4,'2011-01-30 21:31:17.445260','2011-01-30 21:31:17.445260');
INSERT INTO "job_skills" VALUES(3,1,5,'2011-01-30 21:32:10.936320','2011-01-30 21:32:10.936320');
INSERT INTO "job_skills" VALUES(4,2,2,'2011-01-30 21:32:34.835687','2011-01-30 21:32:34.835687');
INSERT INTO "job_skills" VALUES(5,2,10,'2011-01-30 21:33:34.426095','2011-01-30 21:33:34.426095');
INSERT INTO "job_skills" VALUES(6,2,8,'2011-01-30 21:33:53.287174','2011-01-30 21:33:53.287174');
INSERT INTO "job_skills" VALUES(7,2,1,'2011-01-30 21:34:08.128023','2011-01-30 21:34:08.128023');
INSERT INTO "job_skills" VALUES(8,2,4,'2011-01-30 21:34:17.367551','2011-01-30 21:34:17.367551');
INSERT INTO "job_skills" VALUES(9,2,5,'2011-01-30 21:34:31.929384','2011-01-30 21:34:31.929384');
INSERT INTO "job_skills" VALUES(10,3,7,'2011-01-30 21:34:57.197829','2011-01-30 21:34:57.197829');
INSERT INTO "job_skills" VALUES(11,3,8,'2011-01-30 21:35:05.770320','2011-01-30 21:35:05.770320');
INSERT INTO "job_skills" VALUES(12,3,6,'2011-01-30 21:35:14.161800','2011-01-30 21:35:14.161800');
INSERT INTO "job_skills" VALUES(13,3,15,'2011-01-30 21:35:25.448445','2011-01-30 21:35:25.448445');
INSERT INTO "job_skills" VALUES(14,3,16,'2011-01-30 21:35:34.768978','2011-01-30 21:35:34.768978');
INSERT INTO "job_skills" VALUES(15,3,11,'2011-01-30 21:36:08.296896','2011-01-30 21:36:08.296896');
INSERT INTO "job_skills" VALUES(16,3,13,'2011-01-30 21:36:17.213406','2011-01-30 21:36:17.213406');
INSERT INTO "job_skills" VALUES(17,3,9,'2011-01-30 21:36:32.278268','2011-01-30 21:36:32.278268');
INSERT INTO "job_skills" VALUES(18,3,5,'2011-01-30 21:39:01.577807','2011-01-30 21:39:01.577807');
INSERT INTO "job_skills" VALUES(19,2,14,'2011-01-30 21:39:28.941372','2011-01-30 21:39:28.941372');
INSERT INTO "job_skills" VALUES(20,4,8,'2011-01-30 21:39:43.283192','2011-01-30 21:39:43.283192');
INSERT INTO "job_skills" VALUES(21,4,20,'2011-01-30 21:39:52.734733','2011-01-30 21:39:52.734733');
INSERT INTO "job_skills" VALUES(22,4,19,'2011-01-30 21:40:07.629585','2011-01-30 21:40:07.629585');
INSERT INTO "job_skills" VALUES(23,4,17,'2011-01-30 21:40:17.444146','2011-01-30 21:40:17.444146');
INSERT INTO "job_skills" VALUES(24,4,18,'2011-01-30 21:40:25.145587','2011-01-30 21:40:25.145587');
INSERT INTO "job_skills" VALUES(25,4,16,'2011-01-30 21:40:35.348170','2011-01-30 21:40:35.348170');
INSERT INTO "job_skills" VALUES(26,4,13,'2011-01-30 21:40:44.357686','2011-01-30 21:40:44.357686');
INSERT INTO "job_skills" VALUES(27,4,12,'2011-01-30 21:40:52.500151','2011-01-30 21:40:52.500151');
INSERT INTO "job_skills" VALUES(28,4,11,'2011-01-30 21:40:59.780568','2011-01-30 21:40:59.780568');
INSERT INTO "job_skills" VALUES(29,4,10,'2011-01-30 21:41:07.683020','2011-01-30 21:41:07.683020');
INSERT INTO "job_skills" VALUES(30,4,9,'2011-01-30 21:41:16.225508','2011-01-30 21:41:16.225508');
INSERT INTO "job_skills" VALUES(31,4,6,'2011-01-30 21:41:24.995010','2011-01-30 21:41:24.995010');
INSERT INTO "job_skills" VALUES(32,4,5,'2011-01-30 21:41:35.249596','2011-01-30 21:41:35.249596');
INSERT INTO "job_skills" VALUES(33,4,4,'2011-01-30 21:41:44.301114','2011-01-30 21:41:44.301114');
INSERT INTO "job_skills" VALUES(34,4,3,'2011-01-30 21:41:51.642534','2011-01-30 21:41:58.108904');
INSERT INTO "job_skills" VALUES(38,1,6,'2011-02-09 04:51:26.500840','2011-02-09 04:51:26.500840');
INSERT INTO "job_skills" VALUES(39,5,2,'2011-02-11 02:21:08.852169','2011-02-11 02:21:08.852169');
INSERT INTO "job_skills" VALUES(40,5,3,'2011-02-11 02:21:19.840874','2011-02-11 02:21:19.840874');
INSERT INTO "job_skills" VALUES(41,5,8,'2011-02-11 02:21:28.355653','2011-02-11 02:21:28.355653');
INSERT INTO "job_skills" VALUES(42,5,24,'2011-02-11 02:23:25.452972','2011-02-11 02:23:25.452972');
INSERT INTO "job_skills" VALUES(43,7,23,'2011-02-11 02:35:26.300661','2011-02-11 02:35:26.300661');
INSERT INTO "job_skills" VALUES(44,6,2,'2011-02-11 03:53:42.389145','2011-02-11 03:53:42.389145');
INSERT INTO "job_skills" VALUES(45,6,5,'2011-02-11 03:53:50.024582','2011-02-11 03:53:50.024582');
INSERT INTO "job_skills" VALUES(46,6,8,'2011-02-11 03:53:57.167990','2011-02-11 03:53:57.167990');
INSERT INTO "job_skills" VALUES(47,6,3,'2011-02-11 03:54:03.381345','2011-02-11 03:54:03.381345');
INSERT INTO "job_skills" VALUES(48,6,4,'2011-02-11 03:54:31.863975','2011-02-11 03:54:31.863975');
INSERT INTO "job_skills" VALUES(49,6,9,'2011-02-11 03:54:44.058672','2011-02-11 03:54:44.058672');
INSERT INTO "job_skills" VALUES(50,6,10,'2011-02-11 03:54:53.732225','2011-02-11 03:54:53.732225');
INSERT INTO "job_skills" VALUES(51,1,25,'2011-02-11 03:58:01.618972','2011-02-11 03:58:01.618972');
INSERT INTO "job_skills" VALUES(52,7,1,'2011-02-12 20:34:11.180852','2011-02-12 20:34:11.180852');
INSERT INTO "job_skills" VALUES(53,7,5,'2011-02-12 20:34:21.017414','2011-02-12 20:34:21.017414');
INSERT INTO "job_skills" VALUES(54,7,9,'2011-02-12 20:34:37.397351','2011-02-12 20:34:37.397351');
INSERT INTO "job_skills" VALUES(55,7,10,'2011-02-12 20:34:46.056847','2011-02-12 20:34:46.056847');
INSERT INTO "job_skills" VALUES(56,7,4,'2011-02-12 20:35:19.404754','2011-02-12 20:35:19.404754');
INSERT INTO "job_skills" VALUES(57,8,16,'2011-02-12 20:37:52.521512','2011-02-12 20:37:52.521512');
INSERT INTO "job_skills" VALUES(58,8,20,'2011-02-12 20:38:07.149348','2011-02-12 20:38:07.149348');
INSERT INTO "job_skills" VALUES(59,8,11,'2011-02-12 20:38:58.563289','2011-02-12 20:38:58.563289');
INSERT INTO "job_skills" VALUES(60,8,5,'2011-02-12 20:39:46.304020','2011-02-12 20:39:46.304020');
INSERT INTO "job_skills" VALUES(61,8,4,'2011-02-12 20:39:52.923398','2011-02-12 20:39:52.923398');
INSERT INTO "job_skills" VALUES(62,8,10,'2011-02-12 20:40:00.459829','2011-02-12 20:40:00.459829');
INSERT INTO "job_skills" VALUES(63,8,8,'2011-02-12 20:42:13.476438','2011-02-12 20:42:13.476438');
INSERT INTO "job_skills" VALUES(64,8,26,'2011-02-12 20:42:20.640847','2011-02-12 20:42:20.640847');
INSERT INTO "job_skills" VALUES(65,3,10,'2011-02-14 05:55:38.821046','2011-02-14 05:55:38.821046');
CREATE TABLE "job_softwares" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "job_id" integer, "software_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "job_softwares" VALUES(1,1,1,'2011-01-06 06:30:56.787942','2011-01-06 06:30:56.787942');
INSERT INTO "job_softwares" VALUES(2,4,5,'2011-01-30 22:08:12.612960','2011-01-30 22:08:12.612960');
INSERT INTO "job_softwares" VALUES(3,4,4,'2011-01-30 22:08:20.930436','2011-01-30 22:08:20.930436');
INSERT INTO "job_softwares" VALUES(4,4,1,'2011-01-30 22:08:28.588874','2011-01-30 22:08:28.588874');
INSERT INTO "job_softwares" VALUES(5,5,10,'2011-02-11 02:22:09.198947','2011-02-11 02:22:09.198947');
INSERT INTO "job_softwares" VALUES(6,3,12,'2011-02-13 06:20:10.182551','2011-02-13 06:20:10.182551');
INSERT INTO "job_softwares" VALUES(7,4,11,'2011-02-13 06:20:25.040401','2011-02-13 06:20:25.040401');
INSERT INTO "job_softwares" VALUES(8,4,13,'2011-02-13 06:20:32.965854','2011-02-13 06:20:32.965854');
INSERT INTO "job_softwares" VALUES(9,3,3,'2011-02-13 06:21:09.512944','2011-02-13 06:21:09.512944');
INSERT INTO "job_softwares" VALUES(10,3,5,'2011-02-13 06:21:16.923368','2011-02-13 06:21:16.923368');
INSERT INTO "job_softwares" VALUES(11,3,6,'2011-02-13 06:21:32.842279','2011-02-13 06:21:32.842279');
INSERT INTO "job_softwares" VALUES(12,3,1,'2011-02-13 06:21:50.420284','2011-02-13 06:21:50.420284');
INSERT INTO "job_softwares" VALUES(13,3,9,'2011-02-13 06:21:58.777762','2011-02-13 06:21:58.777762');
INSERT INTO "job_softwares" VALUES(14,8,5,'2011-02-13 06:22:53.953918','2011-02-13 06:22:53.953918');
INSERT INTO "job_softwares" VALUES(15,8,4,'2011-02-13 06:23:04.631529','2011-02-13 06:23:04.631529');
INSERT INTO "job_softwares" VALUES(16,6,2,'2011-02-13 06:23:35.529296','2011-02-13 06:23:35.529296');
INSERT INTO "job_softwares" VALUES(17,2,10,'2011-02-13 06:24:18.172735','2011-02-13 06:24:18.172735');
INSERT INTO "job_softwares" VALUES(18,2,9,'2011-02-13 06:24:25.149134','2011-02-13 06:24:25.149134');
INSERT INTO "job_softwares" VALUES(19,2,7,'2011-02-13 06:24:31.046471','2011-02-13 06:24:31.046471');
INSERT INTO "job_softwares" VALUES(20,5,1,'2011-02-13 06:27:11.813667','2011-02-13 06:27:11.813667');
CREATE TABLE "job_years" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "job_id" integer, "year_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "job_years" VALUES(1,1,1,'2011-01-06 06:31:06.943523','2011-01-06 06:31:06.943523');
INSERT INTO "job_years" VALUES(2,3,4,'2011-01-30 20:47:44.068784','2011-01-30 20:47:44.068784');
INSERT INTO "job_years" VALUES(3,3,5,'2011-01-30 20:47:54.061355','2011-01-30 20:47:54.061355');
INSERT INTO "job_years" VALUES(4,2,4,'2011-01-30 20:48:11.245338','2011-01-30 20:48:11.245338');
INSERT INTO "job_years" VALUES(5,4,3,'2011-01-30 20:50:45.789177','2011-01-30 20:50:45.789177');
INSERT INTO "job_years" VALUES(6,4,4,'2011-01-30 20:50:56.758805','2011-01-30 20:50:56.758805');
INSERT INTO "job_years" VALUES(22,5,7,'2011-01-31 15:19:12.303667','2011-01-31 15:19:12.303667');
INSERT INTO "job_years" VALUES(23,5,3,'2011-01-31 15:19:27.077512','2011-01-31 15:19:27.077512');
INSERT INTO "job_years" VALUES(24,6,2,'2011-02-01 05:53:30.227567','2011-02-01 05:53:30.227567');
INSERT INTO "job_years" VALUES(25,6,3,'2011-02-01 05:53:59.363233','2011-02-01 05:53:59.363233');
INSERT INTO "job_years" VALUES(26,7,8,'2011-02-02 06:40:01.499590','2011-02-02 06:40:01.499590');
INSERT INTO "job_years" VALUES(27,7,7,'2011-02-02 06:40:17.961531','2011-02-02 06:40:17.961531');
INSERT INTO "job_years" VALUES(28,7,6,'2011-02-02 06:40:26.025993','2011-02-02 06:40:26.025993');
INSERT INTO "job_years" VALUES(29,8,4,'2011-02-11 04:20:30.922139','2011-02-11 04:20:30.922139');
INSERT INTO "job_years" VALUES(30,8,5,'2011-02-11 04:20:37.235500','2011-02-11 04:20:37.235500');
CREATE TABLE "jobs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "employer" varchar(255), "project" varchar(255), "url" varchar(255), "start_month" integer, "end_month" integer, "short_desc" text, "long_desc" text, "created_at" datetime, "updated_at" datetime, "start_year" integer, "end_year" integer, "status" varchar(255));
INSERT INTO "jobs" VALUES(1,'Software Engineer','BigMachines, Inc.','','',4,10,'Front-end development','Worked on the client services team for a large-scale web application used for configuring, pricing, and ordering large industrial equipment, medical equipment, etc. Worked in HTML, CSS, JS, and XML/XSLT in order to customize software for individual clients.','2011-01-06 06:30:02.207820','2011-02-13 23:59:35.533274',2007,2007,'Part time, full-time');
INSERT INTO "jobs" VALUES(2,'WordPress Theme Developer','Automattic, Inc.','','',4,5,'front- and back-end development','','2011-01-30 20:43:34.579315','2011-02-07 06:29:58.010093',2010,2010,'Contract');
INSERT INTO "jobs" VALUES(3,'Project Lead, UX Design and Development','AudienceScience, Inc.','Real-Time Bidding campaign configuration','',6,0,'design and front-end development','Became the second member of a brand-new User Experience team, tasked with bringing Interaction Design principles and proper front-end coding to various (mostly internal) web applications. Significant design work; primary developer of markup and CSS; significant JS work. Applications developed on a Java Spring framework with StringTemplate.

In February &rsquo;11, took over lead design and development role on the fledgling Real&#45;Time Bidding project. Worked with project manager and internal users to capture nascent workflows and optimize them.','2011-01-30 20:46:28.936486','2011-02-13 05:39:02.813331',2010,2011,'Full-time');
INSERT INTO "jobs" VALUES(4,'Lead Front-End Developer','Angry Lapdog Productions, Inc.','','',9,4,'Front-end development','Was solely responsible for all (X)HTML, CSS, and JavaScript code for a Ruby on Rails application that introduced users to interesting features of popular websites. 

Small, startup environment. Worked in an agile setting with two-week iterations driven by A/B testing. Was heavily involved with design of the application, primarily through critique, but also took design lead on some occasions. Worked with RoR back-end, mostly on the controller level. Wrote and maintained Selenium tests using both the Selenium IDE and Cucumber.','2011-01-30 20:49:59.499530','2011-02-12 20:32:03.818567',2009,2010,'Full-time');
INSERT INTO "jobs" VALUES(5,'Self-Employed/Freelance Web Designer','Maine State Rep. Jon Hinck','jonhinck.com','http://jonhinck.com',NULL,NULL,'Design and development of a campaign website, later turned constituent resource','A campaign site for, Jon Hinck, a candidate for state representative in Maine. Jon won election in 2006 and re-election in 2008, after which I worked with him to redesign site as a constituent resource and legislative journal.

Designed and built from the ground up, determining requirements, doing IA, agreeing upon an aesthetic concordant with his other campaign materials, and created and executed a final design.
							  Using WordPress as an interface and databasing basis for the CMS, I constructed a system that allows Jon to post content which will self&#45;sort to the appropriate page(s) of the site.','2011-01-30 21:17:13.488989','2011-02-11 03:50:04.344673',2005,2009,'Contract');
INSERT INTO "jobs" VALUES(6,'Self-Employed/Freelance Web Designer','Northwestern Community Development Corps','ncdcnorthwestern.org','http://twelve8.net/ncdc',NULL,NULL,'Design and development of a website and design of a logo for a public-interest organization','I worked with NCDC leaders to plan and develop a site which showcases the organization&rsquo;s impressive history and even more impressive day&#45;to&#45;day community development efforts.

I created an easily expandable template and added functionality that allows the site to draw content automatically from NCDC&rsquo;s Google Calendar and Flickr accounts. 

On top of that, I designed a new visual identity for NCDC, centering around a versatile new logo.','2011-01-30 21:20:03.390706','2011-02-11 03:52:32.444144',2008,2009,'Contract');
INSERT INTO "jobs" VALUES(7,'Self-Employed/Freelance Web Designer','Courtyard Counseling Center','courtyardcounseling.com','http://twelve8.net/courtyard',NULL,NULL,'Design and development of a website for a counseling and psychotherapy office','','2011-01-30 21:21:06.955342','2011-02-07 06:33:12.314206',2004,2006,'Contract');
INSERT INTO "jobs" VALUES(8,'Designer/Developer: T8Writer','None (Personal)','T8Writer','http://twelve8.net/writer',3,0,'Designed and built a bookmarklet-driven, ubiquitous text editor for public use.','T8Writer is designed to minimize distractions and thus encourage flow, especially the sort of uninterrupted, stream&#45;of&#45;consciousness writing that is helpful in brainstorming.

From a technical perspective, the bookmarklet uses &lt;script&gt; tags to communicate with a Ruby on Rails backend. 

The app uses a novel method of authentication: a unique, random hash is stored in the user&rsquo;s bookmarklet and matched to the user&rsquo;s &ldquo;account&rdquo;. There&rsquo;s no signup necessary, no password to remember, and as long as the user doesn&rsquo;t share his/her bookmarklet, documents will remain safe (though not all security measures have been implemented yet).','2011-02-11 04:19:09.808500','2011-02-13 05:40:52.051579',2010,2011,'N/A');
CREATE TABLE "years" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "value" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "years" VALUES(1,2007,'2011-01-06 06:30:37.289827','2011-01-06 06:30:37.289827');
INSERT INTO "years" VALUES(2,2008,'2011-01-19 06:32:05.129562','2011-01-19 06:32:05.129562');
INSERT INTO "years" VALUES(3,2009,'2011-01-30 20:21:03.325796','2011-01-30 20:21:03.325796');
INSERT INTO "years" VALUES(4,2010,'2011-01-30 20:21:11.548266','2011-01-30 20:21:11.548266');
INSERT INTO "years" VALUES(5,2011,'2011-01-30 20:21:18.165645','2011-01-30 20:21:18.165645');
INSERT INTO "years" VALUES(6,2006,'2011-01-30 20:21:39.245850','2011-01-30 20:21:39.245850');
INSERT INTO "years" VALUES(7,2005,'2011-01-31 15:11:08.591000','2011-01-31 15:11:08.591000');
INSERT INTO "years" VALUES(8,2004,'2011-02-02 06:37:51.143134','2011-02-02 06:37:51.143134');
CREATE TABLE "disciplines" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "disciplines" VALUES(1,'Front-End Development','2011-02-04 04:17:03.431441','2011-02-04 04:17:03.431441');
INSERT INTO "disciplines" VALUES(2,'Server-Side Development','2011-02-04 04:17:21.324465','2011-02-04 04:17:21.324465');
INSERT INTO "disciplines" VALUES(3,'Interaction Design','2011-02-04 04:17:35.560279','2011-02-04 04:17:35.560279');
INSERT INTO "disciplines" VALUES(4,'Miscellaneous','2011-02-04 04:17:46.056879','2011-02-04 04:17:46.056879');
CREATE TABLE "highlights" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "job_id" integer NOT NULL, "skill_id" integer NOT NULL, "description" text, "created_at" datetime, "updated_at" datetime);
INSERT INTO "highlights" VALUES(1,3,10,'Greatly simplified the most involved workflow in application by rethinking IA and making successful use of progressive disclosure.','2011-02-08 05:12:12.091697','2011-02-08 05:12:12.091697');
INSERT INTO "highlights" VALUES(2,3,10,'Designed layout of numerical, data-heavy reports for clarity and readability.','2011-02-08 05:12:48.398774','2011-02-08 05:12:48.398774');
INSERT INTO "highlights" VALUES(3,3,5,'Took the lead on CSS modularization, by introducing a compiled system (LESS), deriving centralized typographic scale and color palette, paring down existing code, and separating stylesheets into coherent fragment files.','2011-02-08 05:13:19.793569','2011-02-08 05:13:19.793569');
INSERT INTO "highlights" VALUES(4,3,5,'Developed a CSS component library with implementation and markup documentation.','2011-02-08 05:13:49.658277','2011-02-08 05:13:49.658277');
INSERT INTO "highlights" VALUES(5,3,13,'Discovered significant flaws in approach to automated UI testing (Selenium) and designed new test suite in response.','2011-02-08 05:14:49.239685','2011-02-08 05:14:49.239685');
INSERT INTO "highlights" VALUES(6,7,23,'Site consistently reached first page of search results for relevant queries; achieved with well-considered content, not gimickry.','2011-02-09 04:26:57.317454','2011-02-09 04:26:57.317454');
INSERT INTO "highlights" VALUES(7,4,4,'Hand-coded an effective Object Relational Mapping (ORM) system that mirrors back-end data and facilitates asynchronous page updates.','2011-02-11 02:16:31.567464','2011-02-11 02:16:31.567464');
INSERT INTO "highlights" VALUES(8,4,4,'Coded two plugins that communicated with our server across domains, using &lt;script&gt; tags. One required extensive DOM-scripting for positioning plugin elements in relation to elements on host page.','2011-02-11 02:17:43.774249','2011-02-11 02:18:16.977859');
INSERT INTO "highlights" VALUES(9,5,2,'Built custom CMS using hand-coded PHP/MySQL and the WordPress GUI','2011-02-11 02:20:28.975039','2011-02-11 02:20:28.975039');
INSERT INTO "highlights" VALUES(11,6,4,'Used JSON feeds to post GCal events and Flickr photos to site.','2011-02-11 04:12:10.015489','2011-02-11 04:12:10.015489');
INSERT INTO "highlights" VALUES(12,4,9,'Came up with and drove design of the concept for what became the highest&#45;performing iteration in the application&rsquo;s lifetime.','2011-02-13 23:56:54.614070','2011-02-13 23:56:54.614070');
CREATE TABLE "skills" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "created_at" datetime, "updated_at" datetime, "abbreviation" varchar(255), "discipline_id" integer, "rank" integer, "slug" varchar(255));
INSERT INTO "skills" VALUES(1,'HTML','2011-01-06 06:29:39.034495','2011-02-14 05:55:39.287073','',1,20,'html');
INSERT INTO "skills" VALUES(2,'PHP','2011-01-30 20:51:40.930331','2011-02-14 05:55:39.296073','',2,18,'php');
INSERT INTO "skills" VALUES(3,'MySQL','2011-01-30 20:56:10.470748','2011-02-14 05:55:39.292073','',2,19,'mysql');
INSERT INTO "skills" VALUES(4,'JavaScript','2011-01-30 20:56:40.113444','2011-02-13 06:10:04.832927','',1,24,'javascript');
INSERT INTO "skills" VALUES(5,'CSS','2011-01-30 20:57:03.886803','2011-02-14 05:55:39.256071','',1,27,'css');
INSERT INTO "skills" VALUES(6,'AJAX','2011-01-30 20:57:50.636477','2011-02-14 05:55:39.278072','',1,22,'ajax');
INSERT INTO "skills" VALUES(7,'HTML5','2011-01-30 20:58:07.882464','2011-02-14 05:55:39.342076','',1,8,'html5');
INSERT INTO "skills" VALUES(8,'XHTML','2011-01-30 20:58:19.938153','2011-02-13 06:10:47.165348','',1,25,'xhtml');
INSERT INTO "skills" VALUES(9,'Information Architecture','2011-01-30 20:58:34.028959','2011-02-14 05:55:39.273072','IA',3,23,'information-architecture');
INSERT INTO "skills" VALUES(10,'Interaction Design','2011-01-30 20:58:44.050532','2011-02-14 05:55:39.262071','',3,26,'interaction-design');
INSERT INTO "skills" VALUES(11,'Object-Oriented Programming','2011-01-30 20:59:22.184713','2011-02-14 05:55:39.301074','OOP',4,17,'object-oriented-programming');
INSERT INTO "skills" VALUES(12,'Copywriting','2011-01-30 20:59:33.943386','2011-02-14 05:55:39.315074','',4,14,'copywriting');
INSERT INTO "skills" VALUES(13,'Selenium testing','2011-01-30 20:59:59.677858','2011-02-14 05:55:39.310074','Selenium',1,15,'selenium-testing');
INSERT INTO "skills" VALUES(14,'Microformats','2011-01-30 21:00:09.343411','2011-02-14 05:55:39.360077','',1,4,'microformats');
INSERT INTO "skills" VALUES(15,'Java','2011-01-30 21:00:18.337925','2011-02-14 05:55:39.319075','',2,13,'java');
INSERT INTO "skills" VALUES(16,'MVC Architecture','2011-01-30 21:00:35.814925','2011-02-14 05:55:39.283073','MVC',4,21,'mvc-architecture');
INSERT INTO "skills" VALUES(17,'Usability testing','2011-01-30 21:00:58.543225','2011-02-14 05:55:39.329075','',3,11,'usability-testing');
INSERT INTO "skills" VALUES(18,'A/B testing','2011-01-30 21:01:07.019710','2011-02-14 05:55:39.333075','',3,10,'a-b-testing');
INSERT INTO "skills" VALUES(19,'Wireframing','2011-01-30 21:01:22.835614','2011-02-14 05:55:39.338076','',3,9,'wireframing');
INSERT INTO "skills" VALUES(20,'Ruby on Rails','2011-01-30 21:01:33.388218','2011-02-14 05:55:39.306074','RoR',4,16,'ruby-on-rails');
INSERT INTO "skills" VALUES(21,'WAI-ARIA','2011-01-30 21:06:18.991553','2011-02-14 05:55:39.370078','',1,2,'wai-aria');
INSERT INTO "skills" VALUES(22,'RESTful APIs','2011-02-04 02:26:29.818020','2011-02-14 05:55:39.365077','REST',4,3,'restful-apis');
INSERT INTO "skills" VALUES(23,'Search Engine Optimization','2011-02-05 22:00:35.337507','2011-02-14 05:55:39.355077','SEO',4,5,'search-engine-optimization');
INSERT INTO "skills" VALUES(24,'WordPress coding','2011-02-11 02:22:48.233778','2011-02-14 05:55:39.324075','',1,12,'wordpress-coding');
INSERT INTO "skills" VALUES(25,'XML/XSLT','2011-02-11 03:57:42.620885','2011-02-14 05:55:39.351076','',4,6,'xml-xslt');
INSERT INTO "skills" VALUES(26,'Responsive Design','2011-02-11 04:16:36.032704','2011-02-14 05:55:39.346076','',3,7,'responsive-design');
INSERT INTO "skills" VALUES(27,'jQuery','2011-02-14 00:08:34.114079','2011-02-14 05:55:39.375078','',1,1,'jquery');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255), "crypted_password" varchar(255), "password_salt" varchar(255), "persistence_token" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "users" VALUES(1,'ksj@twelve8.net','ab93e609eb58041a6588fc14c3160d3f3c84ec07dfacea7e7e7b4becb9c1636d380d1e34b670f285c1d0ff9a5fc2228de3d13644080bc1f3b939ae8aee1b9050','wHXdzx16fyusfEqYSjQE','1a08d910952212f819874ae49984847519716e6674dfd0e91e6ad4976b524059be76f2bd2dbf9914cbbbcd5171d47f06de04c68daa29b1dbef0aaf340b0ae1b3','2011-03-10 04:38:38.362564','2011-03-10 04:38:38.362564');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('softwares',13);
INSERT INTO "sqlite_sequence" VALUES('job_skills',65);
INSERT INTO "sqlite_sequence" VALUES('job_softwares',20);
INSERT INTO "sqlite_sequence" VALUES('job_years',30);
INSERT INTO "sqlite_sequence" VALUES('jobs',8);
INSERT INTO "sqlite_sequence" VALUES('years',8);
INSERT INTO "sqlite_sequence" VALUES('disciplines',4);
INSERT INTO "sqlite_sequence" VALUES('highlights',12);
INSERT INTO "sqlite_sequence" VALUES('skills',27);
INSERT INTO "sqlite_sequence" VALUES('users',1);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_years_on_value" ON "years" ("value");
CREATE INDEX "index_job_skills_on_job_id" ON "job_skills" ("job_id");
CREATE INDEX "index_job_skills_on_skill_id" ON "job_skills" ("skill_id");
CREATE INDEX "index_job_years_on_job_id" ON "job_years" ("job_id");
CREATE INDEX "index_job_years_on_year_id" ON "job_years" ("year_id");
CREATE INDEX "index_job_softwares_on_job_id" ON "job_softwares" ("job_id");
CREATE INDEX "index_job_softwares_on_software_id" ON "job_softwares" ("software_id");
CREATE INDEX "index_jobs_on_start_year" ON "jobs" ("start_year");
CREATE INDEX "index_jobs_on_end_year" ON "jobs" ("end_year");
CREATE INDEX "index_jobs_on_start_month" ON "jobs" ("start_month");
CREATE INDEX "index_jobs_on_end_month" ON "jobs" ("end_month");
CREATE INDEX "index_highlights_on_job_id" ON "highlights" ("job_id");
CREATE INDEX "index_highlights_on_skill_id" ON "highlights" ("skill_id");
CREATE INDEX "index_skills_on_discipline_id" ON "skills" ("discipline_id");
COMMIT;
