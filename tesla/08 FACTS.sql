DROP TABLE IF EXISTS fact_sales;
CREATE TABLE fact_sales AS
SELECT
  d.date_key,
  r.region_key,
  v.vehicle_key,
  s.units_sold,
  s.net_revenue_usd,
  s.discount_usd,
  s.revenue_per_unit
FROM stg_tesla_sales s
JOIN dim_date d ON s.order_date = d.order_date
JOIN dim_region r ON s.region = r.region AND s.country = r.country
JOIN dim_vehicle v ON s.vehicle_model = v.vehicle_model;