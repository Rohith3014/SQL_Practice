
-- Create database
CREATE DATABASE company_db;
-- Use database
USE company_db;
-- Create employees table
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
-- Insert data
INSERT INTO employees VALUES (1, 'Rohith', 'IT', 50000);
INSERT INTO employees VALUES (2, 'Divya', 'HR', 40000);
INSERT INTO employees VALUES (3, 'Hithesh', 'IT', 60000);
INSERT INTO employees VALUES (4, 'Rakshitha', 'Finance', 55000);
INSERT INTO employees VALUES (5, 'Dayana', 'HR', 45000);
INSERT INTO employees VALUES (6, 'Shreyas', 'IT', 70000);
-- View table
SELECT * FROM employees;
--  Total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;
-- Total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;
--  Average salary
SELECT AVG(salary) AS average_salary
FROM employees;
--  Number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
-- Total salary in each department
SELECT department, SUM(salary) AS department_salary
FROM employees
GROUP BY department;
--  Departments with average salary > 50000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
-- Highest salary in the company
SELECT MAX(salary) AS highest_salary
FROM employees;
--  Lowest salary in the company
SELECT MIN(salary) AS lowest_salary
FROM employees;-- updated
