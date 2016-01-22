DROP DATABASE IF EXISTS has_many_blogs;

DROP USER IF EXISTs has_many_user;

CREATE USER has_many_user;


CREATE DATABASE has_many_blogs OWNER has_many_user;

\c has_many_blogs;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
"id" DATATYPE serial NOT NULL PRIMARY KEY,
"username" DATATYPE character varying(90) NOT NULL,
"first_name" DATATYPE character varying(90) NULL DEFAULT NULL,
"last_name" DATATYPE character varying(90) NULL DEFAULT NULL,
"created_at" DATATYPE timestamp WITH time zone NOT NULL DEFAULT now(),
"updated_at" DATATYPE timestamp WITH time zone NOT NULL DEFAULT now()
);


