# TASK-6
Analysis of a sales dataset named "Sales Shop 2025" collected from Kaggle.
The data has been grouped and ordered on the basis of month and year.
Month and Year have been extracted from the order date using the EXTRACT() command. 
Total revenue and Total no. of orders have also been computed using the SUM() and COUNT() commands.
I have also limited the output to give the total revenue and total no.of orders between two dates using the WHERE() command.
Screenshots of the output, the datset and the SQL command script has been attached.
I have used MySQL Workbench. Codes may differ for PostgreSQL, etc.
Pasting the code below, for easier interpretation.

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
