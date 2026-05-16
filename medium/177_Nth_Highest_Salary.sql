-- LeetCode #177: Nth Highest Salary
-- Difficulty: Medium
--
-- Table: Employee (id, salary)
--
-- Task: Write a function to get the Nth highest salary.
-- If there is no Nth highest salary, return NULL.
--
-- Runtime: 453ms
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      SELECT DISTINCT salary
      FROM (
          SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
          FROM Employee
      ) tmp
      WHERE rnk = N
  );
END
