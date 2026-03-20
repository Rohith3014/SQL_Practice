CREATE DATABASE company_db2;

USE company_db2;

DROP TABLE IF EXISTS employees;

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

-- Highest salary first
SELECT * FROM employees ORDER BY salary DESC;

-- Rank simulation (approx)
SELECT e1.name, e1.salary,
(SELECT COUNT(*) FROM employees e2 WHERE e2.salary > e1.salary) + 1 AS rank_num
FROM employees e1;

-- Department wise highest salary
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;