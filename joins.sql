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

