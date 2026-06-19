-- Problem 05: Invalid Tweets
-- Pattern: String Function + Numeric Comparison in WHERE
-- Difficulty: Easy

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;