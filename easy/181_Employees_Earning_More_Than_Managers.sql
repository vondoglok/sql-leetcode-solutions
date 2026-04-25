-- LeetCode #181: Employees Earning More Than Managers
-- Difficulty: Easy
--
-- Table: Employee (id, name, salary, managerId)
-- managerId ссылается на id того же Employee
--
-- Task: Find employees who earn more than their managers.
--
-- Runtime: 376 ms
SELECT e.name AS Employee
FROM Employee e
JOIN Employee m on e.managerId = m.id
WHERE e.salary > m.salary;
