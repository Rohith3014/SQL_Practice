CREATE DATABASE company_db5;

USE company_db5;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
experience INT
);

INSERT INTO employees VALUES
(1,'Rohith','IT',50000,2),
(2,'Divya','IT',60000,5),
(3,'Hithesh','HR',45000,1),
(4,'Rakshitha','HR',70000,6),
(5,'Kiran','IT',55000,3),
(6,'Anil','Sales',65000,4),
(7,'Sneha','Sales',48000,2);

SELECT name, salary,
CASE
    WHEN salary >= 65000 THEN 'High Salary'
    WHEN salary >= 50000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END AS salary_category
FROM employees;

SELECT name, experience,
CASE
    WHEN experience >= 5 THEN 'Senior'
    WHEN experience >= 3 THEN 'Mid Level'
    ELSE 'Junior'
END AS experience_level
FROM employees;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT 
CASE
    WHEN experience >= 5 THEN 'Senior'
    WHEN experience >= 3 THEN 'Mid Level'
    ELSE 'Junior'
END AS level,
COUNT(*) AS total
FROM employees
GROUP BY level;

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

SELECT * FROM employees
WHERE experience > 2 AND salary > 50000;

SELECT * FROM employees
ORDER BY experience DESC, salary DESC;

SELECT * FROM employees
WHERE name LIKE 'S%';