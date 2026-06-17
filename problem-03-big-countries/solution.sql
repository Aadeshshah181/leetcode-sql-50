-- Problem 03: Big Countries
-- Pattern: WHERE + OR with Numeric Comparisons
-- Difficulty: Easy

SELECT name, 
       population, 
       area
FROM World
WHERE area >= 3000000 
   OR population >= 25000000;
