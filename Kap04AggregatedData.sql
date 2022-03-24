--my first hello world
SELECT 'HELLO Oracle' FROM Dual;


SELECT First_name, length(last_name), substr(JOB_ID,1,3) AS ErsterDrei,
'Hello', 12+234, first_name || ' wie gehts?' AS Begruessung
FROM employees ;




SELECT MAX(salary)
FROM employees;

SELECT MAX(salary)
FROM employees
WHERE department_id=10; --schränkt die Berchnungsgrundlage ein

SELECT MIN(First_name) AS KleinsterVorname, MAX(hire_date) AS LetzteAnstellung
FROM Employees;


SELECT COUNT(*), COUNT(employee_id),
COUNT(commission_pct),
COUNT(NVL(commission_pct,0)),
COUNT(First_name),
COUNT(DISTINCT First_name) AS UnterchiedlicheVornamen
FROM employees;



CREATE Table KundenInfo
(
    Kundennamen varchar(20),
    Umsatz number(10,2)
)

INSERT INTO KundenInfo(Kundennamen, Umsatz) VALUES('A',100);
INSERT INTO KundenInfo(Kundennamen, Umsatz) VALUES('B',NULL);
INSERT INTO KundenInfo(Kundennamen, Umsatz) VALUES('C',200);

SELECT * FROM KundenInfo;

SELECT AVG(Umsatz), AVG(NVL(Umsatz,0)) FROM  KundenInfo;



SELECT *
FROM employees
WHERE Hire_date=
(
    --Subquery or Inner query, executed first
    SELECT MIN(Hire_date) 
    FROM employees
);


SELECT AVG(salary), job_id
FROM Employees
WHERE First_Name LIKE '%a%'  -- schränkt Berechnungsbaisis ein 
GROUP BY job_id
HAVING AVG(salary) > 10000 --- schränkt das gruppierte ergebnis ein
ORDER BY AVG(salary) DESC;


1.	Anzahl der Mitarbeiter in Abteilung 10
2.	Durchschnittle Gehalt nach Einstiegsmonat
3.	Summe der Gehälter pro Job_id
4.	Alle Abteilungen mit mehr als 3 Mitarbeiter

