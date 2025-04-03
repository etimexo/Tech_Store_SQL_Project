CREATE TABLE credit_card_data (
    credit_card_id TEXT,
    customer_id INT PRIMARY KEY,
    card_number VARCHAR(50),
    card_expiry_date DATE,
    bank_name TEXT
);

CREATE TABLE CustomerInfo (
    customer_id INT PRIMARY KEY,
    customer_name TEXT,
    email TEXT,
    phone VARCHAR(20),
    dob DATE,
    gender TEXT,
    country TEXT,
    city TEXT
);

CREATE TABLE Products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    description TEXT,
    product_category TEXT,
    unit_price DECIMAL(10,2),
    unit_cost DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id TEXT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_id INT,
    quantity INT,
    delivery_status TEXT
);

CREATE TABLE Payments (
    payment_id TEXT PRIMARY KEY,
    order_id INT,
    payment_date DATE
);

SELECT * 
FROM credit_card_data
LIMIT 10;

SELECT *
FROM customerinfo
LIMIT 10;

SELECT *
FROM payments
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;

SELECT *
FROM products
LIMIT 10;

-- Question 1
SELECT c.customer_id, c.customer_name, SUM(p.unit_price * o.quantity) AS total_spent,
RANK() OVER(ORDER BY SUM(p.unit_price * o.quantity) DESC) AS rank
FROM customerinfo c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.order_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;

-- Question 2
SELECT c.city, SUM(p.unit_price * o.quantity) AS revenue,
RANK() OVER(ORDER BY SUM(p.unit_price * o.quantity) DESC) AS rank
FROM customerinfo c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
JOIN payments pay ON o.order_id = pay.order_id -- includes only paid orders
GROUP BY c.city;

-- Question 3
SELECT p.product_name, SUM(o.quantity) AS total_quantity_sold, SUM(p.unit_price * o.quantity) AS revenue,
RANK() OVER(ORDER BY SUM(p.unit_price * o.quantity) DESC) AS rank
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY rank
LIMIT 5;

-- Question 4
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS no_of_orders
FROM customerinfo c
JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN payments p ON o.order_id = p.order_id 
WHERE p.order_id IS NULL  
GROUP BY c.customer_id, c.customer_name;

-- Question 5
SELECT customer_orders.product_category, 
       SUM(customer_orders.order_count) AS total_orders_per_category,
       AVG(customer_orders.order_count) AS avg_orders_per_category
FROM (
    SELECT p.product_category, o.customer_id, COUNT(o.order_id) AS order_count
    FROM products p
    JOIN orders o ON p.product_id = o.product_id
    GROUP BY p.product_category, o.customer_id
) AS customer_orders
GROUP BY customer_orders.product_category;

-- Question 6
SELECT p.product_category, SUM(p.unit_price * o.quantity) AS revenue,
RANK() OVER(ORDER BY SUM(p.unit_price * o.quantity) DESC) AS rank
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_category
ORDER BY revenue DESC;

-- Question 7
SELECT c.gender, SUM(p.unit_price * o.quantity) AS revenue
FROM customerinfo c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.gender;









