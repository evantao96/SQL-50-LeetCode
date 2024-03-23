# Write your MySQL query statement below
SELECT Employee.employee_id, department_id
FROM Employee 
INNER JOIN (
    SELECT employee_id, COUNT(department_id) AS num_departments
    FROM Employee
    GROUP BY employee_id
) as Employee_count
ON Employee.employee_id = Employee_count.employee_id
WHERE num_departments = 1 OR primary_flag = "Y"; 