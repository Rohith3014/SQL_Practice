-- create database
CREATE DATABASE company_db;

-- use the database
USE company_db;

-- create table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    experience INT,
    salary DECIMAL(10,2)
);

-- insert values
INSERT INTO employees VALUES (1, 'Rohith', 'IT', 5, 150000.00);
INSERT INTO employees VALUES (2, 'Divya', 'BT', 4, 150000.00);
INSERT INTO employees VALUES (3, 'Mohith', 'HR', 3, 150000.00);
INSERT INTO employees VALUES (4, 'Anjali', 'IT', 5, 150000.00);
INSERT INTO employees VALUES (5, 'Daayana', 'HR', 5, 150000.00);
INSERT INTO employees VALUES (6, 'Meena', 'Finance', 5, 150000.00);

-- show all data
SELECT * FROM employees;

-- show only name and department
SELECT emp_name, department FROM employees;

-- show only salary
SELECT salary FROM employees;

-- show only experience
SELECT experience FROM employees;