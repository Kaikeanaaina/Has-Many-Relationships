DROP DATABASE IF EXISTS has_many_blogs;

DROP USER IF EXISTs has_many_user;

CREATE USER has_many_user;


CREATE DATABASE has_many_blogs OWNER has_many_user;

\c has_many_blogs;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
"id" serial NOT NULL PRIMARY KEY,
"username" character varying(90) NOT NULL,
"first_name" character varying(90) NULL DEFAULT NULL,
"last_name" character varying(90) NULL DEFAULT NULL,
"created_at" timestamp WITH time zone NOT NULL DEFAULT now(),
"updated_at" timestamp WITH time zone NOT NULL DEFAULT now()
);

DROP TABLE IF EXISTS posts;

CREATE TABLE posts(
"id" serial NOT NULL PRIMARY KEY,
"user_id" integer REFERENCES users(id),
"title" character varying(180) NULL DEFAULT NULL,
"url" character varying(510) NULL DEFAULT NULL,
"content" text NULL DEFAULT NULL,
"created_at" timestamp WITH time zone NOT NULL DEFAULT now(),
"updated_at" timestamp WITH time zone NOT NULL DEFAULT now()
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments(
"id" serial NOT NULL PRIMARY KEY,
"user_id" integer REFERENCES users(id),
"post_id" integer REFERENCES posts(id),
"book" character varying(510) NULL DEFAULT NULL,
"created_at" timestamp WITH time zone NOT NULL DEFAULT now(),
"updated_at" timestamp WITH time zone NOT NULL DEFAULT now()
);

--constraints


