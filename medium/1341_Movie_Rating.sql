-- LeetCode #1341: Movie Rating
-- Difficulty: Medium
--
-- Tables: Movies (movie_id, title)
--         Users (user_id, name)
--         MovieRating (movie_id, user_id, rating, created_at)
--
-- Task: Find the user who has rated the most movies and the movie
--       with the highest average rating in February 2020.
--       In case of a tie, return the lexicographically smaller name/title.
--
-- Approach:
-- 1. Two separate SELECT queries joined with UNION ALL (not UNION!)
--    UNION removes duplicates — if user name equals movie title, one row disappears
-- 2. Part 1: JOIN Users + MovieRating, GROUP BY name, ORDER BY COUNT DESC + name ASC, LIMIT 1
-- 3. Part 2: JOIN Movies + MovieRating, filter February with LIKE '2020-02%',
--    ORDER BY AVG(rating) DESC + title ASC, LIMIT 1
-- 4. Each part wrapped in parentheses — required by MySQL for ORDER BY + LIMIT inside UNION
--
-- Runtime:1286 ms

(SELECT u.name AS results
FROM Users u
JOIN MovieRating mr ON u.user_id = mr.user_id
GROUP BY u.name
ORDER BY COUNT(*) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT m.title AS results
FROM Movies m
JOIN MovieRating mr ON m.movie_id = mr.movie_id
WHERE mr.created_at LIKE '2020-02%'
GROUP BY m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1);
