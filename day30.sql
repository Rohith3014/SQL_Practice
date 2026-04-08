

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1,'Rohith','IT',50000),
(2,'Divya','IT',60000),
(3,'Hithesh','HR',45000),
(4,'Rakshitha','HR',70000),
(5,'Kiran','IT',55000);

-- Create Index (improves performance)
CREATE INDEX idx_salary
ON employees(salary);

-- Optimized Query (no SELECT *)
SELECT name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 3;

-- Compare with normal query
SELECT * FROM employees;

-- View data
SELECT * FROM employees;-- updated
