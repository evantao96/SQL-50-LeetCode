# Write your MySQL query statement below
SELECT contest_id, ROUND(COUNT(DISTINCT Register.user_id) * 100 / (SELECT COUNT(user_id) FROM Users), 2) as percentage
FROM Register, Users
GROUP BY contest_id
ORDER BY percentage DESC, contest_id