-- Problem 01: Recyclable and Low Fat Products
-- Difficulty: Easy
-- Pattern: Basic WHERE Filtering

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';