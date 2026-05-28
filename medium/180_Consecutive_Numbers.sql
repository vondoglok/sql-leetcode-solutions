-- LeetCode #180: Consecutive Numbers
-- Difficulty: Medium
--
-- Table: Logs (id, num)
--
-- Task: Find all numbers that appear at least three times consecutively.
--
-- Runtime: 566ms
WITH Nums AS (
    SELECT num,
    LAG(num, 1) OVER (ORDER BY id) AS prev1,
    LAG(num, 2) OVER (ORDER BY id) AS prev2
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM Nums
WHERE num = prev1 AND num = prev2;
