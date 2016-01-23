-- --1
-- SELECT *
-- FROM users;

-- --2
-- SELECT *
-- FROM posts
-- WHERE user_id=100;

-- --3
-- SELECT p.*, u.first_name, u.last_name
-- FROM posts p
-- INNER JOIN users u ON p.user_id = u.id
-- WHERE u.id = 200;

-- --4
-- SELECT p.*, u.username
-- FROM posts p
-- INNER JOIN users u ON p.user_id = u.id
-- WHERE u.id = 200;

-- --5
-- SELECT u.username, p.user_id
-- FROM users u
-- INNER JOIN posts p ON u.id = p.user_id
-- WHERE p.created_at > '2015-01-01';

-- --6
-- SELECT p.title, u.username
-- FROM posts p
-- INNER JOIN users u ON p.user_id=u.id
-- WHERE u.created_at > '2015-01-01';

-- --7
-- SELECT c.*, p.title 'Post Title'
-- FROM comments c
-- INNER JOIN posts p ON c.post_id = p.id;

-- --8
-- SELECT c.*, p.title post_title, p.url post_url, c.body comment_body
-- FROM comments c
-- INNER JOIN posts p ON c.post_id = p.id
-- WHERE p.created_at < '2015-01-01';

-- --9
-- SELECT c.*, p.title post_title, p.url post_url, c.body comment_body
-- FROM comments c
-- INNER JOIN posts p ON c.post_id = p.id
-- WHERE p.created_at > '2015-01-01';

-- --10
-- SELECT c.*, p.title post_title, p.url post_url, c.body comment_body
-- FROM comments c
-- INNER JOIN posts p ON c.post_id = p.id
-- WHERE c.body LIKE '%USB%';

-- --11
-- SELECT p.title post_title, u.first_name, u.last_name, c.body
-- FROM posts p
-- INNER JOIN users u ON p.user_id = u.id
-- INNER JOIN comments c ON c.post_id = p.id
-- WHERE c.body LIKE '%matrix%';

-- --12
-- -- SELECT u.first_name, u.last_name, c.body comment_body
-- SELECT count(*)
-- FROM comments c
-- INNER JOIN users u ON c.user_id = u.id
-- INNER JOIN posts p ON c.post_id = p.id
-- WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';


--it wasn't the same number as the read me ***********

--13
SELECT
u.first_name post_author_first_name,
u.last_name post_author_last_name,
p.title post_title,
u.username comment_author_username,
c.body comment_body
FROM users u
INNER JOIN posts p ON p.user_id = u.id
INNER JOIN comments c ON c.post_id = p.id
WHERE ((c.body LIKE '%SSL%') OR (c.body LIKE '%firewall%')) AND p.content LIKE '%nemo%';


