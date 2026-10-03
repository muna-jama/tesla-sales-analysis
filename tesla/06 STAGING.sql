CREATE TABLE stg_tesla_sales AS
SELECT distinct order_id, 
order_date, 
year,
region,
country,
vehicle_model,
unit_sold,
average_vehicle_price_usd,
discount_usd,
net_revenue_usd,
ending_inventory_units,
average_delivery_days,
customer_rating,
return_rate,
 CASE 
  WHEN MONTH(order_date) IN (1,2,3) THEN 'Q1'
  WHEN MONTH(order_date) IN (4,5,6) THEN 'Q2'
  WHEN MONTH(order_date) IN (7,8,9) THEN 'Q3'
  ELSE 'Q4'
END AS quarter,

net_revenue_usd / units_sold AS revenue_per_unit

FROM raw_tesla_sales;
