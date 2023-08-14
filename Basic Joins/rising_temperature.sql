/*
Find all dates' Id from the Weather table where the temperature is higher compared to its previous date (yesterday). 
The Weather table has the following columns:
- id (int): the primary key for the table.
- recordDate (date): the date of the weather record.
- temperature (int): the temperature recorded on that day.

Return the result table containing the Id of the dates that meet the condition, in any order.

Example:
Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).
*/

SELECT Weather.id 
FROM Weather
INNER JOIN Weather AS Prev
ON Weather.recordDate = Prev.recordDate + INTERVAL 1 DAY
WHERE Weather.temperature > Prev.temperature;