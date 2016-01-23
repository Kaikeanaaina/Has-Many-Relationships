-- DROP DATABASE IF EXISTS has_many_blogs;

-- DROP USER IF EXISTs has_many_user;

-- CREATE USER has_many_user;


-- CREATE DATABASE has_many_blogs OWNER has_many_user;


\c has_many_blogs;


DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;


CREATE TABLE users(
id serial NOT NULL PRIMARY KEY,
username character varying(90) NOT NULL,
first_name character varying(90) DEFAULT NULL,
last_name character varying(90) DEFAULT NULL,
created_at timestamp WITH time zone NOT NULL DEFAULT now(),
updated_at timestamp WITH time zone NOT NULL DEFAULT now()
);


CREATE TABLE posts(
id serial NOT NULL PRIMARY KEY,
title character varying(180) DEFAULT NULL,
url character varying(510) DEFAULT NULL,
content text DEFAULT NULL,
created_at timestamp WITH time zone NOT NULL DEFAULT now(),
updated_at timestamp WITH time zone NOT NULL DEFAULT now(),
user_id integer REFERENCES users(id)
);


CREATE TABLE comments(
id serial NOT NULL PRIMARY KEY,
body character varying(510) DEFAULT NULL,
created_at timestamp WITH time zone NOT NULL DEFAULT now(),
updated_at timestamp WITH time zone NOT NULL DEFAULT now(),
user_id integer REFERENCES users(id),
post_id integer REFERENCES posts(id)
);

--constraints





