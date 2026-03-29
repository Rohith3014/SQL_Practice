CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);

INSERT INTO employees VALUES
(1,'Rohith',50000),
(2,'Divya',60000),
(3,'Hithesh',45000);

DELIMITER //

CREATE PROCEDURE get_high_salary()
BEGIN
    SELECT * FROM employees
    WHERE salary > 50000;
END //

DELIMITER ;

CALL get_high_salary();