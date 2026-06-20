-- Problem 06: Replace Employee ID With Unique Identifier
-- Pattern: LEFT JOIN across two tables
-- Difficulty: Easy

SELECT 
    eu.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id = eu.id;