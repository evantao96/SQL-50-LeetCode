# Write your MySQL query statement below
SELECT d2.id 
FROM Weather d1, Weather d2
WHERE DATE_ADD(d1.recordDate, INTERVAL 1 DAY) = d2.recordDate AND d1.temperature < d2.temperature;