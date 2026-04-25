-- LeetCode #175: Combine Two Tables
-- Difficulty: Easy
-- 
-- Table: Person (personId, lastName, firstName)
-- Table: Address (addressId, personId, city, state)
--
-- Task: Write a query to report the first name, last name, city, and state 
-- of each person. If a person does not have an address, show city and state as NULL.
--
-- Runtime: 407 ms
SELECT P.firstName, P.lastName, A.city, A.state
FROM Person P
LEFT JOIN Address A ON P.personId = A.personId;
