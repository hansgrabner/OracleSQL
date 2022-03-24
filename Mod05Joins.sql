
SELECT First_Name, Department_Name
FROM  Employees, Departments -- CROSS JOIN oder Kartesisches Produkt

SELECT First_Name, Department_Name, departments.department_Id
    FROM  Employees JOIN Departments --INNER JOIN EQUI
    ON Employees.department_id = departments.department_id
    
  SELECT emp.First_Name, frizi.Department_Name,frizi.department_Id
    FROM  Employees emp JOIN Departments frizi--INNER JOIN EQUI
    ON emp.department_id = frizi.department_id
    
    
      
    
SELECT First_Name, Department_Name
    FROM  Employees RIGHT OUTER JOIN Departments 
    ON Employees.department_id = departments.department_id
    where employee_id is null
    
SELECT First_Name AS F, Department_Name
    FROM  Departments LEFT OUTER JOIN Employees
    ON Employees.department_id = departments.department_id
    
    ORDER BY F
    
    SELECT First_Name, Department_Name
    FROM  Departments FULL OUTER JOIN Employees
    ON Employees.department_id = departments.department_id
    
    
    SELECT First_Name, Department_Name
    FROM  Employees NATURAL JOIN Departments 
    
    
       1. Aufgabe - JOIN -- First_Name, Job_Title
    
    SELECT e.First_Name, j.Job_Title
    FROM employees e JOIN jobs j
    ON e.job_id = j.job_id
    
      SELECT e.First_Name, j.Job_Title
    FROM employees e JOIN jobs j
    USING(job_id);
    
    2. Anzahl der Jobs pro Mitarbeiter (
        
        
           SELECT e.employee_id, e.First_Name, Count(h.employee_id)
    FROM employees e JOIN job_history h
    ON e.employee_id = h.employee_id
    GROUP BY e.employee_id, e.First_name
    ORDER BY COUNT(h.employee_id);
   
 SELECT e.employee_id, e.First_Name, Count(h.employee_id)
    FROM employees e LEFT OUTER JOIN job_history h
    ON e.employee_id = h.employee_id
    GROUP BY e.employee_id, e.First_name
    ORDER BY COUNT(h.employee_id);
        
        --Erweiterung - Job_History-Eintrag nur dann berücksichtigen / zählen
        , wenn größer als 24 Monate
        
           SELECT e.employee_id, e.First_Name, Count(h.employee_id)
    FROM employees e LEFT OUTER JOIN job_history h
    ON e.employee_id = h.employee_id
    WHERE months_between(end_date, start_date)>24
    GROUP BY e.employee_id, e.First_name
    ORDER BY COUNT(h.employee_id);
        
        
       Self Join
           SELECT m.First_Name as Mitarbeiter, v.First_Name AS Vorgesetzter
   FROM employees m LEFT JOIN employees v
   ON m.manager_id = v.employee_id
   ORDER BY v.First_NAme
        
        Aufgabe: Anzahl der Mitarbeiter pro Manager
   
