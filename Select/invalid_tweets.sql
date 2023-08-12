/*
Find the IDs of the invalid tweets. A tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Example 1:

Input:
Tweets table:
+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+
Output:
+----------+
| tweet_id |
+----------+
| 2        |
Explanation:
Tweet 1 has length = 14. It is a valid tweet.
Tweet 2 has length = 32. It is an invalid tweet.
*/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
