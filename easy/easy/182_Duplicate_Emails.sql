-- LeetCode #182: Duplicate Emails
-- Difficulty: Easy
--
-- Table: Person (id, email)
--
-- Task: Find all emails that appear more than once.
--
-- Runtime: 366ms
SELECT email
FROM Person
GROUP BY email 
HAVING COUNT(*) > 1;
