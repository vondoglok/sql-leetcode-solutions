-- LeetCode #197: Rising Temperature
-- Difficulty: Easy
--
-- Table: Weather (id, recordDate, temperature)
--
-- Task: Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
--
-- Runtime: 499 ms
SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
