CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT,
salary INT
);

INSERT INTO employees VALUES
(1,'Rohith',NULL,50000),
(2,'Divya',1,60000),
(3,'Hithesh',NULL,45000),
(4,'Rakshitha',2,70000);

-- NULL Handling
SELECT * FROM employees
WHERE manager_id IS NULL;

SELECT name, COALESCE(manager_id, 0) AS manager
FROM employees;

-- UNION
SELECT name FROM employees
WHERE salary > 50000
UNION
SELECT name FROM employees
WHERE salary < 50000;