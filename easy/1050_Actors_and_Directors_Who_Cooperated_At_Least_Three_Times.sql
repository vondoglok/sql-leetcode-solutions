-- LeetCode #1050: Actors and Directors Who Cooperated At Least Three Times
-- Difficulty: Easy
--
-- Table: ActorDirector (actor_id, director_id, timestamp)
--
-- Task: Write a solution to find all the pairs (actor_id, director_id) 
-- where the actor has cooperated with the director at least three times.
--
-- Runtime: 395ms
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;
