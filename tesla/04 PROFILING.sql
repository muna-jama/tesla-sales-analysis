USE tesla_db;

SELECT region, COUNT(*) as order_count 
FROM raw_tesla_sales 
GROUP BY region 
ORDER BY region DESC;

SELECT MIN(order_date) AS EARLIEST_years, MAX(order_date) AS LATEST_years 
FROM raw_tesla_sales;


SELECT vehicle_model, COUNT(*) AS order_count
FROM raw_tesla_sales
GROUP BY vehicle_model
ORDER BY order_count DESC;

SELECT
SUM(order_id IS NULL) AS null_orders_id,
SUM(order_date IS NULL) AS null_date,
SUM(vehicle_model IS NULL) AS null_model,
SUM(units_sold IS NULL) AS null_units
FROM raw_tesla_sales;












