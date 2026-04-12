CREATE DATABASE order_db;

-- accesing the Database
USE order_db;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(47),
    city VARCHAR(32)
);

-- Create Orders 
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(24),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- sample/ demo Customers
INSERT INTO customers (customer_name, city) VALUES
('Arun', 'Chennai'),
('Bala', 'Madurai'),
('Charan', 'Coimbatore'),
('Divya', 'Trichy');

-- Insert Orders
INSERT INTO orders (customer_id, product_name, amount) VALUES
(1, 'Laptop', 50000),
(1, 'Mouse', 500),
(2, 'Mobile', 2070),
(3, 'Keyboard', 1500);

-- INNER JOIN (Matching records)
SELECT customers.customer_name, orders.product_name, orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

-- LEFT JOIN 
SELECT customers.customer_name, orders.product_name
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- RIGHT JOIN 
SELECT customers.customer_name, orders.product_name
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;

-- Total Order Amount per Customer
SELECT customers.customer_name, SUM(orders.amount) AS total_spent
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;

-- Customers with No Orders
SELECT customer_name
FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders);
