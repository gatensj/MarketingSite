/*
File name: C:\Users\jgatens\WORK-DATA\python-vagrant-centos7\projects\mysite\db.sql
Creation date: 12/10/2017
Created by SQLite to PostgreSQL 1.3 [Demo]
--------------------------------------------------
More conversion tools at http://www.convert-in.com
*/

/*
Table structure for table 'public.auth_group'
*/

DROP TABLE IF EXISTS "public"."auth_group" CASCADE;
CREATE TABLE "public"."auth_group" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(80)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_auth_group";
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "PK_auth_group" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_auth_group_1";
CREATE UNIQUE INDEX "sqlite_autoindex_auth_group_1" ON "public"."auth_group"("name");

/*
Dumping data for table 'public.auth_group'
*/

INSERT INTO "public"."auth_group"("id", "name") VALUES (1, 'Moderators');
INSERT INTO "public"."auth_group"("id", "name") VALUES (2, 'Editors');

/*
Table structure for table 'public.auth_group_permissions'
*/

DROP TABLE IF EXISTS "public"."auth_group_permissions" CASCADE;
CREATE TABLE "public"."auth_group_permissions" (
	"id" INTEGER NOT NULL,
	"group_id" INTEGER NOT NULL,
	"permission_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_auth_group_permissions";
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "PK_auth_group_permissions" PRIMARY KEY("id");
DROP INDEX IF EXISTS "auth_group_permissions_permission_id_84c5c92e";
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions"("permission_id");
DROP INDEX IF EXISTS "auth_group_permissions_group_id_b120cbf9";
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions"("group_id");
DROP INDEX IF EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq";
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "public"."auth_group_permissions"("group_id", "permission_id");

/*
Dumping data for table 'public.auth_group_permissions'
*/

INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (1, 2, 34);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (2, 1, 34);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (3, 2, 35);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (4, 2, 36);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (5, 2, 37);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (6, 1, 35);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (7, 1, 36);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (8, 1, 37);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (9, 2, 40);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (10, 2, 38);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (11, 2, 39);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (12, 1, 40);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (13, 1, 38);
INSERT INTO "public"."auth_group_permissions"("id", "group_id", "permission_id") VALUES (14, 1, 39);

/*
Table structure for table 'public.auth_permission'
*/

DROP TABLE IF EXISTS "public"."auth_permission" CASCADE;
CREATE TABLE "public"."auth_permission" (
	"id" INTEGER NOT NULL,
	"content_type_id" INTEGER NOT NULL,
	"codename" VARCHAR(100)  NOT NULL,
	"name" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_auth_permission";
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "PK_auth_permission" PRIMARY KEY("id");
DROP INDEX IF EXISTS "auth_permission_content_type_id_2f476e4b";
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission"("content_type_id");
DROP INDEX IF EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq";
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "public"."auth_permission"("content_type_id", "codename");

/*
Dumping data for table 'public.auth_permission'
*/

INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (4, 2, 'add_permission', 'Can add permission');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (5, 2, 'change_permission', 'Can change permission');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (6, 2, 'delete_permission', 'Can delete permission');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (7, 3, 'add_user', 'Can add user');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (8, 3, 'change_user', 'Can change user');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (9, 3, 'delete_user', 'Can delete user');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (10, 4, 'add_group', 'Can add group');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (11, 4, 'change_group', 'Can change group');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (12, 4, 'delete_group', 'Can delete group');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (13, 5, 'add_contenttype', 'Can add content type');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (14, 5, 'change_contenttype', 'Can change content type');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (15, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (16, 6, 'add_session', 'Can add session');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (17, 6, 'change_session', 'Can change session');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (18, 6, 'delete_session', 'Can delete session');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (19, 7, 'add_post', 'Can add post');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (20, 7, 'change_post', 'Can change post');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (21, 7, 'delete_post', 'Can delete post');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (22, 8, 'add_comment', 'Can add comment');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (23, 8, 'change_comment', 'Can change comment');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (24, 8, 'delete_comment', 'Can delete comment');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (25, 9, 'add_tag', 'Can add Tag');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (26, 9, 'change_tag', 'Can change Tag');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (27, 9, 'delete_tag', 'Can delete Tag');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (28, 10, 'add_taggeditem', 'Can add Tagged Item');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (29, 10, 'change_taggeditem', 'Can change Tagged Item');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (30, 10, 'delete_taggeditem', 'Can delete Tagged Item');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (31, 11, 'add_site', 'Can add site');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (32, 11, 'change_site', 'Can change site');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (33, 11, 'delete_site', 'Can delete site');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (34, 13, 'access_admin', 'Can access Wagtail admin');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (35, 14, 'add_document', 'Can add document');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (36, 14, 'change_document', 'Can change document');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (37, 14, 'delete_document', 'Can delete document');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (38, 15, 'add_image', 'Can add image');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (39, 15, 'change_image', 'Can change image');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (40, 15, 'delete_image', 'Can delete image');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (41, 16, 'add_formsubmission', 'Can add form submission');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (42, 16, 'change_formsubmission', 'Can change form submission');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (43, 16, 'delete_formsubmission', 'Can delete form submission');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (44, 17, 'add_redirect', 'Can add redirect');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (45, 17, 'change_redirect', 'Can change redirect');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (46, 17, 'delete_redirect', 'Can delete redirect');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (47, 18, 'add_embed', 'Can add embed');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (48, 18, 'change_embed', 'Can change embed');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (49, 18, 'delete_embed', 'Can delete embed');
INSERT INTO "public"."auth_permission"("id", "content_type_id", "codename", "name") VALUES (50, 19, 'add_userprofile', 'Can add user profile');

/*
Table structure for table 'public.auth_user'
*/

DROP TABLE IF EXISTS "public"."auth_user" CASCADE;
CREATE TABLE "public"."auth_user" (
	"id" INTEGER NOT NULL,
	"password" VARCHAR(128)  NOT NULL,
	"last_login" TEXT,
	"is_superuser" TEXT NOT NULL,
	"first_name" VARCHAR(30)  NOT NULL,
	"last_name" VARCHAR(30)  NOT NULL,
	"email" VARCHAR(254)  NOT NULL,
	"is_staff" TEXT NOT NULL,
	"is_active" TEXT NOT NULL,
	"date_joined" TEXT NOT NULL,
	"username" VARCHAR(150)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_auth_user";
ALTER TABLE "public"."auth_user" ADD CONSTRAINT "PK_auth_user" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_auth_user_1";
CREATE UNIQUE INDEX "sqlite_autoindex_auth_user_1" ON "public"."auth_user"("username");

/*
Dumping data for table 'public.auth_user'
*/

INSERT INTO "public"."auth_user"("id", "password", "last_login", "is_superuser", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined", "username") VALUES (1, 'pbkdf2_sha256$36000$0GmAMovovU16$x3WvjfcfRkpNrHuYiQgKktJmI0+z8LNalAeUzV/K3q8=', '2017-09-22 00:00:39.904021', '1', '', '', 'jeremygatens@gmail.com', '1', '1', '2017-05-31 23:57:31.276016', 'jgatens');
INSERT INTO "public"."auth_user"("id", "password", "last_login", "is_superuser", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined", "username") VALUES (2, 'pbkdf2_sha256$36000$8O1gK1vNtnk2$HDMKb/zk3HP0h25jmUgBOtbKlI01z7Y5Kiag3+vYTXE=', '2017-06-17 23:01:35.662569', '1', '', '', 'jeremygatens@gmail.com', '1', '1', '2017-06-17 20:07:32.406381', 'gator3542');
INSERT INTO "public"."auth_user"("id", "password", "last_login", "is_superuser", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined", "username") VALUES (3, 'pbkdf2_sha256$36000$9XAewFkMuNE6$TqBxlbXkE5wZmSVbvqhlTK5J6VUNRzKcYgJny4XuJ70=', '2017-12-05 23:14:01.809362', '1', '', '', 'jeremygatens@gmail.com', '1', '1', '2017-08-04 00:26:09.237585', 'gatensj');

/*
Table structure for table 'public.auth_user_groups'
*/

DROP TABLE IF EXISTS "public"."auth_user_groups" CASCADE;
CREATE TABLE "public"."auth_user_groups" (
	"id" INTEGER NOT NULL,
	"user_id" INTEGER NOT NULL,
	"group_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_auth_user_groups";
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "PK_auth_user_groups" PRIMARY KEY("id");
DROP INDEX IF EXISTS "auth_user_groups_group_id_97559544";
CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups"("group_id");
DROP INDEX IF EXISTS "auth_user_groups_user_id_6a12ed8b";
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups"("user_id");
DROP INDEX IF EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq";
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "public"."auth_user_groups"("user_id", "group_id");

/*
Dumping data for table 'public.auth_user_groups'
*/


/*
Table structure for table 'public.auth_user_user_permissions'
*/

DROP TABLE IF EXISTS "public"."auth_user_user_permissions" CASCADE;
CREATE TABLE "public"."auth_user_user_permissions" (
	"id" INTEGER NOT NULL,
	"user_id" INTEGER NOT NULL,
	"permission_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_auth_user_user_permissions";
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "PK_auth_user_user_permissions" PRIMARY KEY("id");
DROP INDEX IF EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c";
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions"("permission_id");
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_a95ead1b";
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions"("user_id");
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq";
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "public"."auth_user_user_permissions"("user_id", "permission_id");

/*
Dumping data for table 'public.auth_user_user_permissions'
*/


/*
Table structure for table 'public.blog_comment'
*/

DROP TABLE IF EXISTS "public"."blog_comment" CASCADE;
CREATE TABLE "public"."blog_comment" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(80)  NOT NULL,
	"email" VARCHAR(254)  NOT NULL,
	"body" TEXT NOT NULL,
	"created" TEXT NOT NULL,
	"updated" TEXT NOT NULL,
	"active" TEXT NOT NULL,
	"post_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_blog_comment";
ALTER TABLE "public"."blog_comment" ADD CONSTRAINT "PK_blog_comment" PRIMARY KEY("id");
DROP INDEX IF EXISTS "blog_comment_post_id_580e96ef";
CREATE INDEX "blog_comment_post_id_580e96ef" ON "public"."blog_comment"("post_id");

/*
Dumping data for table 'public.blog_comment'
*/

INSERT INTO "public"."blog_comment"("id", "name", "email", "body", "created", "updated", "active", "post_id") VALUES (1, 'JeremyG', 'jeremygatens@gmail.com', 'You are the man', '2017-06-06 01:11:57.903921', '2017-06-06 01:13:10.378866', '1', 4);
INSERT INTO "public"."blog_comment"("id", "name", "email", "body", "created", "updated", "active", "post_id") VALUES (2, 'JeremyG', 'jeremygatens@gmail.com', 'This is a great Post!!!', '2017-06-06 01:12:16.982820', '2017-06-06 01:12:16.982886', '1', 4);

/*
Table structure for table 'public.blog_post'
*/

DROP TABLE IF EXISTS "public"."blog_post" CASCADE;
CREATE TABLE "public"."blog_post" (
	"id" INTEGER NOT NULL,
	"title" VARCHAR(250)  NOT NULL,
	"slug" VARCHAR(250)  NOT NULL,
	"body" TEXT NOT NULL,
	"publish" TEXT NOT NULL,
	"created" TEXT NOT NULL,
	"updated" TEXT NOT NULL,
	"status" VARCHAR(10)  NOT NULL,
	"author_id" INTEGER NOT NULL,
	"short_description" TEXT NOT NULL,
	"image" VARCHAR(100) 
) WITH OIDS;
DROP INDEX IF EXISTS "PK_blog_post";
ALTER TABLE "public"."blog_post" ADD CONSTRAINT "PK_blog_post" PRIMARY KEY("id");
DROP INDEX IF EXISTS "blog_post_author_id_dd7a8485";
CREATE INDEX "blog_post_author_id_dd7a8485" ON "public"."blog_post"("author_id");
DROP INDEX IF EXISTS "blog_post_slug_b95473f2";
CREATE INDEX "blog_post_slug_b95473f2" ON "public"."blog_post"("slug");

/*
Dumping data for table 'public.blog_post'
*/

INSERT INTO "public"."blog_post"("id", "title", "slug", "body", "publish", "created", "updated", "status", "author_id", "short_description", "image") VALUES (1, 'Django Demo', 'django-demo', 'You know, the one with all the well meaning rules that don''t work out in real life, uh, Christianity.

Save me, Jeebus. Mrs. Krabappel and Principal Skinner were in the closet making babies and I saw one of the babies and then the baby looked at me. Inflammable means flammable? What a country. No children have ever meddled with the Republican Party and lived to tell about it.

I''ve done everything the Bible says — even the stuff that contradicts the other stuff! We started out like Romeo and Juliet, but it ended up in tragedy. Uh, no, you got the wrong number. This is 9-1…2.

I''m normally not a praying man, but if you''re up there, please save me, Superman.', '2017-06-01 00:06:13', '2017-07-02 00:53:07.127085', '2017-07-02 00:53:07.127095', 'published', 1, 'Sample short description', NULL);
INSERT INTO "public"."blog_post"("id", "title", "slug", "body", "publish", "created", "updated", "status", "author_id", "short_description", "image") VALUES (2, 'Second Post', 'second-post', 'Whoa, this guy''s straight?

Did you enjoy your meal, Mom? You drank it fast enough. Now, when you do this without getting punched in the chest, you''ll have more fun. Guy''s a pro. That''s why you always leave a note! Across from where?

Get me a vodka rocks. And a piece of toast. No, I did not kill Kitty. However, I am going to oblige and answer the nice officer''s questions because I am an honest man with no secrets to hide. I''m a monster.

As you may or may not know, Lindsay and I have hit a bit of a rough patch.

Well, what do you expect, mother? Oh, you''re gonna be in a coma, all right. We just call it a sausage. What''s Spanish for "I know you speak English?" Army had half a day.', '2017-06-01 00:07:15', '2017-07-01 22:54:12.908854', '2017-07-01 22:54:12.908868', 'published', 1, 'Sample short description', NULL);
INSERT INTO "public"."blog_post"("id", "title", "slug", "body", "publish", "created", "updated", "status", "author_id", "short_description", "image") VALUES (3, 'One for the road', 'one-for-the-road', '<p>Post body.</p>', '2017-06-01 00:40:39', '2017-09-06 23:57:17.362845', '2017-09-06 23:57:17.362871', 'draft', 1, 'Sample short description', 'BlogC_4CiiQOw.jpg');
INSERT INTO "public"."blog_post"("id", "title", "slug", "body", "publish", "created", "updated", "status", "author_id", "short_description", "image") VALUES (4, '2nd time', '2nd-time', '<p>Hello world</p>', '2017-06-01 00:46:16', '2017-09-06 23:57:03.615995', '2017-09-06 23:57:03.616020', 'published', 1, 'Sample short description', 'BlogB.jpg');
INSERT INTO "public"."blog_post"("id", "title", "slug", "body", "publish", "created", "updated", "status", "author_id", "short_description", "image") VALUES (5, 'Markdown Example', 'markdown-example', '<figure><img src="/media/MyLogoDraft.jpg" data-image="MyLogoDraft.jpg"></figure>
<p><br></p>
<p><br></p>
<figure><img src="/media/logoD_b4sDq3p.jpg" data-image="logoD.jpg"></figure>
<p><br></p>
<p>-----------</p>
<p><iframe width="854" height="480" src="https://www.youtube.com/embed/dM8Q1XBRq8M" frameborder="0" allowfullscreen=""></iframe><br></p>
<p>----------</p>
<p><strong>Hello World!!!!</strong><br></p>
<ol><li>Hey</li><li>You</li></ol>
<p>This is a post formatted with markdown<br>--------------------------------------<br>*This is emphasized* and **this is more emphasized**.<br>Here is a list:<br>* One<br>* Two<br>* Three<br>And a [link to the Django website](https:/www.djangoproject.com/)</p>', '2017-06-11 00:20:42', '2017-09-06 23:56:49.804463', '2017-09-06 23:56:49.804487', 'published', 1, 'This can be anything we want.', 'BlogA.jpg');

/*
Table structure for table 'public.cms_blogpage'
*/

DROP TABLE IF EXISTS "public"."cms_blogpage" CASCADE;
CREATE TABLE "public"."cms_blogpage" (
	"page_ptr_id" INTEGER NOT NULL,
	"body" TEXT NOT NULL,
	"publish" TEXT NOT NULL,
	"created" TEXT NOT NULL,
	"updated" TEXT NOT NULL,
	"status" VARCHAR(10)  NOT NULL,
	"author" VARCHAR(250)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_cms_blogpage";
ALTER TABLE "public"."cms_blogpage" ADD CONSTRAINT "PK_cms_blogpage" PRIMARY KEY("page_ptr_id");

/*
Dumping data for table 'public.cms_blogpage'
*/

INSERT INTO "public"."cms_blogpage"("page_ptr_id", "body", "publish", "created", "updated", "status", "author") VALUES (4, 'I was ashamed to be SEEN with you. I like being with you. I care deeply for nature. Army had half a day. No! I was ashamed to be SEEN with you. I like being with you. Guy''s a pro. He''ll want to use your yacht, and I don''t want this thing smelling like fish.<br/><br/>Bad news. Andy Griffith turned us down. He didn''t like his trailer. Steve Holt! Steve Holt! I don''t criticize you! And if you''re worried about criticism, sometimes a diet is the best defense.<br/><br/>That''s what it said on ''Ask Jeeves.'' I don''t understand the question, and I won''t respond to it. It''s called ''taking advantage.'' It''s what gets you ahead in life. Oh, you''re gonna be in a coma, all right.<br/><br/>There''s only one man I''ve ever called a coward, and that''s Brian Doyle Murray. No, what I''m calling you is a television actor. Not tricks, Michael, illusions. I care deeply for nature. But I bought a yearbook ad from you, doesn''t that mean anything anymore?<br/><br/>Now, when you do this without getting punched in the chest, you''ll have more fun. Now, when you do this without getting punched in the chest, you''ll have more fun. No… but I''d like to be asked! Now, when you do this without getting punched in the chest, you''ll have more fun.<br/><br/>I''ve opened a door here that I regret. Army had half a day. I hear the jury''s still out on science. First place chick is hot, but has an attitude, doesn''t date magicians. Marry me.<br/><br/>That''s why you always leave a note! It''s a hug, Michael. I''m hugging you. I''m half machine. I''m a monster. I''m a monster.<br/><br/>I''ve opened a door here that I regret. Army had half a day. Army had half a day. There''s so many poorly chosen words in that sentence. Steve Holt! Across from where?<br/><br/><p>Guy''s a pro. I care deeply for nature. First place chick is hot, but has an attitude, doesn''t date magicians. Bad news. Andy Griffith turned us down. He didn''t like his trailer. Not tricks, Michael, illusions.</p>', '2017-12-01 02:12:25.002000', '2017-12-01 02:28:23.731337', '2017-12-01 02:28:23.731375', 'draft', '');

/*
Table structure for table 'public.cms_blogpagerelatedlink'
*/

DROP TABLE IF EXISTS "public"."cms_blogpagerelatedlink" CASCADE;
CREATE TABLE "public"."cms_blogpagerelatedlink" (
	"id" INTEGER NOT NULL,
	"sort_order" INTEGER,
	"name" VARCHAR(255)  NOT NULL,
	"url" VARCHAR(200)  NOT NULL,
	"page_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_cms_blogpagerelatedlink";
ALTER TABLE "public"."cms_blogpagerelatedlink" ADD CONSTRAINT "PK_cms_blogpagerelatedlink" PRIMARY KEY("id");
DROP INDEX IF EXISTS "cms_blogpagerelatedlink_page_id_38048933";
CREATE INDEX "cms_blogpagerelatedlink_page_id_38048933" ON "public"."cms_blogpagerelatedlink"("page_id");

/*
Dumping data for table 'public.cms_blogpagerelatedlink'
*/


/*
Table structure for table 'public.cms_comment'
*/

DROP TABLE IF EXISTS "public"."cms_comment" CASCADE;
CREATE TABLE "public"."cms_comment" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(80)  NOT NULL,
	"email" VARCHAR(254)  NOT NULL,
	"body" TEXT NOT NULL,
	"created" TEXT NOT NULL,
	"updated" TEXT NOT NULL,
	"active" TEXT NOT NULL,
	"blogpage_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_cms_comment";
ALTER TABLE "public"."cms_comment" ADD CONSTRAINT "PK_cms_comment" PRIMARY KEY("id");
DROP INDEX IF EXISTS "cms_comment_blogpage_id_e1c95bbc";
CREATE INDEX "cms_comment_blogpage_id_e1c95bbc" ON "public"."cms_comment"("blogpage_id");

/*
Dumping data for table 'public.cms_comment'
*/


/*
Table structure for table 'public.django_admin_log'
*/

DROP TABLE IF EXISTS "public"."django_admin_log" CASCADE;
CREATE TABLE "public"."django_admin_log" (
	"id" INTEGER NOT NULL,
	"object_id" TEXT,
	"object_repr" VARCHAR(200)  NOT NULL,
	"action_flag" TEXT NOT NULL,
	"change_message" TEXT NOT NULL,
	"content_type_id" INTEGER,
	"user_id" INTEGER NOT NULL,
	"action_time" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_django_admin_log";
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "PK_django_admin_log" PRIMARY KEY("id");
DROP INDEX IF EXISTS "django_admin_log_user_id_c564eba6";
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log"("user_id");
DROP INDEX IF EXISTS "django_admin_log_content_type_id_c4bce8eb";
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log"("content_type_id");

/*
Dumping data for table 'public.django_admin_log'
*/

INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (1, '1', 'Django Demo', '1', '[{"added": {}}]', 7, 1, '2017-06-01 00:06:48.330252');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (2, '2', 'Second Post', '1', '[{"added": {}}]', 7, 1, '2017-06-01 00:07:52.048212');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (3, '1', 'Django Demo', '2', 'Changed status.', 7, 1, '2017-06-03 22:07:33.169939');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (4, '1', 'Comment by JeremyG on 2nd time', '2', '[{"changed": {"fields": ["body"]}}]', 8, 1, '2017-06-06 01:13:10.387582');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (5, '2', 'Second Post', '2', '[{"changed": {"fields": ["tags"]}}]', 7, 1, '2017-06-06 01:34:00.579652');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (6, '4', '2nd time', '2', '[{"changed": {"fields": ["status", "tags"]}}]', 7, 1, '2017-06-07 00:52:34.463115');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (7, '5', 'Markdown Example', '1', '[{"added": {}}]', 7, 1, '2017-06-11 00:22:57.375384');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (8, '2', 'vagrant.wharton.upenn.edu:8000', '1', '[{"added": {}}]', 11, 1, '2017-06-11 00:59:36.242659');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (9, '2', 'Second Post', '2', '[{"changed": {"fields": ["content", "tags"]}}]', 7, 1, '2017-07-01 22:53:53.652600');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (10, '2', 'Second Post', '2', '[{"changed": {"fields": ["status", "tags"]}}]', 7, 1, '2017-07-01 22:54:12.961217');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (11, '3', 'One for the road', '2', '[{"changed": {"fields": ["content", "tags"]}}]', 7, 1, '2017-07-02 00:49:15.134566');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (12, '1', 'Django Demo', '2', '[{"changed": {"fields": ["content", "tags"]}}]', 7, 1, '2017-07-02 00:53:07.167740');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (13, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["content", "short_text", "tags"]}}]', 7, 1, '2017-07-02 01:33:04.281568');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (14, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "tags"]}}]', 7, 1, '2017-07-02 19:00:05.222132');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (15, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "tags"]}}]', 7, 1, '2017-07-02 19:15:17.233959');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (16, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "tags"]}}]', 7, 1, '2017-07-02 19:17:25.431743');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (17, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "image", "tags"]}}]', 7, 1, '2017-07-02 19:30:18.104554');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (18, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "tags"]}}]', 7, 1, '2017-07-02 20:29:08.438707');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (19, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "tags"]}}]', 7, 1, '2017-07-02 20:41:38.540360');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (20, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "tags"]}}]', 7, 1, '2017-07-02 21:40:07.938879');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (21, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["body", "short_description", "tags"]}}]', 7, 1, '2017-07-02 21:54:23.203037');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (22, '1', 'About MarketingByE', '1', '[{"added": {}}]', 39, 3, '2017-08-17 22:13:49.540538');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (23, '1', 'About MarketingByE', '2', '[{"changed": {"fields": ["image"]}}]', 39, 3, '2017-08-17 22:15:19.605878');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (24, '1', 'Welcome to MarketingByE', '1', '[{"added": {}}]', 40, 3, '2017-08-17 23:39:58.846208');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (25, '1', 'CLEAN CODE', '1', '[{"added": {}}]', 41, 3, '2017-08-17 23:41:28.924724');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (26, '2', 'RESPONSIVE DESIGN', '1', '[{"added": {}}]', 41, 3, '2017-08-17 23:41:54.858926');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (27, '3', 'FREE SUPPORT & UPDATE', '1', '[{"added": {}}]', 41, 3, '2017-08-17 23:42:12.211783');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (28, '1', 'Elena W', '1', '[{"added": {}}]', 42, 3, '2017-08-17 23:50:14.741160');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (29, '2', 'Jeremy G', '1', '[{"added": {}}]', 42, 3, '2017-08-17 23:51:45.901066');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (30, '3', 'Roger D', '1', '[{"added": {}}]', 42, 3, '2017-08-17 23:52:16.097680');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (31, '4', 'Whitney C', '1', '[{"added": {}}]', 42, 3, '2017-08-17 23:53:39.575451');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (32, '3', 'Roger D', '2', '[{"changed": {"fields": ["person_title"]}}]', 42, 3, '2017-08-17 23:53:58.347807');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (33, '2', 'Jeremy G', '2', '[{"changed": {"fields": ["person_title"]}}]', 42, 3, '2017-08-17 23:54:06.560844');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (34, '1', 'About MarketingByE', '2', '[{"changed": {"fields": ["active"]}}]', 39, 3, '2017-08-18 20:51:45.742169');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (35, '1', 'About MarketingByE', '2', '[{"changed": {"fields": ["active"]}}]', 39, 3, '2017-08-18 20:51:53.736044');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (36, '1', 'About MarketingByE', '2', '[{"changed": {"fields": ["active"]}}]', 39, 3, '2017-08-18 20:52:52.838276');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (37, '1', 'About MarketingByE', '2', '[{"changed": {"fields": ["active"]}}]', 39, 3, '2017-08-18 20:53:00.150386');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (38, '2', 'Services object', '2', '[{"changed": {"fields": ["glyph_icon"]}}]', 41, 1, '2017-09-01 01:44:05.462737');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (39, '3', 'Services object', '2', '[{"changed": {"fields": ["glyph_icon"]}}]', 41, 1, '2017-09-01 01:44:16.597772');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (40, '1', 'Services object', '2', '[{"changed": {"fields": ["glyph_icon"]}}]', 41, 1, '2017-09-01 01:44:25.370084');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (41, '4', 'Services object', '1', '[{"added": {}}]', 41, 1, '2017-09-03 03:27:15.184925');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (42, '1', 'About object', '2', '[]', 39, 1, '2017-09-03 03:52:20.527442');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (43, '1', 'About object', '2', '[{"changed": {"fields": ["image"]}}]', 39, 1, '2017-09-03 04:37:57.012084');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (44, '1', 'About object', '2', '[{"changed": {"fields": ["image"]}}]', 39, 1, '2017-09-03 04:52:02.190755');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (45, '1', 'About object', '2', '[{"changed": {"fields": ["image"]}}]', 39, 1, '2017-09-03 04:56:18.621522');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (46, '1', 'About object', '2', '[{"changed": {"fields": ["about_headline_text"]}}]', 39, 1, '2017-09-03 04:57:25.641462');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (47, '1', 'About object', '2', '[{"changed": {"fields": ["about_headline_text"]}}]', 39, 1, '2017-09-03 04:57:53.114907');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (48, '1', 'Marquee object', '2', '[{"changed": {"fields": ["color"]}}]', 40, 1, '2017-09-03 21:07:52.780407');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (49, '1', 'Marquee object', '2', '[{"changed": {"fields": ["image"]}}]', 40, 1, '2017-09-03 21:12:28.041658');
INSERT INTO "public"."django_admin_log"("id", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id", "action_time") VALUES (50, '5', 'Markdown Example', '2', '[{"changed": {"fields": ["image", "tags"]}}]', 7, 1, '2017-09-06 23:56:49.862764');

/*
Table structure for table 'public.django_content_type'
*/

DROP TABLE IF EXISTS "public"."django_content_type" CASCADE;
CREATE TABLE "public"."django_content_type" (
	"id" INTEGER NOT NULL,
	"app_label" VARCHAR(100)  NOT NULL,
	"model" VARCHAR(100)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_django_content_type";
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "PK_django_content_type" PRIMARY KEY("id");
DROP INDEX IF EXISTS "django_content_type_app_label_model_76bd3d3b_uniq";
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "public"."django_content_type"("app_label", "model");

/*
Dumping data for table 'public.django_content_type'
*/

INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (1, 'admin', 'logentry');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (2, 'auth', 'permission');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (3, 'auth', 'user');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (4, 'auth', 'group');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (6, 'sessions', 'session');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (7, 'blog', 'post');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (8, 'blog', 'comment');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (9, 'taggit', 'tag');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (10, 'taggit', 'taggeditem');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (11, 'sites', 'site');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (12, 'wagtailcore', 'page');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (13, 'wagtailadmin', 'admin');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (14, 'wagtaildocs', 'document');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (15, 'wagtailimages', 'image');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (16, 'wagtailforms', 'formsubmission');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (17, 'wagtailredirects', 'redirect');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (18, 'wagtailembeds', 'embed');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (19, 'wagtailusers', 'userprofile');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (20, 'wagtailimages', 'rendition');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (21, 'wagtailsearch', 'query');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (22, 'wagtailsearch', 'querydailyhits');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (23, 'wagtailcore', 'grouppagepermission');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (24, 'wagtailcore', 'pagerevision');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (25, 'wagtailcore', 'pageviewrestriction');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (26, 'wagtailcore', 'groupcollectionpermission');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (27, 'wagtailcore', 'collection');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (28, 'wagtailcore', 'site');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (29, 'wagtailgridder', 'gridcategory');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (30, 'wagtailgridder', 'gridindexgriditemrelationship');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (31, 'wagtailgridder', 'griditemtag');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (32, 'wagtailgridder', 'griditem');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (33, 'wagtailgridder', 'gridindexpage');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (34, 'home', 'homepage');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (35, 'cms', 'comment');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (36, 'cms', 'blogpagerelatedlink');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (37, 'cms', 'blogpage');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (38, 'wagtailcore', 'collectionviewrestriction');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (39, 'homepage', 'about');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (40, 'homepage', 'marquee');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (41, 'homepage', 'services');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (42, 'homepage', 'team');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (43, 'photologue', 'photosize');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (44, 'photologue', 'photoeffect');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (45, 'photologue', 'watermark');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (46, 'photologue', 'gallery');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (47, 'photologue', 'photo');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (48, 'homepage', 'skill');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (49, 'homepage', 'testimonial');
INSERT INTO "public"."django_content_type"("id", "app_label", "model") VALUES (50, 'homepage', 'partner');

/*
Table structure for table 'public.django_migrations'
*/

DROP TABLE IF EXISTS "public"."django_migrations" CASCADE;
CREATE TABLE "public"."django_migrations" (
	"id" INTEGER NOT NULL,
	"app" VARCHAR(255)  NOT NULL,
	"name" VARCHAR(255)  NOT NULL,
	"applied" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_django_migrations";
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "PK_django_migrations" PRIMARY KEY("id");

/*
Dumping data for table 'public.django_migrations'
*/

INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (1, 'contenttypes', '0001_initial', '2017-05-31 23:16:28.099253');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (2, 'auth', '0001_initial', '2017-05-31 23:16:28.172148');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (3, 'admin', '0001_initial', '2017-05-31 23:16:28.222959');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2017-05-31 23:16:28.276469');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2017-05-31 23:16:28.353150');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2017-05-31 23:16:28.395437');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (7, 'auth', '0003_alter_user_email_max_length', '2017-05-31 23:16:28.456497');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (8, 'auth', '0004_alter_user_username_opts', '2017-05-31 23:16:28.522705');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (9, 'auth', '0005_alter_user_last_login_null', '2017-05-31 23:16:28.572923');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (10, 'auth', '0006_require_contenttypes_0002', '2017-05-31 23:16:28.591336');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2017-05-31 23:16:28.657722');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (12, 'auth', '0008_alter_user_username_max_length', '2017-05-31 23:16:28.736776');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (13, 'sessions', '0001_initial', '2017-05-31 23:16:28.780204');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (14, 'blog', '0001_initial', '2017-05-31 23:49:37.109332');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (15, 'blog', '0002_comment', '2017-06-06 00:39:54.645823');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (16, 'taggit', '0001_initial', '2017-06-06 01:29:53.752377');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (17, 'taggit', '0002_auto_20150616_2121', '2017-06-06 01:29:53.813306');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (18, 'blog', '0003_post_tags', '2017-06-06 01:29:53.872331');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (19, 'sites', '0001_initial', '2017-06-11 00:44:46.778399');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (20, 'sites', '0002_alter_domain_unique', '2017-06-11 00:44:46.823780');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (21, 'wagtailcore', '0001_initial', '2017-06-17 20:06:25.073757');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (22, 'wagtailcore', '0002_initial_data', '2017-06-17 20:06:25.101314');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (23, 'wagtailcore', '0003_add_uniqueness_constraint_on_group_page_permission', '2017-06-17 20:06:25.117610');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (24, 'wagtailcore', '0004_page_locked', '2017-06-17 20:06:25.134951');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (25, 'wagtailcore', '0005_add_page_lock_permission_to_moderators', '2017-06-17 20:06:25.151821');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (26, 'wagtailcore', '0006_add_lock_page_permission', '2017-06-17 20:06:25.169968');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (27, 'wagtailcore', '0007_page_latest_revision_created_at', '2017-06-17 20:06:25.187803');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (28, 'wagtailcore', '0008_populate_latest_revision_created_at', '2017-06-17 20:06:25.206060');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (29, 'wagtailcore', '0009_remove_auto_now_add_from_pagerevision_created_at', '2017-06-17 20:06:25.219550');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (30, 'wagtailcore', '0010_change_page_owner_to_null_on_delete', '2017-06-17 20:06:25.238271');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (31, 'wagtailcore', '0011_page_first_published_at', '2017-06-17 20:06:25.256715');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (32, 'wagtailcore', '0012_extend_page_slug_field', '2017-06-17 20:06:25.273241');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (33, 'wagtailcore', '0013_update_golive_expire_help_text', '2017-06-17 20:06:25.291478');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (34, 'wagtailcore', '0014_add_verbose_name', '2017-06-17 20:06:25.310126');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (35, 'wagtailcore', '0015_add_more_verbose_names', '2017-06-17 20:06:25.329154');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (36, 'wagtailcore', '0016_change_page_url_path_to_text_field', '2017-06-17 20:06:25.346153');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (37, 'wagtailcore', '0017_change_edit_page_permission_description', '2017-06-17 20:06:25.410360');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (38, 'wagtailcore', '0018_pagerevision_submitted_for_moderation_index', '2017-06-17 20:06:25.466167');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (39, 'wagtailcore', '0019_verbose_names_cleanup', '2017-06-17 20:06:25.585868');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (40, 'wagtailcore', '0020_add_index_on_page_first_published_at', '2017-06-17 20:06:25.681960');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (41, 'wagtailcore', '0021_capitalizeverbose', '2017-06-17 20:06:26.698583');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (42, 'wagtailcore', '0022_add_site_name', '2017-06-17 20:06:26.757400');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (43, 'wagtailcore', '0023_alter_page_revision_on_delete_behaviour', '2017-06-17 20:06:26.833549');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (44, 'wagtailcore', '0024_collection', '2017-06-17 20:06:26.877282');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (45, 'wagtailcore', '0025_collection_initial_data', '2017-06-17 20:06:26.945329');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (46, 'wagtailcore', '0026_group_collection_permission', '2017-06-17 20:06:27.033423');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (47, 'wagtailadmin', '0001_create_admin_access_permissions', '2017-06-17 20:06:27.120750');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (48, 'wagtailcore', '0027_fix_collection_path_collation', '2017-06-17 20:06:27.204512');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (49, 'wagtailcore', '0024_alter_page_content_type_on_delete_behaviour', '2017-06-17 20:06:27.264300');
INSERT INTO "public"."django_migrations"("id", "app", "name", "applied") VALUES (50, 'wagtailcore', '0028_merge', '2017-06-17 20:06:27.284531');

/*
Table structure for table 'public.django_session'
*/

DROP TABLE IF EXISTS "public"."django_session" CASCADE;
CREATE TABLE "public"."django_session" (
	"session_key" VARCHAR(40)  NOT NULL,
	"session_data" TEXT NOT NULL,
	"expire_date" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_django_session";
ALTER TABLE "public"."django_session" ADD CONSTRAINT "PK_django_session" PRIMARY KEY("session_key");
DROP INDEX IF EXISTS "django_session_expire_date_a5c62663";
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session"("expire_date");
DROP INDEX IF EXISTS "sqlite_autoindex_django_session_1";
CREATE UNIQUE INDEX "sqlite_autoindex_django_session_1" ON "public"."django_session"("session_key");

/*
Dumping data for table 'public.django_session'
*/

INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('tmnsqoa8p64uphpvxyfb0wexbkivssa6', 'OGVhMWY3YjNhNjJiNTZjNzc2NjMwYzQ2MDZkZjFiMDgxMmJmYmVjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWMxZTQ2MDQzZTJlNDE0MWUzODRkY2VhNTI3YjEyNDg1YTgxOWJlMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-06-14 23:58:09.420911');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('95czj2waidqoesk02mxdep0spd5qn246', 'ZTk0YjE0MWQ5YTRkMDNhMGZlYjE3ZDdhZTJmNjljYjZhN2FkYjRlNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MGFlYmM3NTcyZTIwZWE5OTlkMDExMWM0Y2U5ZDk1MTkzYTUwOWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-06-17 21:41:22.325058');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('g4zy97onqoaxakif9vvcc2bzqda3ghxn', 'ZTYyMjBkODZhN2M3YjViZmIwOTY0MzQ5MmViZDU5YmZiYzQ3NTQzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmUxYmEwNTFjNWVhYzc0MWQ0NDM5YmI1NTc3MTY1OWU3NDBlOGI3MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-06-20 00:45:44.278333');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('9xtx9od3xkvyn5op7kmk5vlzgvg5cjn3', 'NTNiMDEzZWI5YjVmOWM1OGE1ZmU1NjQzZDllZjRlMDViOWFkZTExYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMWJhMDUxYzVlYWM3NDFkNDQzOWJiNTU3NzE2NTllNzQwZThiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-06-21 00:51:59.032057');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('wrq31ypv4wj528ahnuixwkhc96niaano', 'ZTYyMjBkODZhN2M3YjViZmIwOTY0MzQ5MmViZDU5YmZiYzQ3NTQzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmUxYmEwNTFjNWVhYzc0MWQ0NDM5YmI1NTc3MTY1OWU3NDBlOGI3MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-06-25 00:20:42.091563');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('i4eao85882lhkjlorbzeneh1vsb4bhbr', 'N2Q0YjAzNjMzYWQ0YWRiMjUxNDYxZjc4NjhjZTM0YWRmZjFmM2U2Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE2ZGRlNmI3NDkwZjMyY2I0ODJlMmIxNmRlNjZiMWFjMjZiZWUxMDkiLCJ3YWd0YWlsLXByZXZpZXctaG9tZSxob21lcGFnZSwyIjpbeyJzZW9fdGl0bGUiOlsiIl0sIm5leHQiOlsiIl0sImJvZHkiOlsiPGgzPlRoaXMgaXMgYSB0ZXN0IG9mIHRoZSBXYWd0YWlsIHN5c3RlbS4gJm5ic3A7PC9oMz4iXSwidGl0bGUiOlsiV29ya2luZyBpbiBXZXN0IFBoaWxseSJdLCJnb19saXZlX2F0IjpbIiJdLCJleHBpcmVfYXQiOlsiIl0sInNsdWciOlsid29ya2luZy13ZXN0LXBoaWxseSJdLCJjc3JmbWlkZGxld2FyZXRva2VuIjpbImdKdmwwcnc4TWFKZmdOWm1ndk15Qnl3cGgydTVtcHV0dEc3cG1FTndtYUV4eEdjNElFbDN0SjRMRFRDMUxhWTIiXSwic2VhcmNoX2Rlc2NyaXB0aW9uIjpbIiJdfSwxNDk3NzMxOTYwLjUyODI0ODNdLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-07-01 20:39:20.560884');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('fit5d3sw3m0k25n7mcvtn4jcnv4r8d9n', 'MmIyYjRiMThjMjViNzBiYTY3N2YzMWNlMzRiYmVjOGY4ZDhlYWQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImE2ZGRlNmI3NDkwZjMyY2I0ODJlMmIxNmRlNjZiMWFjMjZiZWUxMDkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-07-01 23:01:35.698706');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('tlw5k8xpy107rx0z2wa3ob6nx39v7oma', 'MGY1YjBiNWZiMWNkM2EyNWIwNWZiODAxMTY0ZmMyYjVkODVkNGI2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZTFiYTA1MWM1ZWFjNzQxZDQ0MzliYjU1NzcxNjU5ZTc0MGU4YjcxIn0=', '2017-07-15 22:19:54.097305');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('xakvkue5yktbvmku8251plk5lybxupvz', 'NTNiMDEzZWI5YjVmOWM1OGE1ZmU1NjQzZDllZjRlMDViOWFkZTExYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMWJhMDUxYzVlYWM3NDFkNDQzOWJiNTU3NzE2NTllNzQwZThiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-12 21:49:08.628406');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('5bf2cuga4uapagl85yyqgi76kdyxz8q1', 'ZTYyMjBkODZhN2M3YjViZmIwOTY0MzQ5MmViZDU5YmZiYzQ3NTQzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmUxYmEwNTFjNWVhYzc0MWQ0NDM5YmI1NTc3MTY1OWU3NDBlOGI3MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-08-18 00:26:39.018806');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('r47jnpfnd5ui4md1ojeonrxh3kb7qq1v', 'N2Y3OGRiZmE0ZmE0YjM2ODMwNWRkYzE4ODUxMDY1ZjVhYWYyZTExNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Q5NDU4OTQwZTRkYmZjZjdiY2QzZjE0NWFiNTYzNDQ4ZjQwZjIwOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-08-22 01:06:39.258962');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('ym3qyliaepvqxm6s3q4j953550a9a5kh', 'NTdlOTdlYWZkZGY2NzQwMzdjZWQ3NzE0NjU4MGNiYTYyMzI3ZTBkOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkOTQ1ODk0MGU0ZGJmY2Y3YmNkM2YxNDVhYjU2MzQ0OGY0MGYyMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-08-31 21:04:52.751229');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('w7zhnxx5iw9f4eim8d3eslieyvhfl5ab', 'MGY1YjBiNWZiMWNkM2EyNWIwNWZiODAxMTY0ZmMyYjVkODVkNGI2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZTFiYTA1MWM1ZWFjNzQxZDQ0MzliYjU1NzcxNjU5ZTc0MGU4YjcxIn0=', '2017-09-13 01:24:00.359489');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('oq3v4ikzzvidkzn2gqfuhihndmwpckex', 'YWQ2ZTIzMzY5NWY0NGRjYWVlNTE2MjNkNmViYjYzMDFjNzFkZDkzYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiZTFiYTA1MWM1ZWFjNzQxZDQ0MzliYjU1NzcxNjU5ZTc0MGU4YjcxIn0=', '2017-09-15 01:43:23.192743');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('9xctitfhpe8rarwwsewh2v3lxi8s20ed', 'YWQ2ZTIzMzY5NWY0NGRjYWVlNTE2MjNkNmViYjYzMDFjNzFkZDkzYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiZTFiYTA1MWM1ZWFjNzQxZDQ0MzliYjU1NzcxNjU5ZTc0MGU4YjcxIn0=', '2017-09-17 03:24:10.492772');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('is7a2i295o5gebjlq2iu60xpm8a9l00w', 'NTNiMDEzZWI5YjVmOWM1OGE1ZmU1NjQzZDllZjRlMDViOWFkZTExYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMWJhMDUxYzVlYWM3NDFkNDQzOWJiNTU3NzE2NTllNzQwZThiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-09-20 23:56:09.954166');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('9cmbg6j5lfx7yqprjxd22x33skmp82hv', 'MGRiNTM2ZmRiYTk1YTAzMWQzYmNiYTY2NTAyMWQ1MjhlZTg4ZTE5ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMWJhMDUxYzVlYWM3NDFkNDQzOWJiNTU3NzE2NTllNzQwZThiNzEiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-09-21 23:32:00.605848');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('23j0qzd53f4n0beqvso1dz2lu01fkvbr', 'NzU1OTMwNGM4YjJkN2E3Y2Y5OTVmMDJkMWU2MThmODgwYjk4ZGU2MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkOTQ1ODk0MGU0ZGJmY2Y3YmNkM2YxNDVhYjU2MzQ0OGY0MGYyMDkiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-10-01 00:22:58.020441');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('j67xieu610fs8d71jwrs71xgnip7i48o', 'NmRmNmY2NGVkOWFlNGU1ZTUyNWUwYzE1ODUxOTJiNGEzNDg1NDNmNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmUxYmEwNTFjNWVhYzc0MWQ0NDM5YmI1NTc3MTY1OWU3NDBlOGI3MSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-04 00:12:44.102994');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('r25ty15ze5cblpy9udm9klfkyp2w3bwj', 'NTNiMDEzZWI5YjVmOWM1OGE1ZmU1NjQzZDllZjRlMDViOWFkZTExYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMWJhMDUxYzVlYWM3NDFkNDQzOWJiNTU3NzE2NTllNzQwZThiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-06 00:00:40.029014');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('r8nuep9onnk6vioc48d4k57wmur2vltk', 'NzU1OTMwNGM4YjJkN2E3Y2Y5OTVmMDJkMWU2MThmODgwYjk4ZGU2MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkOTQ1ODk0MGU0ZGJmY2Y3YmNkM2YxNDVhYjU2MzQ0OGY0MGYyMDkiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-16 23:35:16.926236');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('m5fhoxe2tjqbndkvfn797bq15iz9xp7u', 'OTk0NDJkNGVjNzQ3YzNkNTBkNmZiZTYwMzljNjA3MWY0ZDlhOTJmZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Q5NDU4OTQwZTRkYmZjZjdiY2QzZjE0NWFiNTYzNDQ4ZjQwZjIwOSIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-11-23 01:14:37.532881');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('32e97r4gh10zcg9xq06g0gmwk6nzktzr', 'ZWJmYzI3ZjY3YzAwNTQ5MjM3NjQwYmY3MTJhNjYxYWFlMzliYWIwMjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDk0NTg5NDBlNGRiZmNmN2JjZDNmMTQ1YWI1NjM0NDhmNDBmMjA5In0=', '2017-11-25 20:47:41.951994');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('uum1flgp5zy1xtmgmr829tmtf076vab3', 'ZDMwNTBiZDI4N2Y5YjdkNmMxMDQ5ZWVkYzYyYjgyMGJhM2MwMzc5NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiIzZDk0NTg5NDBlNGRiZmNmN2JjZDNmMTQ1YWI1NjM0NDhmNDBmMjA5In0=', '2017-12-01 17:27:16.460867');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('r82t4isdlew8vod6y7f4lkgz2247shnh', 'OTk0NDJkNGVjNzQ3YzNkNTBkNmZiZTYwMzljNjA3MWY0ZDlhOTJmZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Q5NDU4OTQwZTRkYmZjZjdiY2QzZjE0NWFiNTYzNDQ4ZjQwZjIwOSIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-12-09 19:46:51.477531');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('kifcw9lbh1pkkixlgxsfbqvrcundh5e0', 'NTdlOTdlYWZkZGY2NzQwMzdjZWQ3NzE0NjU4MGNiYTYyMzI3ZTBkOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkOTQ1ODk0MGU0ZGJmY2Y3YmNkM2YxNDVhYjU2MzQ0OGY0MGYyMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-12-15 01:39:20.475178');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('ykye9efxz2kqt87qvurmxid63t49d92n', 'ZWJmYzI3ZjY3YzAwNTQ5MjM3NjQwYmY3MTJhNjYxYWFlMzliYWIwMjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDk0NTg5NDBlNGRiZmNmN2JjZDNmMTQ1YWI1NjM0NDhmNDBmMjA5In0=', '2017-12-16 03:17:44.600766');
INSERT INTO "public"."django_session"("session_key", "session_data", "expire_date") VALUES ('duci2slqeb3dj2z8tesgpykcqy9pqqto', 'NzU1OTMwNGM4YjJkN2E3Y2Y5OTVmMDJkMWU2MThmODgwYjk4ZGU2MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkOTQ1ODk0MGU0ZGJmY2Y3YmNkM2YxNDVhYjU2MzQ0OGY0MGYyMDkiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-12-19 23:14:01.897468');

/*
Table structure for table 'public.django_site'
*/

DROP TABLE IF EXISTS "public"."django_site" CASCADE;
CREATE TABLE "public"."django_site" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(50)  NOT NULL,
	"domain" VARCHAR(100)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_django_site";
ALTER TABLE "public"."django_site" ADD CONSTRAINT "PK_django_site" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_django_site_1";
CREATE UNIQUE INDEX "sqlite_autoindex_django_site_1" ON "public"."django_site"("domain");

/*
Dumping data for table 'public.django_site'
*/

INSERT INTO "public"."django_site"("id", "name", "domain") VALUES (1, 'example.com', 'example.com');
INSERT INTO "public"."django_site"("id", "name", "domain") VALUES (2, 'vagrant.wharton.upenn.edu:8000', 'vagrant.wharton.upenn.edu:8000');

/*
Table structure for table 'public.home_homepage'
*/

DROP TABLE IF EXISTS "public"."home_homepage" CASCADE;
CREATE TABLE "public"."home_homepage" (
	"page_ptr_id" INTEGER NOT NULL,
	"body" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_home_homepage";
ALTER TABLE "public"."home_homepage" ADD CONSTRAINT "PK_home_homepage" PRIMARY KEY("page_ptr_id");

/*
Dumping data for table 'public.home_homepage'
*/

INSERT INTO "public"."home_homepage"("page_ptr_id", "body") VALUES (3, '<h3>This is a test of the Wagtail system.  </h3>');

/*
Table structure for table 'public.homepage_about'
*/

DROP TABLE IF EXISTS "public"."homepage_about" CASCADE;
CREATE TABLE "public"."homepage_about" (
	"id" INTEGER NOT NULL,
	"about_headline_text" VARCHAR(250)  NOT NULL,
	"about_body" TEXT NOT NULL,
	"image" VARCHAR(100) ,
	"active" TEXT NOT NULL,
	"release_date" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_about";
ALTER TABLE "public"."homepage_about" ADD CONSTRAINT "PK_homepage_about" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_about'
*/

INSERT INTO "public"."homepage_about"("id", "about_headline_text", "about_body", "image", "active", "release_date") VALUES (1, 'About MarketingByE', 'How could you?! Haven''t you learned anything from that guy who gives those sermons at church? Captain Whatshisname? We live in a society of laws! Why do you think I took you to all those Police Academy movies? For fun? Well, I didn''t hear anybody laughing, did you? Except at that guy who made sound effects. Makes sound effects and laughs. Where was I? Oh yeah! Stay out of my booze. Kids, we need to talk for a moment about Krusty Brand Chew Goo Gum Like Substance. We all knew it contained spider eggs, but the hantavirus? That came out of left field. So if you''re experiencing numbness and/or comas, send five dollars to antidote, PO box…', 'social-media-management-package.png', '1', '2017-08-18');

/*
Table structure for table 'public.homepage_howwedo'
*/

DROP TABLE IF EXISTS "public"."homepage_howwedo" CASCADE;
CREATE TABLE "public"."homepage_howwedo" (
	"id" INTEGER NOT NULL,
	"title" VARCHAR(250)  NOT NULL,
	"image" VARCHAR(100) ,
	"description" TEXT NOT NULL,
	"release_date" TEXT NOT NULL,
	"active" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_howwedo";
ALTER TABLE "public"."homepage_howwedo" ADD CONSTRAINT "PK_homepage_howwedo" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_howwedo'
*/

INSERT INTO "public"."homepage_howwedo"("id", "title", "image", "description", "release_date", "active") VALUES (1, 'Review Generation', 'sentiment-tracking.png', 'We’ll help your business build consumer trust with a steady stream of new reviews.', '2017-11-25', '1');
INSERT INTO "public"."homepage_howwedo"("id", "title", "image", "description", "release_date", "active") VALUES (2, 'Brand Protection', 'brand-protection.png', 'You’ll stay in control of your online reputation with our brand monitoring services.', '2017-11-25', '1');
INSERT INTO "public"."homepage_howwedo"("id", "title", "image", "description", "release_date", "active") VALUES (3, 'Instant Alerts', 'gather-reviews.png', 'Receive an instant email alert or text message when a customer posts a new review.', '2017-11-25', '1');
INSERT INTO "public"."homepage_howwedo"("id", "title", "image", "description", "release_date", "active") VALUES (4, 'Intelligent Analytics', 'review-generation.png', 'Track review growth, sentiment, star rating and ROI in your analytics dashboard.', '2017-11-26', '1');

/*
Table structure for table 'public.homepage_marquee'
*/

DROP TABLE IF EXISTS "public"."homepage_marquee" CASCADE;
CREATE TABLE "public"."homepage_marquee" (
	"id" INTEGER NOT NULL,
	"welcome_text" VARCHAR(250)  NOT NULL,
	"headline_text" TEXT NOT NULL,
	"button_text" VARCHAR(50)  NOT NULL,
	"button_link" VARCHAR(150)  NOT NULL,
	"image" VARCHAR(100) ,
	"active" TEXT NOT NULL,
	"release_date" TEXT NOT NULL,
	"color" VARCHAR(10)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_marquee";
ALTER TABLE "public"."homepage_marquee" ADD CONSTRAINT "PK_homepage_marquee" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_marquee'
*/

INSERT INTO "public"."homepage_marquee"("id", "welcome_text", "headline_text", "button_text", "button_link", "image", "active", "release_date", "color") VALUES (1, 'Welcome to MarketingByE', 'We will create your next Marketing Campaign', 'More Info', 'http://www.google.com', 'Dog09032017.jpg', '1', '2017-08-18', 'FFFF00');

/*
Table structure for table 'public.homepage_partner'
*/

DROP TABLE IF EXISTS "public"."homepage_partner" CASCADE;
CREATE TABLE "public"."homepage_partner" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(250)  NOT NULL,
	"image" VARCHAR(100)  NOT NULL,
	"link" VARCHAR(250)  NOT NULL,
	"release_date" TEXT NOT NULL,
	"active" TEXT NOT NULL,
	"link_txt" VARCHAR(100)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_partner";
ALTER TABLE "public"."homepage_partner" ADD CONSTRAINT "PK_homepage_partner" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_partner'
*/

INSERT INTO "public"."homepage_partner"("id", "name", "image", "link", "release_date", "active", "link_txt") VALUES (1, 'Learning Tree', 'learningtree-logo_6yPPM7h.png', 'https://www.learningtree.com', '2017-11-12', '1', 'Learn More');
INSERT INTO "public"."homepage_partner"("id", "name", "image", "link", "release_date", "active", "link_txt") VALUES (2, 'Microsoft', 'microsoft-logo_CFNkOnx.png', 'www.microsoft.com', '2017-11-12', '1', 'More information');
INSERT INTO "public"."homepage_partner"("id", "name", "image", "link", "release_date", "active", "link_txt") VALUES (3, 'Udacity', 'udacity-logo_157kbB5.png', 'https://www.udacity.com', '2017-11-12', '1', 'Udacity Info');
INSERT INTO "public"."homepage_partner"("id", "name", "image", "link", "release_date", "active", "link_txt") VALUES (4, 'W3Schools', 'w3schools-logo_pLvmQ7Z.png', 'https://www.w3schools.com/', '2017-11-12', '1', 'Learning from the best');

/*
Table structure for table 'public.homepage_services'
*/

DROP TABLE IF EXISTS "public"."homepage_services" CASCADE;
CREATE TABLE "public"."homepage_services" (
	"id" INTEGER NOT NULL,
	"services_headline_text" VARCHAR(250)  NOT NULL,
	"services_body" TEXT NOT NULL,
	"glyph_icon" VARCHAR(250)  NOT NULL,
	"active" TEXT NOT NULL,
	"release_date" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_services";
ALTER TABLE "public"."homepage_services" ADD CONSTRAINT "PK_homepage_services" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_services'
*/

INSERT INTO "public"."homepage_services"("id", "services_headline_text", "services_body", "glyph_icon", "active", "release_date") VALUES (1, 'CLEAN CODE', 'Sample short descriptionRemember the time he ate my goldfish? And you lied and said I never had goldfish. Then why did I have the bowl, Bart? *Why did I have the bowl?* Your questions have become more redundant and annoying than the last three "Highlander" movies.', 'fa-instagram', '1', '2017-08-18');
INSERT INTO "public"."homepage_services"("id", "services_headline_text", "services_body", "glyph_icon", "active", "release_date") VALUES (2, 'RESPONSIVE DESIGN', 'Fat Tony is a cancer on this fair city! He is the cancer and I am the…uh…what cures cancer? Get ready, skanks! It''s time for the truth train! Your guilty consciences may make you vote Democratic, but secretly you all yearn for a Republican president to lower taxes, brutalize criminals, and rule you like a king!!!', 'fa-bank', '1', '2017-09-08');
INSERT INTO "public"."homepage_services"("id", "services_headline_text", "services_body", "glyph_icon", "active", "release_date") VALUES (3, 'FREE SUPPORT & UPDATE', 'Don''t kid yourself, Jimmy. If a cow ever got the chance, he''d eat you and everyone you care about! I''ll keep it short and sweet — Family. Religion. Friendship. These are the three demons you must slay if you wish to succeed in business.', 'fa-twitter', '1', '2017-08-18');
INSERT INTO "public"."homepage_services"("id", "services_headline_text", "services_body", "glyph_icon", "active", "release_date") VALUES (4, 'Personal Security', 'What you lookin’ at? You all a bunch of fuckin’ assholes. You know why? You don’t have the guts to be what you wanna be? You need people like me. You need people like me so you can point your fuckin’ fingers and say, “That’s the bad guy.” So… what that make you? Good? You’re not good. You just know how to hide, how to lie. Me, I don’t have that problem. Me, I always tell the truth. Even when I lie. So say good night to the bad guy! Come on. The last time you gonna see a bad guy like this again, let me tell you. Come on. Make way for the bad guy. There’s a bad guy comin’ through! Better get outta his way!', 'fa fa-amazon', '0', '2017-09-03');

/*
Table structure for table 'public.homepage_skill'
*/

DROP TABLE IF EXISTS "public"."homepage_skill" CASCADE;
CREATE TABLE "public"."homepage_skill" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(250)  NOT NULL,
	"link" VARCHAR(250)  NOT NULL,
	"release_date" TEXT NOT NULL,
	"active" TEXT NOT NULL,
	"css_class" VARCHAR(50)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_skill";
ALTER TABLE "public"."homepage_skill" ADD CONSTRAINT "PK_homepage_skill" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_skill'
*/

INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (1, 'PRINT', '', '2017-11-09', '1', 'print');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (2, 'RESPONSIVE', '', '2017-11-09', '1', 'responsive');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (3, 'UI DESIGN', '', '2017-11-09', '1', 'ui');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (4, 'BRANDING', '', '2017-11-09', '1', 'branding');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (5, 'EVENT PLANNING', '', '2017-11-09', '1', 'motion');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (6, 'BLOGING', '', '2017-11-09', '1', 'bloging');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (7, 'MOBILE APP', '', '2017-11-09', '1', 'mobile');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (8, 'E-COMMERCE', '', '2017-11-09', '1', 'e-commerc');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (9, 'HTML5', '', '2017-11-09', '1', 'html5');
INSERT INTO "public"."homepage_skill"("id", "name", "link", "release_date", "active", "css_class") VALUES (10, 'MARKETING BYE', '', '2017-11-11', '1', 'logo');

/*
Table structure for table 'public.homepage_team'
*/

DROP TABLE IF EXISTS "public"."homepage_team" CASCADE;
CREATE TABLE "public"."homepage_team" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(250)  NOT NULL,
	"person_title" VARCHAR(250)  NOT NULL,
	"bio" TEXT NOT NULL,
	"image" VARCHAR(100) ,
	"read_more_link_txt" VARCHAR(100)  NOT NULL,
	"active" TEXT NOT NULL,
	"release_date" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_team";
ALTER TABLE "public"."homepage_team" ADD CONSTRAINT "PK_homepage_team" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_team'
*/

INSERT INTO "public"."homepage_team"("id", "name", "person_title", "bio", "image", "read_more_link_txt", "active", "release_date") VALUES (1, 'Elena W', 'The Boss', 'I am currently doing a career change. I was previously in management for 3 years and I am transitioning into social media marketing.', 'ElenaPic_tf9pgi3.jpg', 'Read More', '1', '2017-09-08');
INSERT INTO "public"."homepage_team"("id", "name", "person_title", "bio", "image", "read_more_link_txt", "active", "release_date") VALUES (2, 'Jeremy G', 'The Consigliere', 'Jeremy is focused on the future and is looking to expand 901WebStudios to Philadelphia.', 'Team-Jeremy.jpg', 'Read More', '1', '2017-08-18');
INSERT INTO "public"."homepage_team"("id", "name", "person_title", "bio", "image", "read_more_link_txt", "active", "release_date") VALUES (3, 'Arya ESSCG1', 'The Mascot', 'Simply put Arya is a princess and is the inspirational force behind MarketingByE.', 'Team-Arya.jpg', 'Read More', '1', '2017-08-18');
INSERT INTO "public"."homepage_team"("id", "name", "person_title", "bio", "image", "read_more_link_txt", "active", "release_date") VALUES (4, 'Whitney C', 'The Capo', 'Whitney helps us web guys in the ole word department. Soon to be a doctor, the future is bright for this rising star in South Philadelphia.', 'Team-Whitney.jpg', 'Read More', '1', '2017-08-18');

/*
Table structure for table 'public.homepage_testimonial'
*/

DROP TABLE IF EXISTS "public"."homepage_testimonial" CASCADE;
CREATE TABLE "public"."homepage_testimonial" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(250)  NOT NULL,
	"title" VARCHAR(250)  NOT NULL,
	"image" VARCHAR(100) ,
	"testimonial_text" TEXT NOT NULL,
	"release_date" TEXT NOT NULL,
	"active" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_testimonial";
ALTER TABLE "public"."homepage_testimonial" ADD CONSTRAINT "PK_homepage_testimonial" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_testimonial'
*/

INSERT INTO "public"."homepage_testimonial"("id", "name", "title", "image", "testimonial_text", "release_date", "active") VALUES (1, 'Steve Jobs', 'CEO', 'Jobs-Thumb.jpg', 'I think if you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.', '2017-11-09', '1');
INSERT INTO "public"."homepage_testimonial"("id", "name", "title", "image", "testimonial_text", "release_date", "active") VALUES (2, 'Albert Einstein', 'Inventor', 'Einstein-Thumb.jpg', 'Every day I remind myself that my inner and outer life are based on the labors of other men, living and dead, and that I must exert myself in order to give in the same measure as I have received and am still receiving.', '2017-11-09', '1');
INSERT INTO "public"."homepage_testimonial"("id", "name", "title", "image", "testimonial_text", "release_date", "active") VALUES (3, 'Tom Petty', 'Musician', 'Petty-Thumb.jpg', 'Go after what you really love and find a way to make that work for you, and then you''ll be a happy person.', '2017-11-09', '1');
INSERT INTO "public"."homepage_testimonial"("id", "name", "title", "image", "testimonial_text", "release_date", "active") VALUES (4, 'John Wooden', 'Coach', 'Wooden-Thumb.jpg', 'The most important thing in the world is family and love.', '2017-11-09', '1');

/*
Table structure for table 'public.homepage_title'
*/

DROP TABLE IF EXISTS "public"."homepage_title" CASCADE;
CREATE TABLE "public"."homepage_title" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(250)  NOT NULL,
	"section_number" INTEGER NOT NULL,
	"release_date" TEXT NOT NULL,
	"active" TEXT NOT NULL,
	"color_class" VARCHAR(8)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_title";
ALTER TABLE "public"."homepage_title" ADD CONSTRAINT "PK_homepage_title" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_homepage_title_1";
CREATE UNIQUE INDEX "sqlite_autoindex_homepage_title_1" ON "public"."homepage_title"("section_number");

/*
Dumping data for table 'public.homepage_title'
*/

INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (1, 'About', 1, '2017-11-17', '1', 'blackTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (2, 'News', 2, '2017-11-17', '1', 'blackTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (3, 'Team', 3, '2017-11-17', '1', 'blackTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (4, 'Certifications', 4, '2017-11-17', '1', 'whiteTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (5, 'Services', 5, '2017-11-17', '1', 'blackTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (6, 'Contact', 6, '2017-11-17', '1', 'whiteTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (7, 'Skills', 7, '2017-11-17', '0', 'whiteTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (8, 'Quotes', 8, '2017-11-17', '1', 'whiteTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (9, 'What we do', 9, '2017-11-25', '1', 'blackTxt');
INSERT INTO "public"."homepage_title"("id", "name", "section_number", "release_date", "active", "color_class") VALUES (10, 'How we do it', 10, '2017-11-25', '1', 'blackTxt');

/*
Table structure for table 'public.homepage_whatwedo'
*/

DROP TABLE IF EXISTS "public"."homepage_whatwedo" CASCADE;
CREATE TABLE "public"."homepage_whatwedo" (
	"id" INTEGER NOT NULL,
	"whatwedo_body" TEXT NOT NULL,
	"release_date" TEXT NOT NULL,
	"active" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_homepage_whatwedo";
ALTER TABLE "public"."homepage_whatwedo" ADD CONSTRAINT "PK_homepage_whatwedo" PRIMARY KEY("id");

/*
Dumping data for table 'public.homepage_whatwedo'
*/

INSERT INTO "public"."homepage_whatwedo"("id", "whatwedo_body", "release_date", "active") VALUES (1, 'Meet Renown, our review marketing and reputation management platform that helps your business generate positive reviews while making sure your brand is protected online. Renown helps you take control of your business’s online reputation with an automated review marketing strategy.', '2017-11-25', '1');

/*
Table structure for table 'public.photologue_gallery'
*/

DROP TABLE IF EXISTS "public"."photologue_gallery" CASCADE;
CREATE TABLE "public"."photologue_gallery" (
	"id" INTEGER NOT NULL,
	"date_added" TEXT NOT NULL,
	"slug" VARCHAR(250)  NOT NULL,
	"description" TEXT NOT NULL,
	"is_public" TEXT NOT NULL,
	"title" VARCHAR(250)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_gallery";
ALTER TABLE "public"."photologue_gallery" ADD CONSTRAINT "PK_photologue_gallery" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_gallery_2";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_gallery_2" ON "public"."photologue_gallery"("title");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_gallery_1";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_gallery_1" ON "public"."photologue_gallery"("slug");

/*
Dumping data for table 'public.photologue_gallery'
*/

INSERT INTO "public"."photologue_gallery"("id", "date_added", "slug", "description", "is_public", "title") VALUES (1, '2017-09-17 00:37:23', 'dogs', 'This is a gallery about Dogs.', '1', 'Dogs');

/*
Table structure for table 'public.photologue_gallery_photos'
*/

DROP TABLE IF EXISTS "public"."photologue_gallery_photos" CASCADE;
CREATE TABLE "public"."photologue_gallery_photos" (
	"id" INTEGER NOT NULL,
	"gallery_id" INTEGER NOT NULL,
	"sort_value" INTEGER NOT NULL,
	"photo_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_gallery_photos";
ALTER TABLE "public"."photologue_gallery_photos" ADD CONSTRAINT "PK_photologue_gallery_photos" PRIMARY KEY("id");
DROP INDEX IF EXISTS "photologue_gallery_photos_photo_id_38de5ebc";
CREATE INDEX "photologue_gallery_photos_photo_id_38de5ebc" ON "public"."photologue_gallery_photos"("photo_id");
DROP INDEX IF EXISTS "photologue_gallery_photos_gallery_id_770eac69";
CREATE INDEX "photologue_gallery_photos_gallery_id_770eac69" ON "public"."photologue_gallery_photos"("gallery_id");
DROP INDEX IF EXISTS "photologue_gallery_photos_gallery_id_photo_id_ac3d7969_uniq";
CREATE UNIQUE INDEX "photologue_gallery_photos_gallery_id_photo_id_ac3d7969_uniq" ON "public"."photologue_gallery_photos"("gallery_id", "photo_id");

/*
Dumping data for table 'public.photologue_gallery_photos'
*/

INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (6, 1, 1, 1);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (7, 1, 2, 2);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (8, 1, 3, 17);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (9, 1, 4, 15);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (10, 1, 5, 14);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (11, 1, 6, 13);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (12, 1, 7, 16);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (13, 1, 8, 6);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (14, 1, 9, 4);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (15, 1, 10, 12);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (16, 1, 11, 3);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (17, 1, 12, 11);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (18, 1, 13, 10);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (19, 1, 14, 9);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (20, 1, 15, 8);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (21, 1, 16, 7);
INSERT INTO "public"."photologue_gallery_photos"("id", "gallery_id", "sort_value", "photo_id") VALUES (22, 1, 17, 5);

/*
Table structure for table 'public.photologue_gallery_sites'
*/

DROP TABLE IF EXISTS "public"."photologue_gallery_sites" CASCADE;
CREATE TABLE "public"."photologue_gallery_sites" (
	"id" INTEGER NOT NULL,
	"gallery_id" INTEGER NOT NULL,
	"site_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_gallery_sites";
ALTER TABLE "public"."photologue_gallery_sites" ADD CONSTRAINT "PK_photologue_gallery_sites" PRIMARY KEY("id");
DROP INDEX IF EXISTS "photologue_gallery_sites_site_id_ff8bed9d";
CREATE INDEX "photologue_gallery_sites_site_id_ff8bed9d" ON "public"."photologue_gallery_sites"("site_id");
DROP INDEX IF EXISTS "photologue_gallery_sites_gallery_id_263bc875";
CREATE INDEX "photologue_gallery_sites_gallery_id_263bc875" ON "public"."photologue_gallery_sites"("gallery_id");
DROP INDEX IF EXISTS "photologue_gallery_sites_gallery_id_site_id_4158504d_uniq";
CREATE UNIQUE INDEX "photologue_gallery_sites_gallery_id_site_id_4158504d_uniq" ON "public"."photologue_gallery_sites"("gallery_id", "site_id");

/*
Dumping data for table 'public.photologue_gallery_sites'
*/

INSERT INTO "public"."photologue_gallery_sites"("id", "gallery_id", "site_id") VALUES (1, 1, 2);

/*
Table structure for table 'public.photologue_photo'
*/

DROP TABLE IF EXISTS "public"."photologue_photo" CASCADE;
CREATE TABLE "public"."photologue_photo" (
	"id" INTEGER NOT NULL,
	"image" VARCHAR(100)  NOT NULL,
	"date_taken" TEXT,
	"view_count" INTEGER NOT NULL,
	"crop_from" VARCHAR(10)  NOT NULL,
	"slug" VARCHAR(250)  NOT NULL,
	"caption" TEXT NOT NULL,
	"date_added" TEXT NOT NULL,
	"is_public" TEXT NOT NULL,
	"effect_id" INTEGER,
	"title" VARCHAR(250)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_photo";
ALTER TABLE "public"."photologue_photo" ADD CONSTRAINT "PK_photologue_photo" PRIMARY KEY("id");
DROP INDEX IF EXISTS "photologue_photo_effect_id_5f27aba5";
CREATE INDEX "photologue_photo_effect_id_5f27aba5" ON "public"."photologue_photo"("effect_id");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_photo_2";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_photo_2" ON "public"."photologue_photo"("title");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_photo_1";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_photo_1" ON "public"."photologue_photo"("slug");

/*
Dumping data for table 'public.photologue_photo'
*/

INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (1, 'photologue/photos/DogC.jpg', NULL, 284, 'center', 'dog-days', 'Cool dog pic', '2017-09-17 00:39:40', '0', NULL, 'Dog Days');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (2, 'photologue/photos/DogB.jpg', NULL, 967, 'center', 'cool-dogs', 'Really cool dogs', '2017-09-17 00:41:46', '1', NULL, 'Cool Dogs');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (3, 'photologue/photos/DogC_qr3TsYW.jpg', NULL, 921, 'center', 'chilling-dog', 'This dog knows how to chill.', '2017-09-17 00:42:15', '1', NULL, 'Chilling Dog');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (4, 'photologue/photos/DogD.jpg', NULL, 924, 'center', 'smart-dog', 'Very smart dog.', '2017-09-17 00:42:42', '1', NULL, 'Smart Dog');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (5, 'photologue/photos/Dog1.jpg', NULL, 623, 'center', 'max', '', '2017-11-12 00:28:11', '1', NULL, 'Max');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (6, 'photologue/photos/Dog2.jpg', NULL, 648, 'center', 'charlie', '', '2017-11-12 00:33:04', '1', NULL, 'Charlie');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (7, 'photologue/photos/Dog3.jpeg', NULL, 627, 'center', 'buddy', '', '2017-11-12 00:33:46', '1', NULL, 'Buddy');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (8, 'photologue/photos/Dog4.jpg', NULL, 629, 'center', 'cooper', '', '2017-11-12 00:34:01', '1', NULL, 'Cooper');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (9, 'photologue/photos/Dog5.jpg', NULL, 630, 'center', 'bear', '', '2017-11-12 00:34:15', '1', NULL, 'Bear');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (10, 'photologue/photos/Dog6.jpg', NULL, 632, 'center', 'bentley', '', '2017-11-12 00:34:31', '1', NULL, 'Bentley');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (11, 'photologue/photos/Dog7.jpg', NULL, 639, 'center', 'tucker', '', '2017-11-12 00:34:58', '1', NULL, 'Tucker');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (12, 'photologue/photos/Dog8.jpg', NULL, 644, 'center', 'winston', '', '2017-11-12 00:35:12', '1', NULL, 'Winston');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (13, 'photologue/photos/Dog9.jpeg', NULL, 657, 'center', 'hank', '', '2017-11-12 00:35:26', '1', NULL, 'Hank');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (14, 'photologue/photos/Dog10.jpg', NULL, 662, 'center', 'loki', '', '2017-11-12 00:36:27', '1', NULL, 'Loki');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (15, 'photologue/photos/Dog11.jpg', NULL, 664, 'center', 'marley', '', '2017-11-12 00:36:46', '1', NULL, 'Marley');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (16, 'photologue/photos/Dog12.jpg', NULL, 650, 'center', 'jazzy', '', '2017-11-12 00:37:47', '1', NULL, 'Jazzy');
INSERT INTO "public"."photologue_photo"("id", "image", "date_taken", "view_count", "crop_from", "slug", "caption", "date_added", "is_public", "effect_id", "title") VALUES (17, 'photologue/photos/Dog13.jpg', NULL, 670, 'center', 'moose', '', '2017-11-12 00:38:03', '1', NULL, 'Moose');

/*
Table structure for table 'public.photologue_photo_sites'
*/

DROP TABLE IF EXISTS "public"."photologue_photo_sites" CASCADE;
CREATE TABLE "public"."photologue_photo_sites" (
	"id" INTEGER NOT NULL,
	"photo_id" INTEGER NOT NULL,
	"site_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_photo_sites";
ALTER TABLE "public"."photologue_photo_sites" ADD CONSTRAINT "PK_photologue_photo_sites" PRIMARY KEY("id");
DROP INDEX IF EXISTS "photologue_photo_sites_site_id_a26b734c";
CREATE INDEX "photologue_photo_sites_site_id_a26b734c" ON "public"."photologue_photo_sites"("site_id");
DROP INDEX IF EXISTS "photologue_photo_sites_photo_id_1e4e4a98";
CREATE INDEX "photologue_photo_sites_photo_id_1e4e4a98" ON "public"."photologue_photo_sites"("photo_id");
DROP INDEX IF EXISTS "photologue_photo_sites_photo_id_site_id_a8528863_uniq";
CREATE UNIQUE INDEX "photologue_photo_sites_photo_id_site_id_a8528863_uniq" ON "public"."photologue_photo_sites"("photo_id", "site_id");

/*
Dumping data for table 'public.photologue_photo_sites'
*/

INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (1, 1, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (2, 2, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (3, 3, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (4, 4, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (5, 5, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (6, 6, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (7, 7, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (8, 8, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (9, 9, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (10, 10, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (11, 11, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (12, 12, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (13, 13, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (14, 14, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (15, 15, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (16, 16, 2);
INSERT INTO "public"."photologue_photo_sites"("id", "photo_id", "site_id") VALUES (17, 17, 2);

/*
Table structure for table 'public.photologue_photoeffect'
*/

DROP TABLE IF EXISTS "public"."photologue_photoeffect" CASCADE;
CREATE TABLE "public"."photologue_photoeffect" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(30)  NOT NULL,
	"description" TEXT NOT NULL,
	"transpose_method" VARCHAR(15)  NOT NULL,
	"color" TEXT NOT NULL,
	"brightness" TEXT NOT NULL,
	"contrast" TEXT NOT NULL,
	"sharpness" TEXT NOT NULL,
	"filters" VARCHAR(200)  NOT NULL,
	"reflection_size" TEXT NOT NULL,
	"reflection_strength" TEXT NOT NULL,
	"background_color" VARCHAR(7)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_photoeffect";
ALTER TABLE "public"."photologue_photoeffect" ADD CONSTRAINT "PK_photologue_photoeffect" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_photoeffect_1";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_photoeffect_1" ON "public"."photologue_photoeffect"("name");

/*
Dumping data for table 'public.photologue_photoeffect'
*/


/*
Table structure for table 'public.photologue_photosize'
*/

DROP TABLE IF EXISTS "public"."photologue_photosize" CASCADE;
CREATE TABLE "public"."photologue_photosize" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(40)  NOT NULL,
	"width" INTEGER NOT NULL,
	"height" INTEGER NOT NULL,
	"quality" INTEGER NOT NULL,
	"upscale" TEXT NOT NULL,
	"crop" TEXT NOT NULL,
	"pre_cache" TEXT NOT NULL,
	"increment_count" TEXT NOT NULL,
	"effect_id" INTEGER,
	"watermark_id" INTEGER
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_photosize";
ALTER TABLE "public"."photologue_photosize" ADD CONSTRAINT "PK_photologue_photosize" PRIMARY KEY("id");
DROP INDEX IF EXISTS "photologue_photosize_watermark_id_f9419f99";
CREATE INDEX "photologue_photosize_watermark_id_f9419f99" ON "public"."photologue_photosize"("watermark_id");
DROP INDEX IF EXISTS "photologue_photosize_effect_id_1d9b1b30";
CREATE INDEX "photologue_photosize_effect_id_1d9b1b30" ON "public"."photologue_photosize"("effect_id");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_photosize_1";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_photosize_1" ON "public"."photologue_photosize"("name");

/*
Dumping data for table 'public.photologue_photosize'
*/

INSERT INTO "public"."photologue_photosize"("id", "name", "width", "height", "quality", "upscale", "crop", "pre_cache", "increment_count", "effect_id", "watermark_id") VALUES (1, 'admin_thumbnail', 100, 75, 70, '0', '1', '1', '0', NULL, NULL);
INSERT INTO "public"."photologue_photosize"("id", "name", "width", "height", "quality", "upscale", "crop", "pre_cache", "increment_count", "effect_id", "watermark_id") VALUES (2, 'thumbnail', 600, 400, 70, '0', '1', '1', '0', NULL, NULL);
INSERT INTO "public"."photologue_photosize"("id", "name", "width", "height", "quality", "upscale", "crop", "pre_cache", "increment_count", "effect_id", "watermark_id") VALUES (3, 'display', 400, 0, 70, '0', '0', '1', '1', NULL, NULL);

/*
Table structure for table 'public.photologue_watermark'
*/

DROP TABLE IF EXISTS "public"."photologue_watermark" CASCADE;
CREATE TABLE "public"."photologue_watermark" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(30)  NOT NULL,
	"description" TEXT NOT NULL,
	"image" VARCHAR(100)  NOT NULL,
	"style" VARCHAR(5)  NOT NULL,
	"opacity" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_photologue_watermark";
ALTER TABLE "public"."photologue_watermark" ADD CONSTRAINT "PK_photologue_watermark" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_photologue_watermark_1";
CREATE UNIQUE INDEX "sqlite_autoindex_photologue_watermark_1" ON "public"."photologue_watermark"("name");

/*
Dumping data for table 'public.photologue_watermark'
*/


/*
Table structure for table 'public.sqlite_sequence'
*/

DROP TABLE IF EXISTS "public"."sqlite_sequence" CASCADE;
CREATE TABLE "public"."sqlite_sequence" (
	"name" TEXT,
	"seq" TEXT
) WITH OIDS;

/*
Dumping data for table 'public.sqlite_sequence'
*/

INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('django_migrations', '160');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('django_admin_log', '158');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('django_content_type', '53');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('auth_permission', '157');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('auth_user', '3');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('blog_comment', '2');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('taggit_tag', '7');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('taggit_taggeditem', '10');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('django_site', '2');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('auth_group', '2');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_site', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_collection', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('auth_group_permissions', '14');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_pagerevision', '4');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_pageviewrestriction', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_grouppagepermission', '6');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_groupcollectionpermission', '8');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtaildocs_document', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailforms_formsubmission', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailimages_image', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailimages_rendition', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailredirects_redirect', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailsearch_editorspick', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailusers_userprofile', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('blog_post', '5');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_pageviewrestriction_groups', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailgridder_gridindexgriditemrelationship', '0');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_services', '4');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_team', '4');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_about', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_marquee', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('photologue_photosize', '3');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('photologue_gallery_photos', '22');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('photologue_gallery_sites', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('photologue_photo_sites', '17');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('photologue_gallery', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('photologue_photo', '17');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_skill', '10');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_testimonial', '4');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_partner', '4');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_title', '10');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_whatwedo', '1');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('homepage_howwedo', '4');
INSERT INTO "public"."sqlite_sequence"("name", "seq") VALUES ('wagtailcore_page', '4');

/*
Table structure for table 'public.taggit_tag'
*/

DROP TABLE IF EXISTS "public"."taggit_tag" CASCADE;
CREATE TABLE "public"."taggit_tag" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(100)  NOT NULL,
	"slug" VARCHAR(100)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_taggit_tag";
ALTER TABLE "public"."taggit_tag" ADD CONSTRAINT "PK_taggit_tag" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_taggit_tag_2";
CREATE UNIQUE INDEX "sqlite_autoindex_taggit_tag_2" ON "public"."taggit_tag"("slug");
DROP INDEX IF EXISTS "sqlite_autoindex_taggit_tag_1";
CREATE UNIQUE INDEX "sqlite_autoindex_taggit_tag_1" ON "public"."taggit_tag"("name");

/*
Dumping data for table 'public.taggit_tag'
*/

INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (1, 'music', 'music');
INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (2, 'jazz', 'jazz');
INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (3, 'django', 'django');
INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (4, 'hello', 'hello');
INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (5, 'world', 'world');
INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (6, 'Music', 'music_1');
INSERT INTO "public"."taggit_tag"("id", "name", "slug") VALUES (7, 'Markdown', 'markdown');

/*
Table structure for table 'public.taggit_taggeditem'
*/

DROP TABLE IF EXISTS "public"."taggit_taggeditem" CASCADE;
CREATE TABLE "public"."taggit_taggeditem" (
	"id" INTEGER NOT NULL,
	"object_id" INTEGER NOT NULL,
	"content_type_id" INTEGER NOT NULL,
	"tag_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_taggit_taggeditem";
ALTER TABLE "public"."taggit_taggeditem" ADD CONSTRAINT "PK_taggit_taggeditem" PRIMARY KEY("id");
DROP INDEX IF EXISTS "taggit_taggeditem_content_type_id_object_id_196cc965_idx";
CREATE INDEX "taggit_taggeditem_content_type_id_object_id_196cc965_idx" ON "public"."taggit_taggeditem"("content_type_id", "object_id");
DROP INDEX IF EXISTS "taggit_taggeditem_tag_id_f4f5b767";
CREATE INDEX "taggit_taggeditem_tag_id_f4f5b767" ON "public"."taggit_taggeditem"("tag_id");
DROP INDEX IF EXISTS "taggit_taggeditem_content_type_id_9957a03c";
CREATE INDEX "taggit_taggeditem_content_type_id_9957a03c" ON "public"."taggit_taggeditem"("content_type_id");
DROP INDEX IF EXISTS "taggit_taggeditem_object_id_e2d7d1df";
CREATE INDEX "taggit_taggeditem_object_id_e2d7d1df" ON "public"."taggit_taggeditem"("object_id");

/*
Dumping data for table 'public.taggit_taggeditem'
*/

INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (1, 1, 7, 1);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (2, 1, 7, 2);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (4, 2, 7, 4);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (5, 2, 7, 5);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (6, 4, 7, 1);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (7, 4, 7, 2);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (8, 5, 7, 6);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (9, 5, 7, 7);
INSERT INTO "public"."taggit_taggeditem"("id", "object_id", "content_type_id", "tag_id") VALUES (10, 3, 7, 1);

/*
Table structure for table 'public.wagtailcore_collection'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_collection" CASCADE;
CREATE TABLE "public"."wagtailcore_collection" (
	"id" INTEGER NOT NULL,
	"path" VARCHAR(255)  NOT NULL,
	"depth" INTEGER NOT NULL,
	"numchild" INTEGER NOT NULL,
	"name" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_collection";
ALTER TABLE "public"."wagtailcore_collection" ADD CONSTRAINT "PK_wagtailcore_collection" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_wagtailcore_collection_1";
CREATE UNIQUE INDEX "sqlite_autoindex_wagtailcore_collection_1" ON "public"."wagtailcore_collection"("path");

/*
Dumping data for table 'public.wagtailcore_collection'
*/

INSERT INTO "public"."wagtailcore_collection"("id", "path", "depth", "numchild", "name") VALUES (1, '0001', 1, 0, 'Root');

/*
Table structure for table 'public.wagtailcore_collectionviewrestriction'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_collectionviewrestriction" CASCADE;
CREATE TABLE "public"."wagtailcore_collectionviewrestriction" (
	"id" INTEGER NOT NULL,
	"restriction_type" VARCHAR(20)  NOT NULL,
	"password" VARCHAR(255)  NOT NULL,
	"collection_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_collectionviewrestriction";
ALTER TABLE "public"."wagtailcore_collectionviewrestriction" ADD CONSTRAINT "PK_wagtailcore_collectionviewrestriction" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_collectionviewrestriction_collection_id_761908ec";
CREATE INDEX "wagtailcore_collectionviewrestriction_collection_id_761908ec" ON "public"."wagtailcore_collectionviewrestriction"("collection_id");

/*
Dumping data for table 'public.wagtailcore_collectionviewrestriction'
*/


/*
Table structure for table 'public.wagtailcore_collectionviewrestriction_groups'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_collectionviewrestriction_groups" CASCADE;
CREATE TABLE "public"."wagtailcore_collectionviewrestriction_groups" (
	"id" INTEGER NOT NULL,
	"collectionviewrestriction_id" INTEGER NOT NULL,
	"group_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_collectionviewrestriction_groups";
ALTER TABLE "public"."wagtailcore_collectionviewrestriction_groups" ADD CONSTRAINT "PK_wagtailcore_collectionviewrestriction_groups" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3";
CREATE INDEX "wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3" ON "public"."wagtailcore_collectionviewrestriction_groups"("group_id");
DROP INDEX IF EXISTS "wagtailcore_collectionviewrestriction_groups_collectionviewrestriction_id_47320efd";
CREATE INDEX "wagtailcore_collectionviewrestriction_groups_collectionviewrestriction_id_47320efd" ON "public"."wagtailcore_collectionviewrestriction_groups"("collectionviewrestriction_id");
DROP INDEX IF EXISTS "wagtailcore_collectionviewrestriction_groups_collectionviewrestriction_id_group_id_988995ae_uniq";
CREATE UNIQUE INDEX "wagtailcore_collectionviewrestriction_groups_collectionviewrestriction_id_group_id_988995ae_uniq" ON "public"."wagtailcore_collectionviewrestriction_groups"("collectionviewrestriction_id", "group_id");

/*
Dumping data for table 'public.wagtailcore_collectionviewrestriction_groups'
*/


/*
Table structure for table 'public.wagtailcore_groupcollectionpermission'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_groupcollectionpermission" CASCADE;
CREATE TABLE "public"."wagtailcore_groupcollectionpermission" (
	"id" INTEGER NOT NULL,
	"collection_id" INTEGER NOT NULL,
	"group_id" INTEGER NOT NULL,
	"permission_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_groupcollectionpermission";
ALTER TABLE "public"."wagtailcore_groupcollectionpermission" ADD CONSTRAINT "PK_wagtailcore_groupcollectionpermission" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_groupcollectionpermission_permission_id_1b626275";
CREATE INDEX "wagtailcore_groupcollectionpermission_permission_id_1b626275" ON "public"."wagtailcore_groupcollectionpermission"("permission_id");
DROP INDEX IF EXISTS "wagtailcore_groupcollectionpermission_group_id_05d61460";
CREATE INDEX "wagtailcore_groupcollectionpermission_group_id_05d61460" ON "public"."wagtailcore_groupcollectionpermission"("group_id");
DROP INDEX IF EXISTS "wagtailcore_groupcollectionpermission_collection_id_5423575a";
CREATE INDEX "wagtailcore_groupcollectionpermission_collection_id_5423575a" ON "public"."wagtailcore_groupcollectionpermission"("collection_id");
DROP INDEX IF EXISTS "wagtailcore_groupcollectionpermission_group_id_collection_id_permission_id_a21cefe9_uniq";
CREATE UNIQUE INDEX "wagtailcore_groupcollectionpermission_group_id_collection_id_permission_id_a21cefe9_uniq" ON "public"."wagtailcore_groupcollectionpermission"("group_id", "collection_id", "permission_id");

/*
Dumping data for table 'public.wagtailcore_groupcollectionpermission'
*/

INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (1, 1, 2, 35);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (2, 1, 1, 35);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (3, 1, 2, 36);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (4, 1, 1, 36);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (5, 1, 2, 38);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (6, 1, 1, 38);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (7, 1, 2, 39);
INSERT INTO "public"."wagtailcore_groupcollectionpermission"("id", "collection_id", "group_id", "permission_id") VALUES (8, 1, 1, 39);

/*
Table structure for table 'public.wagtailcore_grouppagepermission'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_grouppagepermission" CASCADE;
CREATE TABLE "public"."wagtailcore_grouppagepermission" (
	"id" INTEGER NOT NULL,
	"group_id" INTEGER NOT NULL,
	"page_id" INTEGER NOT NULL,
	"permission_type" VARCHAR(20)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_grouppagepermission";
ALTER TABLE "public"."wagtailcore_grouppagepermission" ADD CONSTRAINT "PK_wagtailcore_grouppagepermission" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_grouppagepermission_page_id_710b114a";
CREATE INDEX "wagtailcore_grouppagepermission_page_id_710b114a" ON "public"."wagtailcore_grouppagepermission"("page_id");
DROP INDEX IF EXISTS "wagtailcore_grouppagepermission_group_id_fc07e671";
CREATE INDEX "wagtailcore_grouppagepermission_group_id_fc07e671" ON "public"."wagtailcore_grouppagepermission"("group_id");
DROP INDEX IF EXISTS "wagtailcore_grouppagepermission_group_id_page_id_permission_type_0898bdf8_uniq";
CREATE UNIQUE INDEX "wagtailcore_grouppagepermission_group_id_page_id_permission_type_0898bdf8_uniq" ON "public"."wagtailcore_grouppagepermission"("group_id", "page_id", "permission_type");

/*
Dumping data for table 'public.wagtailcore_grouppagepermission'
*/

INSERT INTO "public"."wagtailcore_grouppagepermission"("id", "group_id", "page_id", "permission_type") VALUES (1, 1, 1, 'add');
INSERT INTO "public"."wagtailcore_grouppagepermission"("id", "group_id", "page_id", "permission_type") VALUES (2, 1, 1, 'edit');
INSERT INTO "public"."wagtailcore_grouppagepermission"("id", "group_id", "page_id", "permission_type") VALUES (3, 1, 1, 'publish');
INSERT INTO "public"."wagtailcore_grouppagepermission"("id", "group_id", "page_id", "permission_type") VALUES (4, 2, 1, 'add');
INSERT INTO "public"."wagtailcore_grouppagepermission"("id", "group_id", "page_id", "permission_type") VALUES (5, 2, 1, 'edit');
INSERT INTO "public"."wagtailcore_grouppagepermission"("id", "group_id", "page_id", "permission_type") VALUES (6, 1, 1, 'lock');

/*
Table structure for table 'public.wagtailcore_page'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_page" CASCADE;
CREATE TABLE "public"."wagtailcore_page" (
	"id" INTEGER NOT NULL,
	"path" VARCHAR(255)  NOT NULL,
	"depth" INTEGER NOT NULL,
	"numchild" INTEGER NOT NULL,
	"title" VARCHAR(255)  NOT NULL,
	"slug" VARCHAR(255)  NOT NULL,
	"live" TEXT NOT NULL,
	"has_unpublished_changes" TEXT NOT NULL,
	"url_path" TEXT NOT NULL,
	"seo_title" VARCHAR(255)  NOT NULL,
	"show_in_menus" TEXT NOT NULL,
	"search_description" TEXT NOT NULL,
	"go_live_at" TEXT,
	"expire_at" TEXT,
	"expired" TEXT NOT NULL,
	"content_type_id" INTEGER NOT NULL,
	"owner_id" INTEGER,
	"locked" TEXT NOT NULL,
	"latest_revision_created_at" TEXT,
	"first_published_at" TEXT,
	"live_revision_id" INTEGER,
	"last_published_at" TEXT,
	"draft_title" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_page";
ALTER TABLE "public"."wagtailcore_page" ADD CONSTRAINT "PK_wagtailcore_page" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_page_live_revision_id_930bd822";
CREATE INDEX "wagtailcore_page_live_revision_id_930bd822" ON "public"."wagtailcore_page"("live_revision_id");
DROP INDEX IF EXISTS "wagtailcore_page_first_published_at_2b5dd637";
CREATE INDEX "wagtailcore_page_first_published_at_2b5dd637" ON "public"."wagtailcore_page"("first_published_at");
DROP INDEX IF EXISTS "wagtailcore_page_owner_id_fbf7c332";
CREATE INDEX "wagtailcore_page_owner_id_fbf7c332" ON "public"."wagtailcore_page"("owner_id");
DROP INDEX IF EXISTS "wagtailcore_page_content_type_id_c28424df";
CREATE INDEX "wagtailcore_page_content_type_id_c28424df" ON "public"."wagtailcore_page"("content_type_id");
DROP INDEX IF EXISTS "wagtailcore_page_slug_e7c11b8f";
CREATE INDEX "wagtailcore_page_slug_e7c11b8f" ON "public"."wagtailcore_page"("slug");
DROP INDEX IF EXISTS "sqlite_autoindex_wagtailcore_page_1";
CREATE UNIQUE INDEX "sqlite_autoindex_wagtailcore_page_1" ON "public"."wagtailcore_page"("path");

/*
Dumping data for table 'public.wagtailcore_page'
*/

INSERT INTO "public"."wagtailcore_page"("id", "path", "depth", "numchild", "title", "slug", "live", "has_unpublished_changes", "url_path", "seo_title", "show_in_menus", "search_description", "go_live_at", "expire_at", "expired", "content_type_id", "owner_id", "locked", "latest_revision_created_at", "first_published_at", "live_revision_id", "last_published_at", "draft_title") VALUES (1, '0001', 1, 1, 'Root', 'root', '1', '0', '/', '', '0', '', NULL, NULL, '0', 12, NULL, '0', NULL, NULL, NULL, NULL, 'Root');
INSERT INTO "public"."wagtailcore_page"("id", "path", "depth", "numchild", "title", "slug", "live", "has_unpublished_changes", "url_path", "seo_title", "show_in_menus", "search_description", "go_live_at", "expire_at", "expired", "content_type_id", "owner_id", "locked", "latest_revision_created_at", "first_published_at", "live_revision_id", "last_published_at", "draft_title") VALUES (2, '00010001', 2, 2, 'Welcome to your new Wagtail site!', 'home', '1', '0', '/home/', '', '0', '', NULL, NULL, '0', 12, NULL, '0', NULL, NULL, NULL, NULL, 'Welcome to your new Wagtail site!');
INSERT INTO "public"."wagtailcore_page"("id", "path", "depth", "numchild", "title", "slug", "live", "has_unpublished_changes", "url_path", "seo_title", "show_in_menus", "search_description", "go_live_at", "expire_at", "expired", "content_type_id", "owner_id", "locked", "latest_revision_created_at", "first_published_at", "live_revision_id", "last_published_at", "draft_title") VALUES (3, '000100010001', 3, 0, 'Working in West Philly', 'working-west-philly', '1', '0', '/home/working-west-philly/', '', '0', '', NULL, NULL, '0', 34, 2, '0', '2017-06-17 20:29:53.262646', '2017-06-17 20:29:53.434037', NULL, '2017-06-17 20:29:53.262646', 'Working in West Philly');
INSERT INTO "public"."wagtailcore_page"("id", "path", "depth", "numchild", "title", "slug", "live", "has_unpublished_changes", "url_path", "seo_title", "show_in_menus", "search_description", "go_live_at", "expire_at", "expired", "content_type_id", "owner_id", "locked", "latest_revision_created_at", "first_published_at", "live_revision_id", "last_published_at", "draft_title") VALUES (4, '000100010002', 3, 0, 'Please work mother fucker', 'please-work-mother-fucker', '1', '0', '/home/please-work-mother-fucker/', '', '0', '', NULL, NULL, '0', 37, 3, '0', '2017-12-01 02:28:23.140566', '2017-12-01 02:12:40.042523', 4, '2017-12-01 02:28:23.514275', 'Please work mother fucker');

/*
Table structure for table 'public.wagtailcore_pagerevision'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_pagerevision" CASCADE;
CREATE TABLE "public"."wagtailcore_pagerevision" (
	"id" INTEGER NOT NULL,
	"submitted_for_moderation" TEXT NOT NULL,
	"content_json" TEXT NOT NULL,
	"approved_go_live_at" TEXT,
	"page_id" INTEGER NOT NULL,
	"user_id" INTEGER,
	"created_at" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_pagerevision";
ALTER TABLE "public"."wagtailcore_pagerevision" ADD CONSTRAINT "PK_wagtailcore_pagerevision" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_pagerevision_created_at_66954e3b";
CREATE INDEX "wagtailcore_pagerevision_created_at_66954e3b" ON "public"."wagtailcore_pagerevision"("created_at");
DROP INDEX IF EXISTS "wagtailcore_pagerevision_user_id_2409d2f4";
CREATE INDEX "wagtailcore_pagerevision_user_id_2409d2f4" ON "public"."wagtailcore_pagerevision"("user_id");
DROP INDEX IF EXISTS "wagtailcore_pagerevision_page_id_d421cc1d";
CREATE INDEX "wagtailcore_pagerevision_page_id_d421cc1d" ON "public"."wagtailcore_pagerevision"("page_id");
DROP INDEX IF EXISTS "wagtailcore_pagerevision_submitted_for_moderation_c682e44c";
CREATE INDEX "wagtailcore_pagerevision_submitted_for_moderation_c682e44c" ON "public"."wagtailcore_pagerevision"("submitted_for_moderation");

/*
Dumping data for table 'public.wagtailcore_pagerevision'
*/

INSERT INTO "public"."wagtailcore_pagerevision"("id", "submitted_for_moderation", "content_json", "approved_go_live_at", "page_id", "user_id", "created_at") VALUES (1, '0', '{"seo_title": "", "numchild": 0, "depth": 3, "pk": 3, "body": "<h3>This is a test of the Wagtail system. \u00a0</h3>", "locked": false, "expire_at": null, "has_unpublished_changes": false, "expired": false, "url_path": "/home/working-west-philly/", "first_published_at": null, "search_description": "", "show_in_menus": false, "live": true, "title": "Working in West Philly", "path": "000100010001", "latest_revision_created_at": null, "go_live_at": null, "content_type": 34, "owner": 2, "slug": "working-west-philly"}', NULL, 3, 2, '2017-06-17 20:29:53.262646');
INSERT INTO "public"."wagtailcore_pagerevision"("id", "submitted_for_moderation", "content_json", "approved_go_live_at", "page_id", "user_id", "created_at") VALUES (2, '0', '{"content_type": 37, "search_description": "", "expired": false, "author": "", "expire_at": null, "status": "draft", "url_path": "/home/please-work-mother-fucker/", "first_published_at": null, "live_revision": null, "locked": false, "seo_title": "", "last_published_at": null, "body": "o! I was ashamed to be SEEN with you. I like being with you. I care deeply for nature. Army had half a day. No! I was ashamed to be SEEN with you. I like being with you. Guy''s a pro. He''ll want to use your yacht, and I don''t want this thing smelling like fish.<br/><br/>Bad news. Andy Griffith turned us down. He didn''t like his trailer. Steve Holt! Steve Holt! I don''t criticize you! And if you''re worried about criticism, sometimes a diet is the best defense.<br/><br/>That''s what it said on ''Ask Jeeves.'' I don''t understand the question, and I won''t respond to it. It''s called ''taking advantage.'' It''s what gets you ahead in life. Oh, you''re gonna be in a coma, all right.<br/><br/>There''s only one man I''ve ever called a coward, and that''s Brian Doyle Murray. No, what I''m calling you is a television actor. Not tricks, Michael, illusions. I care deeply for nature. But I bought a yearbook ad from you, doesn''t that mean anything anymore?<br/><br/>Now, when you do this without getting punched in the chest, you''ll have more fun. Now, when you do this without getting punched in the chest, you''ll have more fun. No\u2026 but I''d like to be asked! Now, when you do this without getting punched in the chest, you''ll have more fun.<br/><br/>I''ve opened a door here that I regret. Army had half a day. I hear the jury''s still out on science. First place chick is hot, but has an attitude, doesn''t date magicians. Marry me.<br/><br/>That''s why you always leave a note! It''s a hug, Michael. I''m hugging you. I''m half machine. I''m a monster. I''m a monster.<br/><br/>I''ve opened a door here that I regret. Army had half a day. Army had half a day. There''s so many poorly chosen words in that sentence. Steve Holt! Across from where?<br/><br/><p>Guy''s a pro. I care deeply for nature. First place chick is hot, but has an attitude, doesn''t date magicians. Bad news. Andy Griffith turned us down. He didn''t like his trailer. Not tricks, Michael, illusions.</p>", "title": "Please work mother fucker", "depth": 3, "has_unpublished_changes": false, "related_links": [], "draft_title": "Please work mother fucker", "updated": "2017-12-01T02:12:25.448Z", "live": false, "created": "2017-12-01T02:12:25.447Z", "latest_revision_created_at": null, "slug": "please-work-mother-fucker", "path": "000100010002", "show_in_menus": false, "owner": 3, "publish": "2017-12-01T02:12:25.002Z", "go_live_at": null, "numchild": 0, "pk": 4}', NULL, 4, 3, '2017-12-01 02:12:25.457340');
INSERT INTO "public"."wagtailcore_pagerevision"("id", "submitted_for_moderation", "content_json", "approved_go_live_at", "page_id", "user_id", "created_at") VALUES (3, '0', '{"content_type": 37, "search_description": "", "expired": false, "author": "", "expire_at": null, "status": "draft", "url_path": "/home/please-work-mother-fucker/", "first_published_at": null, "live_revision": null, "locked": false, "seo_title": "", "last_published_at": null, "body": "o! I was ashamed to be SEEN with you. I like being with you. I care deeply for nature. Army had half a day. No! I was ashamed to be SEEN with you. I like being with you. Guy''s a pro. He''ll want to use your yacht, and I don''t want this thing smelling like fish.<br/><br/>Bad news. Andy Griffith turned us down. He didn''t like his trailer. Steve Holt! Steve Holt! I don''t criticize you! And if you''re worried about criticism, sometimes a diet is the best defense.<br/><br/>That''s what it said on ''Ask Jeeves.'' I don''t understand the question, and I won''t respond to it. It''s called ''taking advantage.'' It''s what gets you ahead in life. Oh, you''re gonna be in a coma, all right.<br/><br/>There''s only one man I''ve ever called a coward, and that''s Brian Doyle Murray. No, what I''m calling you is a television actor. Not tricks, Michael, illusions. I care deeply for nature. But I bought a yearbook ad from you, doesn''t that mean anything anymore?<br/><br/>Now, when you do this without getting punched in the chest, you''ll have more fun. Now, when you do this without getting punched in the chest, you''ll have more fun. No\u2026 but I''d like to be asked! Now, when you do this without getting punched in the chest, you''ll have more fun.<br/><br/>I''ve opened a door here that I regret. Army had half a day. I hear the jury''s still out on science. First place chick is hot, but has an attitude, doesn''t date magicians. Marry me.<br/><br/>That''s why you always leave a note! It''s a hug, Michael. I''m hugging you. I''m half machine. I''m a monster. I''m a monster.<br/><br/>I''ve opened a door here that I regret. Army had half a day. Army had half a day. There''s so many poorly chosen words in that sentence. Steve Holt! Across from where?<br/><br/><p>Guy''s a pro. I care deeply for nature. First place chick is hot, but has an attitude, doesn''t date magicians. Bad news. Andy Griffith turned us down. He didn''t like his trailer. Not tricks, Michael, illusions.</p>", "title": "Please work mother fucker", "depth": 3, "has_unpublished_changes": true, "related_links": [], "draft_title": "Please work mother fucker", "updated": "2017-12-01T02:12:39.725Z", "live": false, "created": "2017-12-01T02:12:39.725Z", "latest_revision_created_at": "2017-12-01T02:12:25.457Z", "slug": "please-work-mother-fucker", "path": "000100010002", "show_in_menus": false, "owner": 3, "publish": "2017-12-01T02:12:25.002Z", "go_live_at": null, "numchild": 0, "pk": 4}', NULL, 4, 3, '2017-12-01 02:12:39.725950');
INSERT INTO "public"."wagtailcore_pagerevision"("id", "submitted_for_moderation", "content_json", "approved_go_live_at", "page_id", "user_id", "created_at") VALUES (4, '0', '{"content_type": 37, "search_description": "", "expired": false, "author": "", "expire_at": null, "status": "draft", "url_path": "/home/please-work-mother-fucker/", "first_published_at": "2017-12-01T02:12:40.042Z", "live_revision": 3, "locked": false, "seo_title": "", "last_published_at": "2017-12-01T02:12:40.042Z", "body": "I was ashamed to be SEEN with you. I like being with you. I care deeply for nature. Army had half a day. No! I was ashamed to be SEEN with you. I like being with you. Guy''s a pro. He''ll want to use your yacht, and I don''t want this thing smelling like fish.<br/><br/>Bad news. Andy Griffith turned us down. He didn''t like his trailer. Steve Holt! Steve Holt! I don''t criticize you! And if you''re worried about criticism, sometimes a diet is the best defense.<br/><br/>That''s what it said on ''Ask Jeeves.'' I don''t understand the question, and I won''t respond to it. It''s called ''taking advantage.'' It''s what gets you ahead in life. Oh, you''re gonna be in a coma, all right.<br/><br/>There''s only one man I''ve ever called a coward, and that''s Brian Doyle Murray. No, what I''m calling you is a television actor. Not tricks, Michael, illusions. I care deeply for nature. But I bought a yearbook ad from you, doesn''t that mean anything anymore?<br/><br/>Now, when you do this without getting punched in the chest, you''ll have more fun. Now, when you do this without getting punched in the chest, you''ll have more fun. No\u2026 but I''d like to be asked! Now, when you do this without getting punched in the chest, you''ll have more fun.<br/><br/>I''ve opened a door here that I regret. Army had half a day. I hear the jury''s still out on science. First place chick is hot, but has an attitude, doesn''t date magicians. Marry me.<br/><br/>That''s why you always leave a note! It''s a hug, Michael. I''m hugging you. I''m half machine. I''m a monster. I''m a monster.<br/><br/>I''ve opened a door here that I regret. Army had half a day. Army had half a day. There''s so many poorly chosen words in that sentence. Steve Holt! Across from where?<br/><br/><p>Guy''s a pro. I care deeply for nature. First place chick is hot, but has an attitude, doesn''t date magicians. Bad news. Andy Griffith turned us down. He didn''t like his trailer. Not tricks, Michael, illusions.</p>", "title": "Please work mother fucker", "depth": 3, "has_unpublished_changes": false, "related_links": [], "draft_title": "Please work mother fucker", "updated": "2017-12-01T02:28:23.139Z", "live": true, "created": "2017-12-01T02:28:23.139Z", "latest_revision_created_at": "2017-12-01T02:12:39.725Z", "slug": "please-work-mother-fucker", "path": "000100010002", "show_in_menus": false, "owner": 3, "publish": "2017-12-01T02:12:25.002Z", "go_live_at": null, "numchild": 0, "pk": 4}', NULL, 4, 3, '2017-12-01 02:28:23.140566');

/*
Table structure for table 'public.wagtailcore_pageviewrestriction'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_pageviewrestriction" CASCADE;
CREATE TABLE "public"."wagtailcore_pageviewrestriction" (
	"id" INTEGER NOT NULL,
	"page_id" INTEGER NOT NULL,
	"restriction_type" VARCHAR(20)  NOT NULL,
	"password" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_pageviewrestriction";
ALTER TABLE "public"."wagtailcore_pageviewrestriction" ADD CONSTRAINT "PK_wagtailcore_pageviewrestriction" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_pageviewrestriction_page_id_15a8bea6";
CREATE INDEX "wagtailcore_pageviewrestriction_page_id_15a8bea6" ON "public"."wagtailcore_pageviewrestriction"("page_id");

/*
Dumping data for table 'public.wagtailcore_pageviewrestriction'
*/


/*
Table structure for table 'public.wagtailcore_pageviewrestriction_groups'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_pageviewrestriction_groups" CASCADE;
CREATE TABLE "public"."wagtailcore_pageviewrestriction_groups" (
	"id" INTEGER NOT NULL,
	"pageviewrestriction_id" INTEGER NOT NULL,
	"group_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_pageviewrestriction_groups";
ALTER TABLE "public"."wagtailcore_pageviewrestriction_groups" ADD CONSTRAINT "PK_wagtailcore_pageviewrestriction_groups" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_pageviewrestriction_groups_group_id_6460f223";
CREATE INDEX "wagtailcore_pageviewrestriction_groups_group_id_6460f223" ON "public"."wagtailcore_pageviewrestriction_groups"("group_id");
DROP INDEX IF EXISTS "wagtailcore_pageviewrestriction_groups_pageviewrestriction_id_f147a99a";
CREATE INDEX "wagtailcore_pageviewrestriction_groups_pageviewrestriction_id_f147a99a" ON "public"."wagtailcore_pageviewrestriction_groups"("pageviewrestriction_id");
DROP INDEX IF EXISTS "wagtailcore_pageviewrestriction_groups_pageviewrestriction_id_group_id_d23f80bb_uniq";
CREATE UNIQUE INDEX "wagtailcore_pageviewrestriction_groups_pageviewrestriction_id_group_id_d23f80bb_uniq" ON "public"."wagtailcore_pageviewrestriction_groups"("pageviewrestriction_id", "group_id");

/*
Dumping data for table 'public.wagtailcore_pageviewrestriction_groups'
*/


/*
Table structure for table 'public.wagtailcore_site'
*/

DROP TABLE IF EXISTS "public"."wagtailcore_site" CASCADE;
CREATE TABLE "public"."wagtailcore_site" (
	"id" INTEGER NOT NULL,
	"hostname" VARCHAR(255)  NOT NULL,
	"port" INTEGER NOT NULL,
	"is_default_site" TEXT NOT NULL,
	"root_page_id" INTEGER NOT NULL,
	"site_name" VARCHAR(255) 
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailcore_site";
ALTER TABLE "public"."wagtailcore_site" ADD CONSTRAINT "PK_wagtailcore_site" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailcore_site_root_page_id_e02fb95c";
CREATE INDEX "wagtailcore_site_root_page_id_e02fb95c" ON "public"."wagtailcore_site"("root_page_id");
DROP INDEX IF EXISTS "wagtailcore_site_hostname_96b20b46";
CREATE INDEX "wagtailcore_site_hostname_96b20b46" ON "public"."wagtailcore_site"("hostname");
DROP INDEX IF EXISTS "wagtailcore_site_hostname_port_2c626d70_uniq";
CREATE UNIQUE INDEX "wagtailcore_site_hostname_port_2c626d70_uniq" ON "public"."wagtailcore_site"("hostname", "port");

/*
Dumping data for table 'public.wagtailcore_site'
*/

INSERT INTO "public"."wagtailcore_site"("id", "hostname", "port", "is_default_site", "root_page_id", "site_name") VALUES (1, 'localhost', 80, '1', 2, NULL);

/*
Table structure for table 'public.wagtaildocs_document'
*/

DROP TABLE IF EXISTS "public"."wagtaildocs_document" CASCADE;
CREATE TABLE "public"."wagtaildocs_document" (
	"id" INTEGER NOT NULL,
	"title" VARCHAR(255)  NOT NULL,
	"file" VARCHAR(100)  NOT NULL,
	"created_at" TEXT NOT NULL,
	"collection_id" INTEGER NOT NULL,
	"uploaded_by_user_id" INTEGER
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtaildocs_document";
ALTER TABLE "public"."wagtaildocs_document" ADD CONSTRAINT "PK_wagtaildocs_document" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtaildocs_document_uploaded_by_user_id_17258b41";
CREATE INDEX "wagtaildocs_document_uploaded_by_user_id_17258b41" ON "public"."wagtaildocs_document"("uploaded_by_user_id");
DROP INDEX IF EXISTS "wagtaildocs_document_collection_id_23881625";
CREATE INDEX "wagtaildocs_document_collection_id_23881625" ON "public"."wagtaildocs_document"("collection_id");

/*
Dumping data for table 'public.wagtaildocs_document'
*/


/*
Table structure for table 'public.wagtailembeds_embed'
*/

DROP TABLE IF EXISTS "public"."wagtailembeds_embed" CASCADE;
CREATE TABLE "public"."wagtailembeds_embed" (
	"id" INTEGER NOT NULL,
	"url" VARCHAR(200)  NOT NULL,
	"max_width" TEXT,
	"type" VARCHAR(10)  NOT NULL,
	"html" TEXT NOT NULL,
	"title" TEXT NOT NULL,
	"author_name" TEXT NOT NULL,
	"provider_name" TEXT NOT NULL,
	"thumbnail_url" VARCHAR(200) ,
	"width" INTEGER,
	"height" INTEGER,
	"last_updated" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailembeds_embed";
ALTER TABLE "public"."wagtailembeds_embed" ADD CONSTRAINT "PK_wagtailembeds_embed" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailembeds_embed_url_max_width_8a2922d8_uniq";
CREATE UNIQUE INDEX "wagtailembeds_embed_url_max_width_8a2922d8_uniq" ON "public"."wagtailembeds_embed"("url", "max_width");

/*
Dumping data for table 'public.wagtailembeds_embed'
*/


/*
Table structure for table 'public.wagtailforms_formsubmission'
*/

DROP TABLE IF EXISTS "public"."wagtailforms_formsubmission" CASCADE;
CREATE TABLE "public"."wagtailforms_formsubmission" (
	"id" INTEGER NOT NULL,
	"form_data" TEXT NOT NULL,
	"page_id" INTEGER NOT NULL,
	"submit_time" TEXT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailforms_formsubmission";
ALTER TABLE "public"."wagtailforms_formsubmission" ADD CONSTRAINT "PK_wagtailforms_formsubmission" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailforms_formsubmission_page_id_e48e93e7";
CREATE INDEX "wagtailforms_formsubmission_page_id_e48e93e7" ON "public"."wagtailforms_formsubmission"("page_id");

/*
Dumping data for table 'public.wagtailforms_formsubmission'
*/


/*
Table structure for table 'public.wagtailgridder_gridcategory'
*/

DROP TABLE IF EXISTS "public"."wagtailgridder_gridcategory" CASCADE;
CREATE TABLE "public"."wagtailgridder_gridcategory" (
	"id" INTEGER NOT NULL,
	"name" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailgridder_gridcategory";
ALTER TABLE "public"."wagtailgridder_gridcategory" ADD CONSTRAINT "PK_wagtailgridder_gridcategory" PRIMARY KEY("id");

/*
Dumping data for table 'public.wagtailgridder_gridcategory'
*/


/*
Table structure for table 'public.wagtailgridder_gridindexgriditemrelationship'
*/

DROP TABLE IF EXISTS "public"."wagtailgridder_gridindexgriditemrelationship" CASCADE;
CREATE TABLE "public"."wagtailgridder_gridindexgriditemrelationship" (
	"id" INTEGER NOT NULL,
	"sort_order" INTEGER,
	"grid_item_id" INTEGER NOT NULL,
	"grid_relationship_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailgridder_gridindexgriditemrelationship";
ALTER TABLE "public"."wagtailgridder_gridindexgriditemrelationship" ADD CONSTRAINT "PK_wagtailgridder_gridindexgriditemrelationship" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailgridder_gridindexgriditemrelationship_grid_relationship_id_a461adef";
CREATE INDEX "wagtailgridder_gridindexgriditemrelationship_grid_relationship_id_a461adef" ON "public"."wagtailgridder_gridindexgriditemrelationship"("grid_relationship_id");
DROP INDEX IF EXISTS "wagtailgridder_gridindexgriditemrelationship_grid_item_id_9b56078c";
CREATE INDEX "wagtailgridder_gridindexgriditemrelationship_grid_item_id_9b56078c" ON "public"."wagtailgridder_gridindexgriditemrelationship"("grid_item_id");

/*
Dumping data for table 'public.wagtailgridder_gridindexgriditemrelationship'
*/


/*
Table structure for table 'public.wagtailgridder_gridindexpage'
*/

DROP TABLE IF EXISTS "public"."wagtailgridder_gridindexpage" CASCADE;
CREATE TABLE "public"."wagtailgridder_gridindexpage" (
	"page_ptr_id" INTEGER NOT NULL,
	"featured_grid_item_1_id" INTEGER,
	"featured_grid_item_2_id" INTEGER,
	"hero_background_image_id" INTEGER,
	"featured_description" TEXT,
	"hero_button_text" VARCHAR(255) ,
	"hero_button_url" VARCHAR(255) ,
	"hero_description" TEXT,
	"hero_logo_image_id" INTEGER
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailgridder_gridindexpage";
ALTER TABLE "public"."wagtailgridder_gridindexpage" ADD CONSTRAINT "PK_wagtailgridder_gridindexpage" PRIMARY KEY("page_ptr_id");
DROP INDEX IF EXISTS "wagtailgridder_gridindexpage_hero_logo_image_id_f8d91c26";
CREATE INDEX "wagtailgridder_gridindexpage_hero_logo_image_id_f8d91c26" ON "public"."wagtailgridder_gridindexpage"("hero_logo_image_id");
DROP INDEX IF EXISTS "wagtailgridder_gridindexpage_hero_background_image_id_6d997ea9";
CREATE INDEX "wagtailgridder_gridindexpage_hero_background_image_id_6d997ea9" ON "public"."wagtailgridder_gridindexpage"("hero_background_image_id");
DROP INDEX IF EXISTS "wagtailgridder_gridindexpage_featured_grid_item_2_id_9ca63706";
CREATE INDEX "wagtailgridder_gridindexpage_featured_grid_item_2_id_9ca63706" ON "public"."wagtailgridder_gridindexpage"("featured_grid_item_2_id");
DROP INDEX IF EXISTS "wagtailgridder_gridindexpage_featured_grid_item_1_id_69324588";
CREATE INDEX "wagtailgridder_gridindexpage_featured_grid_item_1_id_69324588" ON "public"."wagtailgridder_gridindexpage"("featured_grid_item_1_id");

/*
Dumping data for table 'public.wagtailgridder_gridindexpage'
*/


/*
Table structure for table 'public.wagtailgridder_griditem'
*/

DROP TABLE IF EXISTS "public"."wagtailgridder_griditem" CASCADE;
CREATE TABLE "public"."wagtailgridder_griditem" (
	"page_ptr_id" INTEGER NOT NULL,
	"summary_text" TEXT NOT NULL,
	"description_text" TEXT,
	"modified" TEXT,
	"buttons" TEXT,
	"description_image_id" INTEGER,
	"summary_image_id" INTEGER,
	"description_video" VARCHAR(200) ,
	"landing_page_text" TEXT
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailgridder_griditem";
ALTER TABLE "public"."wagtailgridder_griditem" ADD CONSTRAINT "PK_wagtailgridder_griditem" PRIMARY KEY("page_ptr_id");
DROP INDEX IF EXISTS "wagtailgridder_griditem_summary_image_id_d92757b9";
CREATE INDEX "wagtailgridder_griditem_summary_image_id_d92757b9" ON "public"."wagtailgridder_griditem"("summary_image_id");
DROP INDEX IF EXISTS "wagtailgridder_griditem_description_image_id_7fcb8311";
CREATE INDEX "wagtailgridder_griditem_description_image_id_7fcb8311" ON "public"."wagtailgridder_griditem"("description_image_id");

/*
Dumping data for table 'public.wagtailgridder_griditem'
*/


/*
Table structure for table 'public.wagtailgridder_griditem_categories'
*/

DROP TABLE IF EXISTS "public"."wagtailgridder_griditem_categories" CASCADE;
CREATE TABLE "public"."wagtailgridder_griditem_categories" (
	"id" INTEGER NOT NULL,
	"griditem_id" INTEGER NOT NULL,
	"gridcategory_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailgridder_griditem_categories";
ALTER TABLE "public"."wagtailgridder_griditem_categories" ADD CONSTRAINT "PK_wagtailgridder_griditem_categories" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailgridder_griditem_categories_gridcategory_id_6eaf8b4f";
CREATE INDEX "wagtailgridder_griditem_categories_gridcategory_id_6eaf8b4f" ON "public"."wagtailgridder_griditem_categories"("gridcategory_id");
DROP INDEX IF EXISTS "wagtailgridder_griditem_categories_griditem_id_d3a400b6";
CREATE INDEX "wagtailgridder_griditem_categories_griditem_id_d3a400b6" ON "public"."wagtailgridder_griditem_categories"("griditem_id");
DROP INDEX IF EXISTS "wagtailgridder_griditem_categories_griditem_id_gridcategory_id_0dc640c5_uniq";
CREATE UNIQUE INDEX "wagtailgridder_griditem_categories_griditem_id_gridcategory_id_0dc640c5_uniq" ON "public"."wagtailgridder_griditem_categories"("griditem_id", "gridcategory_id");

/*
Dumping data for table 'public.wagtailgridder_griditem_categories'
*/


/*
Table structure for table 'public.wagtailgridder_griditemtag'
*/

DROP TABLE IF EXISTS "public"."wagtailgridder_griditemtag" CASCADE;
CREATE TABLE "public"."wagtailgridder_griditemtag" (
	"id" INTEGER NOT NULL,
	"content_object_id" INTEGER NOT NULL,
	"tag_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailgridder_griditemtag";
ALTER TABLE "public"."wagtailgridder_griditemtag" ADD CONSTRAINT "PK_wagtailgridder_griditemtag" PRIMARY KEY("id");

/*
Dumping data for table 'public.wagtailgridder_griditemtag'
*/


/*
Table structure for table 'public.wagtailimages_image'
*/

DROP TABLE IF EXISTS "public"."wagtailimages_image" CASCADE;
CREATE TABLE "public"."wagtailimages_image" (
	"id" INTEGER NOT NULL,
	"title" VARCHAR(255)  NOT NULL,
	"file" VARCHAR(100)  NOT NULL,
	"width" INTEGER NOT NULL,
	"height" INTEGER NOT NULL,
	"created_at" TEXT NOT NULL,
	"focal_point_x" INTEGER,
	"focal_point_y" INTEGER,
	"focal_point_width" INTEGER,
	"focal_point_height" INTEGER,
	"uploaded_by_user_id" INTEGER,
	"file_size" INTEGER,
	"collection_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailimages_image";
ALTER TABLE "public"."wagtailimages_image" ADD CONSTRAINT "PK_wagtailimages_image" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailimages_image_collection_id_c2f8af7e";
CREATE INDEX "wagtailimages_image_collection_id_c2f8af7e" ON "public"."wagtailimages_image"("collection_id");
DROP INDEX IF EXISTS "wagtailimages_image_uploaded_by_user_id_5d73dc75";
CREATE INDEX "wagtailimages_image_uploaded_by_user_id_5d73dc75" ON "public"."wagtailimages_image"("uploaded_by_user_id");
DROP INDEX IF EXISTS "wagtailimages_image_created_at_86fa6cd4";
CREATE INDEX "wagtailimages_image_created_at_86fa6cd4" ON "public"."wagtailimages_image"("created_at");

/*
Dumping data for table 'public.wagtailimages_image'
*/

INSERT INTO "public"."wagtailimages_image"("id", "title", "file", "width", "height", "created_at", "focal_point_x", "focal_point_y", "focal_point_width", "focal_point_height", "uploaded_by_user_id", "file_size", "collection_id") VALUES (1, 'Test Image', 'original_images/logoC.jpg', 500, 460, '2017-07-02 18:59:14.104752', NULL, NULL, NULL, NULL, 1, NULL, 1);

/*
Table structure for table 'public.wagtailimages_rendition'
*/

DROP TABLE IF EXISTS "public"."wagtailimages_rendition" CASCADE;
CREATE TABLE "public"."wagtailimages_rendition" (
	"id" INTEGER NOT NULL,
	"file" VARCHAR(100)  NOT NULL,
	"width" INTEGER NOT NULL,
	"height" INTEGER NOT NULL,
	"focal_point_key" VARCHAR(16)  NOT NULL,
	"image_id" INTEGER NOT NULL,
	"filter_spec" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailimages_rendition";
ALTER TABLE "public"."wagtailimages_rendition" ADD CONSTRAINT "PK_wagtailimages_rendition" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailimages_rendition_filter_spec_1cba3201";
CREATE INDEX "wagtailimages_rendition_filter_spec_1cba3201" ON "public"."wagtailimages_rendition"("filter_spec");
DROP INDEX IF EXISTS "wagtailimages_rendition_image_id_3e1fd774";
CREATE INDEX "wagtailimages_rendition_image_id_3e1fd774" ON "public"."wagtailimages_rendition"("image_id");
DROP INDEX IF EXISTS "wagtailimages_rendition_image_id_filter_spec_focal_point_key_323c8fe0_uniq";
CREATE UNIQUE INDEX "wagtailimages_rendition_image_id_filter_spec_focal_point_key_323c8fe0_uniq" ON "public"."wagtailimages_rendition"("image_id", "filter_spec", "focal_point_key");

/*
Dumping data for table 'public.wagtailimages_rendition'
*/

INSERT INTO "public"."wagtailimages_rendition"("id", "file", "width", "height", "focal_point_key", "image_id", "filter_spec") VALUES (1, 'images/logoC.max-800x600.jpg', 500, 460, '', 1, 'max-800x600');

/*
Table structure for table 'public.wagtailredirects_redirect'
*/

DROP TABLE IF EXISTS "public"."wagtailredirects_redirect" CASCADE;
CREATE TABLE "public"."wagtailredirects_redirect" (
	"id" INTEGER NOT NULL,
	"old_path" VARCHAR(255)  NOT NULL,
	"is_permanent" TEXT NOT NULL,
	"redirect_link" VARCHAR(200)  NOT NULL,
	"redirect_page_id" INTEGER,
	"site_id" INTEGER
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailredirects_redirect";
ALTER TABLE "public"."wagtailredirects_redirect" ADD CONSTRAINT "PK_wagtailredirects_redirect" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailredirects_redirect_site_id_780a0e1e";
CREATE INDEX "wagtailredirects_redirect_site_id_780a0e1e" ON "public"."wagtailredirects_redirect"("site_id");
DROP INDEX IF EXISTS "wagtailredirects_redirect_redirect_page_id_b5728a8f";
CREATE INDEX "wagtailredirects_redirect_redirect_page_id_b5728a8f" ON "public"."wagtailredirects_redirect"("redirect_page_id");
DROP INDEX IF EXISTS "wagtailredirects_redirect_old_path_bb35247b";
CREATE INDEX "wagtailredirects_redirect_old_path_bb35247b" ON "public"."wagtailredirects_redirect"("old_path");
DROP INDEX IF EXISTS "wagtailredirects_redirect_old_path_site_id_783622d7_uniq";
CREATE UNIQUE INDEX "wagtailredirects_redirect_old_path_site_id_783622d7_uniq" ON "public"."wagtailredirects_redirect"("old_path", "site_id");

/*
Dumping data for table 'public.wagtailredirects_redirect'
*/


/*
Table structure for table 'public.wagtailsearch_editorspick'
*/

DROP TABLE IF EXISTS "public"."wagtailsearch_editorspick" CASCADE;
CREATE TABLE "public"."wagtailsearch_editorspick" (
	"id" INTEGER NOT NULL,
	"sort_order" INTEGER,
	"description" TEXT NOT NULL,
	"query_id" INTEGER NOT NULL,
	"page_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailsearch_editorspick";
ALTER TABLE "public"."wagtailsearch_editorspick" ADD CONSTRAINT "PK_wagtailsearch_editorspick" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailsearch_editorspick_page_id_28cbc274";
CREATE INDEX "wagtailsearch_editorspick_page_id_28cbc274" ON "public"."wagtailsearch_editorspick"("page_id");
DROP INDEX IF EXISTS "wagtailsearch_editorspick_query_id_c6eee4a0";
CREATE INDEX "wagtailsearch_editorspick_query_id_c6eee4a0" ON "public"."wagtailsearch_editorspick"("query_id");

/*
Dumping data for table 'public.wagtailsearch_editorspick'
*/


/*
Table structure for table 'public.wagtailsearch_query'
*/

DROP TABLE IF EXISTS "public"."wagtailsearch_query" CASCADE;
CREATE TABLE "public"."wagtailsearch_query" (
	"id" INTEGER NOT NULL,
	"query_string" VARCHAR(255)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailsearch_query";
ALTER TABLE "public"."wagtailsearch_query" ADD CONSTRAINT "PK_wagtailsearch_query" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_wagtailsearch_query_1";
CREATE UNIQUE INDEX "sqlite_autoindex_wagtailsearch_query_1" ON "public"."wagtailsearch_query"("query_string");

/*
Dumping data for table 'public.wagtailsearch_query'
*/


/*
Table structure for table 'public.wagtailsearch_querydailyhits'
*/

DROP TABLE IF EXISTS "public"."wagtailsearch_querydailyhits" CASCADE;
CREATE TABLE "public"."wagtailsearch_querydailyhits" (
	"id" INTEGER NOT NULL,
	"date" TEXT NOT NULL,
	"hits" INTEGER NOT NULL,
	"query_id" INTEGER NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailsearch_querydailyhits";
ALTER TABLE "public"."wagtailsearch_querydailyhits" ADD CONSTRAINT "PK_wagtailsearch_querydailyhits" PRIMARY KEY("id");
DROP INDEX IF EXISTS "wagtailsearch_querydailyhits_query_id_2185994b";
CREATE INDEX "wagtailsearch_querydailyhits_query_id_2185994b" ON "public"."wagtailsearch_querydailyhits"("query_id");
DROP INDEX IF EXISTS "wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq";
CREATE UNIQUE INDEX "wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq" ON "public"."wagtailsearch_querydailyhits"("query_id", "date");

/*
Dumping data for table 'public.wagtailsearch_querydailyhits'
*/


/*
Table structure for table 'public.wagtailusers_userprofile'
*/

DROP TABLE IF EXISTS "public"."wagtailusers_userprofile" CASCADE;
CREATE TABLE "public"."wagtailusers_userprofile" (
	"id" INTEGER NOT NULL,
	"submitted_notifications" TEXT NOT NULL,
	"approved_notifications" TEXT NOT NULL,
	"rejected_notifications" TEXT NOT NULL,
	"user_id" INTEGER NOT NULL,
	"preferred_language" VARCHAR(10)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "PK_wagtailusers_userprofile";
ALTER TABLE "public"."wagtailusers_userprofile" ADD CONSTRAINT "PK_wagtailusers_userprofile" PRIMARY KEY("id");
DROP INDEX IF EXISTS "sqlite_autoindex_wagtailusers_userprofile_1";
CREATE UNIQUE INDEX "sqlite_autoindex_wagtailusers_userprofile_1" ON "public"."wagtailusers_userprofile"("user_id");

/*
Dumping data for table 'public.wagtailusers_userprofile'
*/

