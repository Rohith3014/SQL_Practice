CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);

INSERT INTO employees VALUES
(1,'Rohith',50000),
(2,'Divya',60000);

SET autocommit = 0;

START TRANSACTION;

UPDATE employees
SET salary = 100000
WHERE emp_id = 1;

ROLLBACK;

SELECT * FROM employees;

START TRANSACTION;

UPDATE employees
SET salary = 100000
WHERE emp_id = 1;

COMMIT;

SELECT * FROM employees;