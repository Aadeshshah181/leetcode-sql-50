# Problem 06: Replace Employee ID With Unique Identifier

## Problem Summary
Two tables — Employees and EmployeeUNI.
Not every employee has a unique_id.
Show unique_id for those who have one, NULL for those who don't.

## The Trap
Using INNER JOIN instead of LEFT JOIN.
INNER JOIN only returns rows where a match exists in BOTH tables.
Alice and Bob have no unique_id — INNER JOIN would eliminate them entirely.
LEFT JOIN keeps all rows from the left table regardless of match.

## Approach
LEFT JOIN EmployeeUNI on matching id column.
Unmatched rows automatically get NULL for unique_id.
Table aliases (e, eu) keep the query clean.

## Pattern
LEFT JOIN — the most important JOIN type for analytics.
Used whenever you need ALL records from one table 
plus optional matching data from another.

## JOIN Types — Know All Four
INNER JOIN — only matching rows from both tables
LEFT JOIN  — all rows from left + matching from right (NULL if no match)
RIGHT JOIN — all rows from right + matching from left (NULL if no match)
FULL JOIN  — all rows from both tables (NULL where no match on either side)

## Where This Appears in Real Work
- Customer table LEFT JOIN orders — find customers with no orders
- Employee table LEFT JOIN salary — find employees with no salary record
- Product table LEFT JOIN sales — find products never sold
- This exact pattern appears heavily in S&P Global and IBM SQL rounds

## Edge Cases to Remember
- Always ask: do I need ALL rows from one table, or only matching rows?
- Left table = the one you want to preserve completely
- NULL in output means no matching row existed in the right table
- INNER JOIN vs LEFT JOIN distinction is a guaranteed interview question

## Related Problems
- LeetCode 1068: Product Sales Analysis I (INNER JOIN)
- LeetCode 183: Customers Who Never Order (LEFT JOIN + NULL check)
- LeetCode 1581: Customer Who Visited But Did Not Make Transactions