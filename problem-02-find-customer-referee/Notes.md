# Problem 02: Find Customer Referee

## Problem Summary
Find customers who were either not referred by customer #2, 
or were not referred by anyone.

## The Trap
NULL <> 2 does NOT return TRUE in SQL.
It returns NULL — which means the row gets excluded silently.
This is one of the most common SQL mistakes in interviews.

## Approach
WHERE referee_id <> 2 OR referee_id IS NULL

## Pattern
NULL Handling — appears in almost every real-world SQL problem
because production databases always have missing data.

## Where This Appears in Real Work
- Customer segmentation queries
- Filtering incomplete records in analytics dashboards
- Data cleaning before analysis

## Edge Cases to Remember
- Always ask: can this column be NULL?
- IS NULL and IS NOT NULL are the only correct ways to check NULL
- Never use = NULL or != NULL — they always return NULL

## Related Problems
- LeetCode 183: Customers Who Never Order (NULL via LEFT JOIN)
- LeetCode 1148: Article Views