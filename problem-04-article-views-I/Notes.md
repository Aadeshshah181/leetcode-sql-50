# Problem 04: Article Views I

## Problem Summary
Find authors who viewed their own articles at least once.
Return their IDs sorted in ascending order.

## The Trap
Table has NO primary key — duplicate rows exist.
Without DISTINCT, duplicate author IDs appear in output.
Always check if a table can have duplicates before writing SELECT.

## Approach
WHERE author_id = viewer_id catches self-views.
DISTINCT removes duplicate author appearances.
AS id renames column to match expected output.

## Pattern
Self-Join Condition + DISTINCT — comparing two columns 
within the same row to find matching relationships.

## Where This Appears in Real Work
- Finding employees who manage themselves in org tables
- Detecting self-referencing records in any relational data
- Flagging anomalies where two IDs should differ but don't

## Edge Cases to Remember
- No primary key = always consider DISTINCT
- Column aliasing must match expected output exactly in interviews
- ORDER BY can reference the alias (id) not just the original column name

## Related Problems
- LeetCode 584: Find Customer Referee (NULL handling in WHERE)
- LeetCode 181: Employees Earning More Than Managers (self-comparison)