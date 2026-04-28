-- LeetCode #183: Customers Who Never Ordered
-- Difficulty: Easy
--
-- Tables: Customers (id, name), Orders (id, customerId)
--
-- Task: Find all customers who have never placed an order.
--
-- Runtime: 559ms
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;
