-- Creating the customers and orders tables
CREATE DATABASE CustomersData;
Use CustomersData;

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);


-- Inserting some customers and orders

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
-- This INSERT fails because of our fk constraint.  No user with id: 98
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/06/06', 33.67, 98);

-- Finding Orders Placed By George: 2 Step Process

SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;

-- Finding Orders Placed By George: Using a subquery

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );
    
-- Cross Join Craziness bad idea to use cross joins
SELECT * FROM customers, orders; 


-- IMPLICIT INNER JOIN

SELECT * FROM customers, orders 
WHERE customers.id = orders.customer_id;

-- IMPLICIT INNER JOIN

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;
    
-- EXPLICIT INNER JOINS when doing joins its always better to do explicit join than implicit join

SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT *
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
    
-- ARBITRARY JOIN - meaningless, but still possible 

SELECT * FROM customers
JOIN orders ON customers.id = orders.id;

-- Getting Fancier (Inner Joins Still)

SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;


-- LEFT JOINS

SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
    

SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id; 
    
SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- OUR FIRST RIGHT JOIN (seems the same as a left join?)

SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;

