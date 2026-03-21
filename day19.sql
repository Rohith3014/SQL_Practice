CREATE DATABASE company_db3;

USE company_db3;

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
(5,'Kiran','IT',55000),
(6,'Anil','HR',65000),
(7,'Sneha','IT',48000);

-- 1. Highest salary (Top 1)
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1;

-- 2. Top 3 highest salaries
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 3. Second highest salary
SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- 4. Third highest salary
SELECT MAX(salary) AS third_highest
FROM employees
WHERE salary < (
    SELECT MAX(salary) FROM employees
    WHERE salary < (SELECT MAX(salary) FROM employees)
);

-- 5. Employees earning above average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 6. Department-wise highest salary
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 7. Count employees in each department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 8. Employees with salary between 50000 and 65000
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 65000;

-- 9. Employees whose name starts with 'R'
SELECT * FROM employees
WHERE name LIKE 'R%';

-- 10. Sort by department then salary
SELECT * FROM employees
ORDER BY department, salary DESC;