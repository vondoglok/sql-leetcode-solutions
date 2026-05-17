-- LeetCode #196: Delete Duplicate Email
-- Difficulty: Easy
--
-- Table: Person (id, email)
--
-- Task: Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.
--
-- Runtime: 822 ms
SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
