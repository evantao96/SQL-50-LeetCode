# Write your MySQL query statement below
SELECT Employees.employee_id, name, reports_count, average_age
FROM Employees
INNER JOIN 
(SELECT reports_to as employee_id, COUNT(reports_to) as reports_count, ROUND(AVG(age)) as average_age
FROM Employees
WHERE reports_to IS NOT NULL
GROUP BY reports_to) as Managers
ON Employees.employee_id = Managers.employee_id
ORDER BY employee_id;