-- revenue by year
SELECT d.year, SUM(f.net_revenue_usd) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_key = d.date_key
GROUP BY d.year
ORDER BY d.year;

-- units by vehicle model
SELECT v.vehicle_model, SUM(f.units_sold) AS total_units
FROM fact_sales f
JOIN dim_vehicle v ON f.vehicle_key = v.vehicle_key
GROUP BY v.vehicle_model
ORDER BY total_units DESC;

-- revenue by region
SELECT r.region, SUM( f.net_revenue_usd) AS total_revenue
FROM fact_sales f
JOIN dim_region r ON f.region_key = r.region_key
GROUP BY r.region
ORDER BY total_revenue DESC;



-- top 5 countries
SELECT r.country, SUM(f.net_revenue_usd) AS total_revenue_usd
FROM fact_sales f
JOIN dim_region r ON f.region_key = r.region_key
GROUP BY r.country
ORDER BY total_revenue_usd DESC
LIMIT 5;

-- monthly trends 2024
SELECT MONTH (d.order_date) AS month_num, SUM(f.net_revenue_usd)
FROM fact_sales f 
JOIN dim_date d ON f.date_key = d.date_key 
WHERE d.year = 2024 
GROUP BY month_num 
ORDER BY month_num;

-- raw_tesla_salesaverage rating by model

SELECT model, AVG(rating) AS average_rating, COUNT(rating) AS total_reviews
FROM raw_tesla_sales
GROUP BY model
ORDER BY average_rating DESC;

