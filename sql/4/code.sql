-- TASK 1
SELECT name, stock_quantity, category
FROM products 
WHERE stock_quantity < 100
ORDER BY stock_quantity;

-- TASK 2
SELECT name, category, SUM(quantity)
FROM Sales
JOIN Products
ON sales.product_id = products.id
GROUP BY name, category
ORDER BY 3
LIMIT 1;

-- TASK 3
UPDATE products 
SET stock_quantity = stock_quantity + 25
WHERE name = 'Laptop';
SELECT *
FROM products
WHERE name = 'Laptop';

-- TASK 4
SELECT category, ROUND(SUM(price * quantity), 2)
FROM products 
JOIN sales 
ON sales.product_id = products.id
GROUP BY category
ORDER BY 2 DESC;

-- TASK 5
SELECT 
    p.name, 
    SUM(s.quantity) AS total_quantity_sold, 
    MAX(s.sale_date) AS last_sale_date
FROM products p
JOIN sales s ON p.id = s.product_id
GROUP BY p.name
ORDER BY total_quantity_sold DESC
LIMIT 1;
