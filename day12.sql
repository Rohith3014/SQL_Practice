-- Create Database
CREATE DATABASE sql_practice;

-- Use Database
USE sql_practice;

-- Create Customers Table
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

-- Insert Data into Customers
INSERT INTO customers VALUES
(1,'Rohith','Bangalore'),
(2,'Divya','Mumbai'),
(3,'Hithesh','Delhi'),
(4,'Rakshitha','Chennai');

-- Create Orders Table
CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
product VARCHAR(50)
);

-- Insert Data into Orders
INSERT INTO orders VALUES
(101,1,'Laptop'),
(102,2,'Mobile'),
(103,1,'Keyboard');

-- INNER JOIN
SELECT customers.name, orders.product
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

-- LEFT JOIN
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- RIGHT JOIN
SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;-- updated
