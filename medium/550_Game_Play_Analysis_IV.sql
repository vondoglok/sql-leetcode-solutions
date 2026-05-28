-- LeetCode #550: Game Play Analysis IV
-- Difficulty: Medium
--
-- Table: Activity (player_id, device_id, event_date, games_played)
--
-- Task: Write a solution to report the fraction of players that logged 
--       in again on the day after the day they first logged in, rounded to 2 decimal places.
--
-- Runtime: 570ms
WITH Again AS (
  SELECT
    player_id,
    event_date,
    MIN(event_date) OVER (PARTITION BY player_id) AS first_login
  FROM Activity
)
SELECT
  ROUND(
    COUNT(DISTINCT CASE WHEN event_date = DATE_ADD(first_login, INTERVAL 1 DAY) THEN player_id END)
    / COUNT(DISTINCT player_id), 2
  ) AS fraction
FROM Again;
