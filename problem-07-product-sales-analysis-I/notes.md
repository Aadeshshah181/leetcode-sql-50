# Problem 07: Product Sales Analysis I

## Problem Summary
Two tables — Sales and Product.
Every sale has a product_id linking to Product table.
Return product_name, year, price for every sale.

## The Trap
Using bare JOIN without knowing it defaults to INNER JOIN.
INNER JOIN silently drops rows with no match in the other table.
Here it works because foreign key guarantees every product_id exists.
In real data without guaranteed foreign keys — always verify.

## Approach
INNER JOIN Product on matching product_id.
Pull product_name from Product, year and price from Sales.
Table aliases (s, p) keep query clean and readable.

## Pattern
INNER JOIN — use when you only want rows 
that have a match in BOTH tables.
Contrast with LEFT JOIN — use when you want 
ALL rows from one table regardless of match.

## JOIN Decision Framework
Ask yourself: "Can rows exist in my main table 
with no match in the joined table?"
YES → LEFT JOIN (keep them, show NULL)
NO  → INNER JOIN (only matched rows needed)

## Where This Appears in Real Work
- Sales analysis joining transactions to product catalog
- Employee reports joining records to department names
- Financial data joining transactions to account details
- Core pattern in S&P Global, IBM, Tatvic SQL interviews

## Edge Cases to Remember
- Always write INNER JOIN explicitly, not bare JOIN
- Foreign key = guaranteed match = INNER JOIN is safe
- No foreign key constraint = verify data before choosing JOIN type
- Samsung has no sales — INNER JOIN correctly excludes it here

## Related Problems
- LeetCode 1378: Replace Employee ID (LEFT JOIN contrast)
- LeetCode 1069: Product Sales Analysis II (aggregation on same tables)
- LeetCode 577: Employee Bonus (LEFT JOIN + NULL filtering)