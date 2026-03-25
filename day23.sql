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

WITH avg_salary AS (
SELECT department, AVG(salary) AS avg_sal
FROM employees
GROUP BY department
)
SELECT e.name, e.department, e.salary
FROM employees e
JOIN avg_salary a
ON e.department = a.department
WHERE e.salary > a.avg_sal;