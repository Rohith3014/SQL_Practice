CREATE DATABASE db;
USE db;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id INT
);

INSERT INTO customers VALUES
(1,'Rohith'),
(2,'Divya');

INSERT INTO products VALUES
(1,'Laptop'),
(2,'Mouse'),
(3,'Phone');

-- Same order_id = same order (multiple products)
INSERT INTO orders VALUES
(1,1,1),
(1,1,2),
(2,2,3);

SELECT o.order_id, c.name, p.name
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN products p ON o.product_id = p.id;-- updated
