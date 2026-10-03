USE tesla_db;
SHOW Tables;
SELECT * FROM raw_tesla_sales;

CREATE TABLE raw_tesla_sales (
 order_id VARCHAR (50),
 order_date DATE,
 year INT ,
 region VARCHAR (50),
 country VARCHAR (50),
 vehicle_model VARCHAR (50),
 units_sold INT,
 average_vehicle_price_usd DECIMAL (12,2),
 discount_usd DECIMAL (12,2),
 net_revenue_usd DECIMAL (12,2),
 ending_inventory_units INT,  
 average_delivery_days INT,
 customer_rating DECIMAL (3,2),
 return_rate DECIMAL (5,4)
 )
 
 
 
 
 
 
 
 
 
 
 
 
 
 