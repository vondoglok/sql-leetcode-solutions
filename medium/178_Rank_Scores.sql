-- LeetCode #178: Rank Scores
-- Difficulty: Medium
--
-- Table: Scores (id, score)
--
-- Task: Write a solution to find the rank of the scores.
--
-- Runtime: 302ms
SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM Scores
ORDER BY 'rank';
