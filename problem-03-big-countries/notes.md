# Problem 03: Big Countries

## Problem Summary
Find countries that have area >= 3,000,000 km² OR 
population >= 25,000,000. Return name, population, area.

## The Trap
Using AND instead of OR would require BOTH conditions to be true.
Afghanistan has large population but small area — AND would exclude it.
Always re-read whether the problem says "both" or "either."

## Approach
SELECT name, population, area
WHERE area >= 3000000 OR population >= 25000000

## Pattern
WHERE with OR + Numeric Comparison — fundamental filtering pattern.
Appears in almost every analytics interview for data extraction.

## Where This Appears in Real Work
- Filtering high-value customers by revenue OR order count
- Flagging anomalies: rows where metric A OR metric B exceeds threshold
- Segmentation queries in S&P Global-style financial data

## Edge Cases to Remember
- AND vs OR is the most common logic mistake under interview pressure
- Always verify with sample data mentally before submitting
- Check if NULL can exist in numeric columns — here area/population 
  are unlikely NULL but always ask

## Related Problems
- LeetCode 584: Find Customer Referee (OR + NULL handling)
- LeetCode 1873: Calculate Special Bonus (conditional filtering)