
SELECT First_Name, Department_Name
FROM  Employees, Departments -- CROSS JOIN oder Kartesisches Produkt

SELECT First_Name, Department_Name
    FROM  Employees JOIN Departments 
    ON Employees.department_id = departments.department_id
