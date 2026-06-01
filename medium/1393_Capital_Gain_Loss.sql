-- LeetCode #1393: Capital Gain/Loss
-- Difficulty: Medium
--
-- Tables: Stocks (stock_name, operation, operation_day, price)
--
-- Task: Write a solution to report the Capital gain/loss for each stock.
--
-- Approach:
-- 1. GROUP BY stock_name to aggregate per stock
-- 2. Conditional SUM: SELL adds price, BUY subtracts price
--    (CASE WHEN operation = 'Sell' THEN price ELSE -price END)
--
-- Runtime: 534 ms
SELECT
  stock_name,
  SUM(CASE WHEN operation = 'Sell' THEN price ELSE -price END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;
