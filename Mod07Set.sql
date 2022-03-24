
Alle Mitarbeiter mit First_Name A%
Davon abziehen alle Mitarbeiter welche mehr als 5000 verdienen

2 Varianten (1. Variante - Minus, 2 Variante mit Where 
             
             
SELECT * FROM employees
where first_name like 'A%'
Intersect
SELECT * from  employees
where salary < 5000

SELECT * FROM employees
where first_name like 'A%'
Minus
SELECT * from  employees
where salary > 5000

SELECT * FROM employees
WHERE First_Name like 'A%' and salary < 5000
