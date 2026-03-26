-- Business Question 1
-- Top 10 Customers by Revenue
-- SELECT 
--     c.customer_name,
--     SUM(o.total_amount) AS total_revenue
-- FROM Orders o
-- JOIN Customers c
-- ON o.customer_id = c.customer_id
-- GROUP BY c.customer_name
-- ORDER BY total_revenue DESC
-- LIMIT 10

-- Business Question 2
-- Monthly Revenue Trend
-- SELECT 
--     DATE_FORMAT(order_date, '%Y-%m') AS month,
--     SUM(total_amount) AS revenue
-- FROM Orders
-- GROUP BY month
-- ORDER BY month;

-- Business Question 3
-- Most Profitable Product Category
-- SELECT 
--     p.category,
--     SUM(o.total_amount) AS total_revenue
-- FROM Orders o
-- JOIN Products p
-- ON o.product_id = p.product_id
-- GROUP BY p.category
-- -- ORDER BY total_revenue DESC;

-- Question 4
-- Calculate overall retention rate
-- SELECT 
--     COUNT(*) AS retained_customers,
--     COUNT(*) * 100.0 / (SELECT COUNT(*)
-- FROM Customers) AS retention_rate_percentage
-- FROM (
--     SELECT customer_id
--     FROM Orders
--     GROUP BY customer_id
--     HAVING COUNT(order_id) > 1
-- ) AS repeat_customers;

-- Customers who ordered more than once.

SELECT 
    c.customer_name,
    c.customer_id,
    COUNT(o.order_id) AS orders_count
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name, c.customer_id
HAVING COUNT(o.order_id) > 1;












