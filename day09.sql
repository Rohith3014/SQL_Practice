-- Create database
CREATE DATABASE company_db;

-- Use the database
USE company_db;

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

-- Insert employee data
INSERT INTO employees (emp_name, department, salary, joining_date) VALUES
('Rohith','IT',60000,'2022-05-10'),
('Divya','HR',45000,'2023-01-15'),
('Hithesh','IT',70000,'2021-11-20'),
('Rakshitha','Finance',50000,'2022-08-05');

-- Display all employees
SELECT * FROM employees;

-- Show names in uppercase
SELECT UPPER(emp_name) AS upper_name
FROM employees;

-- Show first 3 letters of employee name
SELECT emp_name, SUBSTRING(emp_name,1,3) AS first_three_letters
FROM employees;

-- Calculate salary after 10% increment
SELECT emp_name, salary,
ROUND(salary * 1.10,2) AS new_salary
FROM employees;

-- Display joining year
SELECT emp_name, YEAR(joining_date) AS joining_year
FROM employees;

-- Show length of department name
SELECT department, LENGTH(department) AS dept_length
FROM employees;

-- Show last 4 letters of employee name
SELECT emp_name, RIGHT(emp_name,4) AS last_four_letters
FROM employees;

-- Format salary with 2 decimal places
SELECT emp_name, FORMAT(salary,2) AS formatted_salary
FROM employees;

-- Bonus category based on salary
SELECT emp_name, salary,
IF(salary > 60000,'High Bonus','Normal Bonus') AS bonus
FROM employees;

-- Calculate employee experience in years
SELECT emp_name,
TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS experience_years
FROM employees;-- updated
