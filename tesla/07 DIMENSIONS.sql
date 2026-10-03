DROP TABLE IF EXISTS dim_region;
DROP TABLE IF EXISTS dim_date;
DROP TABLE IF EXISTS dim_vehicle;


CREATE TABLE dim_region AS
SELECT
  ROW_NUMBER() OVER (ORDER BY region, country) AS region_key, 
  region,
  country
FROM (SELECT DISTINCT region, country FROM stg_tesla_sales) t;

SELECT * FROM dim_region LIMIT 20;

CREATE TABLE dim_date AS
SELECT
  ROW_NUMBER() OVER (ORDER BY order_date) AS date_key, 
  order_date,
  year,
  quarter 
FROM (SELECT DISTINCT order_date, year, quarter FROM stg_tesla_sales) t;


CREATE TABLE dim_vehicle AS
SELECT
ROW_NUMBER() OVER (ORDER BY vehicle_model) AS vehicle_key, 
vehicle_model
FROM (SELECT DISTINCT vehicle_model  FROM stg_tesla_sales) t;

SELECT * FROM dim_vehicle LIMIT 20;
