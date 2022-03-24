
1 Aufgabe "Geringverdiener"

                
SELECT MIN(salary) FROM employees;

SELECT First_name, Last_name
FROM employees 
WHERE salary = (SELECT MIN(salary) FROM employees);


SELECT First_name, Last_name
FROM employees 
WHERE salary <= ALL (SELECT salary FROM employees);

SELECT First_name, salary, 
(SELECT ROUND(AVG(salary)) FROM employees) As Durchschnitt,
salary - (SELECT ROUND(AVG(salary)) FROM employees) as Differenz
FROM  Employees;

Name der Abteilung mit den meisten Mitarbeitern
JOIN Having Subquery

Group By          Count
 Abteilung A      17
 Abteilung B      23
 
 
 SELECT d.department_name, COUNT(e.employee_id)
FROM departments d JOIN  Employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) = 45
ORDER BY COUNT(e.employee_id) DESC
 
 
 

