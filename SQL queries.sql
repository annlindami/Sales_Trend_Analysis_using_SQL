SELECT * FROM test.sales; -- viewing the data
SELECT
    YEAR(order_date) AS year, -- extracting year from date
    MONTH(order_date) AS month, -- extracting month from date
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM sales
GROUP BY year, month
ORDER BY year, month;
SELECT SUM(total_price), COUNT(DISTINCT order_id)
FROM test.sales 
WHERE order_date BETWEEN '2023-06-01' AND '2023-12-31'; -- displays the total revenue and no. of orders between the given date
