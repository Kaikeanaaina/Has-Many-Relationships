-- --1
-- SELECT *
-- FROM users;

-- --2
-- SELECT *
-- FROM posts
-- WHERE user_id=100;

--3
SELECT p.*, u.first_name, u.last_name
FROM posts p
INNER JOIN users u ON p.user_id = u.id
WHERE u.id = 200;