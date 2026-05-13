-- LeetCode #620: Not Boring Movies
-- Difficulty: Easy
--
-- Table: cinema (id, movie, description, rating)
--
-- Task: Find movies with odd id and description not 'boring'.
-- Sort by rating descending.
--
-- Runtime: 262ms
SELECT *
FROM cinema
WHERE MOD(id, 2) = 1 AND description != 'boring'
ORDER BY rating DESC;
