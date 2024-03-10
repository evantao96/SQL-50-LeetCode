# Write your MySQL query statement below
-- SELECT Timeouts.user_id, num_confirmed / (num_confirmed + num_timeouts) AS confirmation_rate
-- FROM (
--     SELECT user_id, COUNT(CASE WHEN action = "timeout" THEN 1 END) as num_timeouts
--     FROM Confirmations
--     GROUP BY user_id
-- ) as Timeouts
-- INNER JOIN (
--     SELECT user_id, COUNT(CASE WHEN action = "confirmed" THEN 1 END) as num_confirmed
--     FROM Confirmations
--     GROUP BY user_id
-- ) AS Confirmed
-- ON Timeouts.user_id = Confirmed.user_id;

SELECT Signups.user_id, IFNULL(ROUND(AVG(CASE WHEN action = "confirmed" THEN 1 ELSE 0 END), 2), 0) AS confirmation_rate
FROM Confirmations
RIGHT JOIN Signups
ON Confirmations.user_id = Signups.user_id
GROUP BY user_id;


