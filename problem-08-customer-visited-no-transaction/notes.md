# Problem 08: Customer Who Visited But Did Not Make Any Transactions

## Problem Summary
Two tables — Visits and Transactions.
Find customers who came to the mall but made zero transactions.
Count how many such visits each customer made.

## The Trap
Using INNER JOIN would only return visits WITH transactions.
The customers we want — those without transactions — 
would be completely invisible in the output.

## Approach
LEFT JOIN Transactions on visit_id — keeps ALL visits.
WHERE transaction_id IS NULL — filters only visits with no match.
GROUP BY customer_id — groups per customer.
COUNT(visit_id) — counts their no-transaction visits.

## Pattern
LEFT JOIN + IS NULL filter — the standard pattern for 
finding records that have NO match in another table.
This is one of the most frequently tested SQL patterns
in analytics interviews.

## LEFT JOIN + IS NULL vs NOT IN vs NOT EXISTS
All three find unmatched rows. But:
LEFT JOIN + IS NULL — most readable, works everywhere
NOT IN — dangerous if subquery returns NULL values
NOT EXISTS — efficient but verbose
In interviews, LEFT JOIN + IS NULL is the safest default.

## Where This Appears in Real Work
- Customers who registered but never purchased
- Employees with no performance review on record
- Products listed in catalog but never sold
- Users who clicked an ad but never converted
- Core pattern for funnel drop-off analysis at Tatvic, S&P Global

## Edge Cases to Remember
- Must filter IS NULL on a NOT NULL column from right table
- transaction_id is primary key — guaranteed NOT NULL when row exists
- GROUP BY must match non-aggregated SELECT columns
- COUNT counts visit_id not customer_id — each visit is one occurrence

## Related Problems
- LeetCode 1378: Replace Employee ID (basic LEFT JOIN)
- LeetCode 183: Customers Who Never Order (same pattern)
- LeetCode 597: Friend Requests I (NULL filtering)