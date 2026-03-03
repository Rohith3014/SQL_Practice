-- CREATE DATABASE
CREATE DATABASE company_db;
-- USE DATABASE
USE company_db;
CREATE TABLE employees (
    emp_id SMALLINT,
    emp_name VARCHAR(40),
    salary DECIMAL
);
-- INSERT DATA
INSERT INTO employees VALUES (101, 'Rohith', 30000.00);
INSERT INTO employees VALUES (102, 'Divya', 30000.00);
INSERT INTO employees VALUES (103, 'Hithesh', 28000.00);
INSERT INTO employees VALUES (104, 'Rakshitha', 27000.00);
-- ADD DEPORTMENT COLUMN
ALTER TABLE employees ADD department VARCHAR(20);
-- UPDATE DEPORTMENT 
SET SQL_SAFE_UPDATES =0;
UPDATE employees SET department='IT' WHERE emp_id=101;
UPDATE employees SET department='HR' WHERE emp_id=102;
UPDATE employees SET department='Finance' WHERE emp_id=103;
UPDATE employees SET department='Marketing' WHERE emp_id=104;
-- MODIFY SALARY COLUMN
ALTER TABLE employees MODIFY salary DECIMAL(10,2);
-- DROP DEPORTMRNT 
ALTER TABLE employees DROP COLUMN department;
-- ADD experience
ALTER TABLE employees ADD experience SMALLINT;
-- UPDATE experience
UPDATE employees SET experience=4 WHERE emp_id=101;
UPDATE employees SET experience=3 WHERE emp_id=102;
UPDATE employees SET experience=1 WHERE emp_id=103;
UPDATE employees SET experience=2 WHERE emp_id=104;
-- DESCRIBE TABLE
DESC employees;
-- SHOW FINAL RESULT
SELECT * FROM employees;
