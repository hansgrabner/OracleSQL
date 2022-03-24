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

