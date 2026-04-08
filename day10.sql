-- Create database
CREATE DATABASE company_db;

-- Select the database
USE company_db;

-- Create table
CREATE TABLE sales (
    id INT,
    salesperson VARCHAR(20),
    product VARCHAR(20),
    city VARCHAR(20),
    amount INT
);

-- Insert sample data
INSERT INTO sales VALUES
(1,'Rohith','Laptop','Bangalore',65000),
(2,'Divya','Phone','Chennai',22000),
(3,'Hithesh','Mouse','Hyderabad',1500),
(4,'Rakshitha','Laptop','Mumbai',60000),
(5,'Rohith','Phone','Bangalore',21000),
(6,'Divya','Laptop','Chennai',58000),
(7,'Hithesh','Phone','Hyderabad',20000),
(8,'Rakshitha','Mouse','Mumbai',1200);

-- View all data
SELECT * FROM sales;

-- Total sales for each salesperson
SELECT salesperson, SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson;

-- Average sales amount for each product
SELECT product, AVG(amount) AS avg_sales
FROM sales
GROUP BY product;

-- Salespersons whose total sales are greater than 70000
SELECT salesperson, SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson
HAVING SUM(amount) > 70000;

-- Number of products sold in each city
SELECT city, COUNT(product) AS total_products
FROM sales
GROUP BY city;

-- Highest sales amount for each product
SELECT product, MAX(amount) AS highest_sale
FROM sales
GROUP BY product;

-- Products whose average sale amount is greater than 20000
SELECT product, AVG(amount) AS avg_sale
FROM sales
GROUP BY product
HAVING AVG(amount) > 20000;

-- First 3 letters of salesperson name with total sales
SELECT SUBSTRING(salesperson,1,3) AS short_name,
SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson;

-- Sales category using CASE (more standard than IF)
SELECT salesperson, product,
CASE
    WHEN amount > 50000 THEN 'High Sale'
    ELSE 'Normal Sale'
END AS sale_category
FROM sales;

-- Cities where total sales are more than 50000
SELECT city, SUM(amount) AS total_sales
FROM sales
GROUP BY city
HAVING SUM(amount) > 50000;-- updated
