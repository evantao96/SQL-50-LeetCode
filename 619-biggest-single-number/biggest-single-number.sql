# Write your MySQL query statement below

WITH nums AS
(
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
    ORDER BY num DESC
)
SELECT IF(COUNT(num) = 0, null, num) AS num
FROM nums
LIMIT 1;
