-- Create database
CREATE DATABASE company_db;
-- Select the database
USE company_db;
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50)
);
INSERT INTO orders VALUES (1, 'Rohith');
INSERT INTO orders VALUES (2, 'Divya');
INSERT INTO orders VALUES (3, 'Rohith');
INSERT INTO orders VALUES (4, 'Hithesh');
INSERT INTO orders VALUES (5, 'Rakshitha');
INSERT INTO orders VALUES (6, 'Divya');
-- show distinct
SELECT * FROM orders;
SELECT DISTINCT customer_name
FROM orders;
--  UPDATE
CREATE TABLE products (
    id INT,
    product VARCHAR(50),
    price INT
);
INSERT INTO products VALUES (1, 'Laptop', 50000);
INSERT INTO products VALUES (2, 'Mobile', 20000);
INSERT INTO products VALUES (3, 'Tablet', 15000);
SELECT * FROM products;
UPDATE products
SET price = 22000
WHERE product = 'Mobile';
SELECT * FROM products;
-- DELETE
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES (1, 'Dayana', 35);
INSERT INTO students VALUES (2, 'Shreyas', 80);
INSERT INTO students VALUES (3, 'Rakshitha', 38);
INSERT INTO students VALUES (4, 'Divya', 92);
INSERT INTO students VALUES (5, 'Rohith', 65);
-- show result
SELECT * FROM students;
DELETE FROM students
WHERE marks < 40;
SELECT * FROM students;