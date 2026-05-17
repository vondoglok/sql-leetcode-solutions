-- LeetCode #601: Human Traffic of Stadium
-- Difficulty: Hard
--
-- Tables: Stadium (id, visit_date, people)
--
-- Task: Write a solution to display the records with three or more rows with consecutive id's, 
--       and the number of people is greater than or equal to 100 for each.
--
-- Runtime: 368 ms
WITH Flagged AS (
    SELECT id, visit_date, people,
    id - ROW_NUMBER () OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
),
Grouped AS (
    SELECT *, COUNT(*) OVER (PARTITION BY grp) AS group_rank
    FROM Flagged
)
SELECT id, visit_date, people
FROM Grouped
WHERE group_rank >= 3
ORDER BY visit_date;
