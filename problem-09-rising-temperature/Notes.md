# Problem 09: Rising Temperature

## Problem Summary
Single table — Weather.
Find days where temperature was higher than the previous day.
Return the id of those days.

## The Trap
You only have one table but need to compare two different rows.
Beginners get stuck thinking they need two tables.
The answer is joining the same table to itself with different aliases.

## Approach
Self Join — join Weather to itself as w1 (today) and w2 (yesterday).
DATEDIFF(w1.recordDate, w2.recordDate) = 1 ensures w1 is exactly 
one day after w2.
WHERE w1.temperature > w2.temperature filters only warmer days.

## Pattern
Self Join — joining a table to itself to compare rows within 
the same table. Used whenever you need to compare a row 
against another row in the same dataset.

## DATEDIFF Important Note
DATEDIFF(date1, date2) = date1 - date2 in days.
DATEDIFF(w1.recordDate, w2.recordDate) = 1 means w1 is 1 day ahead.
Order matters — swap them and you get -1.

## Where This Appears in Real Work
- Comparing today's sales to yesterday's sales
- Finding days where stock price increased from previous day
- Detecting consecutive anomalies in time series data
- Day over day growth analysis — core DA skill at S&P Global

## Edge Cases to Remember
- DATEDIFF = 1 handles gaps — if data skips a date, 
  those rows simply won't match and won't appear
- Self join requires two different aliases — same alias breaks the query
- Bare JOIN = INNER JOIN — write INNER JOIN explicitly in interviews

## Related Problems
- LeetCode 180: Consecutive Numbers (self join pattern)
- LeetCode 534: Game Play Analysis III (date comparison)
- LeetCode 1204: Last Person to Fit in the Bus (row comparison)