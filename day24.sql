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
(5,'Kiran','IT',55000),
(6,'Anil','Sales',65000),
(7,'Sneha','Sales',48000);

CREATE INDEX idx_name ON employees(name);

SELECT * FROM employees
WHERE name = 'Rohith';