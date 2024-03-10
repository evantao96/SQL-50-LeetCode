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
-- WITH qualifiedManagers AS 
-- (
    --    SELECT managerId
    --     FROM Employee
    --     GROUP BY managerId
    --     HAVING COUNT(IFNULL(name, 1)) >= 5
-- )
-- SELECT name
-- FROM Employee, qualifiedManagers
-- WHERE id = qualifiedManagers.managerId;

        -- SELECT managerId
        -- FROM Employee
        -- GROUP BY managerId
        -- HAVING COUNT(IFNULL(name, 1)) >= 5