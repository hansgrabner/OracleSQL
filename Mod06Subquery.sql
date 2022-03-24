
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



