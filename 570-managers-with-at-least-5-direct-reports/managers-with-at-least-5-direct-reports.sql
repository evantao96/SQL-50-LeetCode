# Write your MySQL query statement below

SELECT name 
FROM Employee
INNER JOIN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(IFNULL(name, 1)) >= 5
) AS managers
ON Employee.id = managers.managerId;