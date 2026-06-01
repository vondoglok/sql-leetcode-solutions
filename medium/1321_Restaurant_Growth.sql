-- LeetCode #1321: Restaurant Growth
-- Difficulty: Medium
--
-- Tables: Customer (customer_id, name, visited_on, amount)
--
-- Task: Compute the moving average of how much the customer paid in a 7-day window.
--
-- Approach:
-- 1. CTE Daily: GROUP BY visited_on to collapse multiple customers per day into one row
-- 2. CTE Rolling: SUM and AVG with ROWS BETWEEN 6 PRECEDING AND CURRENT ROW (7-day window)
-- 3. Filter: DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) to start only from day 7
--    (avoids hardcoding dates — works on any dataset)
--
-- Runtime: 361 ms
WITH Daily AS (
    SELECT 
        visited_on,
        SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
),
Rolling AS (
    SELECT 
        visited_on,
        SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
        ROUND(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
    FROM Daily
)
SELECT visited_on, amount, average_amount
FROM Rolling
WHERE visited_on >= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM Customer);
