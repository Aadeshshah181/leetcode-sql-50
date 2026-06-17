-- Problem 02: Find Customer Referee
-- Pattern: WHERE + NULL Handling
-- Difficulty: Easy

SELECT name 
FROM Customer
WHERE referee_id <> 2 
OR referee_id IS NULL;