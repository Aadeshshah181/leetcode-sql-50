-- Problem 07: Product Sales Analysis I
-- Pattern: INNER JOIN across Sales and Product tables
-- Difficulty: Easy

SELECT 
    p.product_name,
    s.year,
    s.price
FROM Sales s
INNER JOIN Product p ON s.product_id = p.product_id;