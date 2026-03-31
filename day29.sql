CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT CHECK (salary > 1000),
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1,'Rohith',50000,'IT'),
(2,'Divya',60000,'IT'),
(3,'Hithesh',45000,'HR');

START TRANSACTION;

UPDATE employees
SET salary = 70000
WHERE emp_id = 1;

COMMIT;

START TRANSACTION;

UPDATE employees
SET salary = 10000
WHERE emp_id = 2;

ROLLBACK;

CREATE TABLE employees2 (
    name VARCHAR(50),
    salary INT
);

INSERT INTO employees2 VALUES
('Kiran',55000),
('Rakshitha',65000);

SELECT name, salary FROM employees
UNION
SELECT name, salary FROM employees2;

CREATE INDEX idx_name
ON employees(name);

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department WITH ROLLUP;

SELECT * FROM employees;