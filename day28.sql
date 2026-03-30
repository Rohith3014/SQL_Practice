
CREATE DATABASE company_db;

USE company_db;

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- Create log table
CREATE TABLE salary_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    old_salary INT,
    new_salary INT
);

-- Insert data
INSERT INTO employees VALUES
(1,'Rohith',50000),
(2,'Divya',60000),
(3,'Hithesh',45000);

-- Change delimiter
DELIMITER //

-- Create trigger
CREATE TRIGGER salary_update_trigger
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_log(emp_id, old_salary, new_salary)
    VALUES (OLD.emp_id, OLD.salary, NEW.salary);
END //

-- Reset delimiter
DELIMITER ;

-- Update salary (Trigger runs automatically)
UPDATE employees
SET salary = 70000
WHERE emp_id = 1;

-- View data
SELECT * FROM employees;
SELECT * FROM salary_log;