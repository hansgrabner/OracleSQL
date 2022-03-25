


SELECT 'Hello ' || ' + ' || ' World ' FROM DUAL;


SELECT * from departments;



SELECT e.First_Name, d.department_name, 'mit join'
FROM Employees e JOIN Departments d
ON e.department_id = d.department_id
WHERE d.department_name='Marketing'

UNION

SELECT e.First_Name, '', 'Mit Subquery'
FROM Employees e
WHERE e.department_id = (
        SELECT department_id 
        FROM departments 
        WHERE department_name='Marketing'
)
