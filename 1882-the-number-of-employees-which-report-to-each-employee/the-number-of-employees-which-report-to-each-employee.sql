# Write your MySQL query statement below
SELECT Employees.employee_id, name, reports_count, average_age
FROM Employees
INNER JOIN 
(SELECT reports_to, COUNT(reports_to) as reports_count, ROUND(AVG(age)) as average_age
FROM Employees
GROUP BY reports_to) as Managers
ON Employees.employee_id = Managers.reports_to
ORDER BY employee_id;