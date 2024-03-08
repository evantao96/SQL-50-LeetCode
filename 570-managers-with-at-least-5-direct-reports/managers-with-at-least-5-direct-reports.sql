-- # Write your MySQL query statement below
WITH qualifiedManagers AS 
(
    WITH managers AS 
    (
        SELECT managerId, COUNT(IF(name IS NULL, 1, 1)) as managerCount
        FROM Employee
        GROUP BY managerId
    )
    SELECT managerId 
    FROM managers
    WHERE managerCount >= 5
)
SELECT name
FROM Employee, qualifiedManagers
WHERE id = qualifiedManagers.managerId;