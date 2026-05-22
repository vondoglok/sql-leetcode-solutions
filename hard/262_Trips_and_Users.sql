-- LeetCode #262: Trips and Users
-- Difficulty: Hard
--
-- Tables: Trips (id, client_id, driver_id, city_id, status, request_at)
--         Users (users_id, banned, role)
--
-- Task: Write a solution to find the cancellation rate of requests with unbanned users (both client and driver must not be banned)
--       each day between "2013-10-01" and "2013-10-03" with at least one trip. Round Cancellation Rate to two decimal points.
--
-- Runtime: 626 ms
SELECT t.Request_at AS Day,
  ROUND(SUM(t.Status != "completed") / COUNT(*), 2) AS 'Cancellation Rate'
FROM Trips t
JOIN Users d 
  ON t.Driver_Id = d.Users_Id 
  AND d.Banned = 'No'
  AND t.Request_at BETWEEN "2013-10-01" AND "2013-10-03"
JOIN Users c
  ON t.Client_Id = c.Users_Id 
  And c.Banned = 'No'
GROUP BY t.Request_at;
