-- LeetCode #596: Classes More Than 5 Students
-- Difficulty: Easy
--
-- Table: Courses (student, class)
--
-- Task: Find all classes that have at least 5 students.
--
-- Runtime: 333ms
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5;
