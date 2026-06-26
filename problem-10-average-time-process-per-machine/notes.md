# Problem 10: Average Time of Process per Machine

## Problem Summary
Single table — Activity.
Each process has a 'start' and 'end' row in the same table.
Find average processing time per machine, rounded to 3 decimal places.

## The Trap
Data for start and end times lives in separate rows, not columns.
You cannot subtract them without first pairing them up.
Self Join is required to bring start and end onto the same row.

## Approach
Self Join Activity as a1 (start rows) and a2 (end rows).
Join condition matches both machine_id AND process_id —
joining on machine_id alone would pair wrong processes.
WHERE filters a1 to only 'start' and a2 to only 'end' rows.
AVG(a2.timestamp - a1.timestamp) calculates average duration.
ROUND(..., 3) matches required precision.
GROUP BY machine_id aggregates per machine.

## Pattern
Self Join + Aggregation — joining a table to itself to
compute metrics across paired rows, then aggregating results.
Builds directly on Problem 09 (Self Join) and Problem 08 
(GROUP BY + COUNT).

## Why AVG Works Here
AVG(end - start) = SUM of all durations / COUNT of processes.
This works correctly because every start has exactly one end pair.
If a process had missing end rows, AVG would silently give wrong results.
Always verify data integrity assumptions in real work.

## ROUND() in SQL
ROUND(value, decimal_places)
ROUND(1.4567, 3) = 1.457
ROUND(1.4564, 3) = 1.456
Always check how many decimal places the problem requires.

## Where This Appears in Real Work
- Calculating average session duration from login/logout events
- Average order fulfillment time from placed/delivered timestamps
- Average ticket resolution time in support systems
- Core time-series analysis pattern at S&P Global, IBM

## Edge Cases to Remember
- Join on ALL identifying columns — not just one
- Subtraction order matters: end - start, never start - end
- ROUND precision must match problem requirement exactly
- Self Join alias convention: a1 = start side, a2 = end side

## Related Problems
- LeetCode 197: Rising Temperature (Self Join foundation)
- LeetCode 1084: Sales Analysis III (aggregation + filtering)
- LeetCode 1179: Reformat Department Table (pivot-style logic)