# Problem 05: Invalid Tweets

## Problem Summary
Find tweets where content length is strictly greater than 15 characters.
Return only tweet_id.

## The Trap
Using LENGTH() instead of CHAR_LENGTH().
LENGTH() counts bytes, not characters.
For pure ASCII text both give same result, but for 
international characters, emojis, or special symbols — they differ.
Always use CHAR_LENGTH() when counting text characters.

## Approach
CHAR_LENGTH(content) > 15 inside WHERE clause filters invalid tweets.
No DISTINCT needed — tweet_id is primary key, no duplicates possible.

## Pattern
String Function in WHERE Clause — applying a function directly 
on a column inside WHERE to filter by computed value.

## Where This Appears in Real Work
- Validating data entry lengths in CRM or analytics systems
- Flagging records that exceed field size constraints
- Content moderation pipelines filtering by message length

## Edge Cases to Remember
- CHAR_LENGTH vs LENGTH — always clarify in interviews
- "Strictly greater than" means > 15, not >= 15
- Primary key present = no need for DISTINCT

## Related Problems
- LeetCode 1517: Find Users With Valid Emails (string validation)
- LeetCode 1484: Group Sold Products By Date (string aggregation)