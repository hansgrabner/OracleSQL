
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
   
