SELECT e.FIRST_NAME, e.department_id, d.DEPARTMENT_NAME 
FROM Employees e
JOIN Departments d
ON e.department_id = d.DEPARTMENT_ID
WHERE e.department_id IN (100, 120);
