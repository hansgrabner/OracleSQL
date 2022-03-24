

INSERT INTO departments (
    department_id,
    department_name,
    manager_id,
    location_id
) VALUES (
    (SELECT MAX(department_id) + 10 FROM departments),
    'Entwicklung',
    (SELECT manager_id from departments
    where Department_name='Administration' )    ,
    NULL
);



INSERT INTO departments (
    department_id,
    department_name,
    manager_id
    
) VALUES (
    (SELECT MAX(department_id) + 10 FROM departments),
    'Entwicklung',
    (SELECT manager_id from departments
    where Department_name='Administration' )    
);



UPDATE Customers
SET

Vorname='U',
AlterInText='Jung',
AlterInZahlen = 20
WHERE AlterInText='100'

UPDATE Customers
SET AlterInZahlen = AlterInZahlen * 1.1  

