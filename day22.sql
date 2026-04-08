CREATE DATABASE company_db;

USE company_db;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Rohith','Bangalore'),
(2,'Divya','Chennai'),
(3,'Hithesh','Hyderabad'),
(4,'Rakshitha','Mumbai'),
(5,'Kiran','Delhi');

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
amount INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(101,1,5000),
(102,1,7000),
(103,2,3000),
(104,3,9000),
(105,3,4000);

SELECT c.name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.name, o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT c.name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT c.name, SUM(o.amount) AS total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total DESC
LIMIT 1;

SELECT c.name, AVG(o.amount) AS avg_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT c.name, SUM(o.amount) AS total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.amount) > 8000;

SELECT c.name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT * FROM orders
WHERE amount > (SELECT AVG(amount) FROM orders);

SELECT c.name, SUM(o.amount) AS total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total DESC;-- updated
