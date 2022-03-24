
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

--ohne jOIN

SELECT d.department_name, COUNT(e.employee_id)
FROM departments d JOIN  Employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) = (

            SELECT MAX(COUNT(*)) As MaxAnzahl
            FROM  Employees e
            GROUP BY e.department_id


)
 
 
 SELECT MAX(COUNT(*)) As MaxAnzahl
FROM  departments d JOIN  Employees e
ON d.department_id = e.department_id
GROUP BY d.department_name



 
 SELECT d.department_name, COUNT(e.employee_id)
FROM departments d JOIN  Employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) = (
  
         SELECT MAX(COUNT(*)) As MaxAnzahl
      FROM  departments d JOIN  Employees e
      ON d.department_id = e.department_id
      GROUP BY d.department_name

  )
ORDER BY COUNT(e.employee_id) DESC

Ohne Join
SELECT d.department_name, COUNT(e.employee_id)
FROM departments d JOIN  Employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) = (

            SELECT MAX(COUNT(*)) As MaxAnzahl
            FROM  Employees e
            GROUP BY e.department_id


)


SELECT First_name, LENGTH(First_Name)
FROM employees
WHERE Length(first_name) = 
(
    SELECT MAX(Length(First_name)) FROM employees
)
ORDER BY Length(First_name) desc;



 
 

