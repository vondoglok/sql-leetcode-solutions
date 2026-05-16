-- LeetCode #185: Department Top Three Salaries
-- Difficulty: Hard
--
-- Tables: Employee (id, name, salary, departmentId)
--         Department (id, name)
--
-- Task: Find employees who are in the top 3 salaries in their department.
--       If two employees have the same salary, both should be included.
--
-- Runtime: 958 ms
WITH RankedEmployees AS (
   SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
   DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY salary DESC) AS rnk
   FROM Employee e
   JOIN Department d ON e.departmentId = d.id
)
SELECT Department, Employee, Salary
FROM RankedEmployees
WHERE rnk <= 3
ORDER BY Department, Salary;
