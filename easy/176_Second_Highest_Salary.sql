-- LeetCode #176: Second Highest Salary
-- Difficulty: Medium
--
-- Table: Employee (id, salary)
--
-- Task: Find the second highest salary. If none, return NULL.
--
-- Runtime: 263ms
SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
