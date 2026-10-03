# ᝨ Tesla Sales Analysis Dashboard  <img src="https://img.shields.io/badge/-Tesla-CC0000?style=flat&logo=tesla&logoColor=white"/>

This is an end to end data engineering project associated with the car brand Tesla. The dataset was from the website called Kaggle into a star schema warehouse and an used a visual tool called  power BI dashboard.

## 1. Project Overview
###### Built a complete ETL pipeline including : 
- EXTRACT : Downloaded Tesla sale data from Kaggle
- TRANSFORM : Cleaned, deduplicated and refined the data in MySQL
-  LOAD : Modeled into a star schema for anaylsis
-   ISUALISE : Built a power BI dashboard

### Tools Used
- MySQL = used this database software for data warehouse
- SQL = transforming and analysing
- POWER BI : dashboards and visualisation
- KAGGLE : data source

### Key Insights
- Total revenue : £563.68 Million
- Top selling model : Model Y
- Top region : North America
- Total units sold : 12,000

## 2. DATA MODEL

### Fact table 
- fact_sales = includes units sold, revenue, discounts
  
### Dimension table : 
- dim_date = when the sale happens
- dim_region = where the sale happens
- dim_vehicle = what is sold


## Project Structure

#### tesla_sales_analyis/
SQL/
 1. CREATE_DATABASE
 2. CREATE_RAW_TABLE
 3. IMPORT_CHECK
 4. PROFILLING
 5. QUALITY CHECKS
 6. STAGING
 7. DIMENSIONS
 8. FACTS
 9. ANALYTICS

#### dashboard/
- tesla_dashboard
- 2 PNG images used



README.md 
