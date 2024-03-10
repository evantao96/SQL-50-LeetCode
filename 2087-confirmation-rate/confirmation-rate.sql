# Write your MySQL query statement below
SELECT Signups.user_id, IFNULL(ROUND(AVG(CASE WHEN action = "confirmed" THEN 1 ELSE 0 END), 2), 0) AS confirmation_rate
FROM Confirmations
RIGHT JOIN Signups
ON Confirmations.user_id = Signups.user_id
GROUP BY user_id;


