SELECT * FROM raw_tesla_sales WHERE units_sold <= 0;

SELECT * FROM raw_tesla_sales WHERE customer_rating < 0 OR customer_rating > 5;

SELECT * FROM raw_tesla_sales WHERE return_rate < 0 OR return_rate > 1;

SELECT order_id, COUNT(*) AS count
FROM raw_tesla_sales
GROUP BY order_id
HAVING count > 1;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT order_id) AS unique_orders
FROM raw_tesla_sales;