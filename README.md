# ᝨ Tesla Sales Analysis Dashboard  <img src="https://img.shields.io/badge/-Tesla-CC0000?style=flat&logo=tesla&logoColor=white"/>

This project demonstrates an end to end data engineering project analysing Tesla data using MySQL, ETL, SQL, Power BI. The project demonstrates the process of taking raw sales data, transforming and modelling it in a relational data warehouse, and producing an interactive dashboard to identify sales trends and business insights.

## 1. Project Overview
The aim of this project was to transform raw Tesla sales data into a structured dataset suitable for analysis and create a Power BI dashboard to communicate key findings.

The project followed an ETL and dimensional modelling approach:

- **Extract** – Imported Tesla sales data sourced from Kaggle.
- **Transform** – Cleaned, validated and transformed the raw data using SQL and MySQL.
- **Load** – Structured the data into a star-schema data warehouse.
- **Analyse** – Used SQL to investigate sales performance and trends.
- **Visualise** – Created an interactive Power BI dashboard.

| Tool | Purpose |
|---|---|
| **MySQL** | Data storage, transformation and data warehouse |
| **SQL** | Data cleaning, validation and analysis |
| **Power BI** | Data visualisation and dashboard development |
| **Kaggle** | Source of the dataset |

## Data Model

The data was organised into a **star schema** consisting of a central fact table and supporting dimension tables.

### Fact Table

**fact_sales**

Contains measurable sales information, including:

- Units sold
- Revenue
- Discounts

### Dimension Tables

**dim_date**
- Provides information about when each sale occurred.

**dim_region**
- Provides geographical information about where sales occurred.

**dim_vehicle**
- Provides information about the Tesla vehicle being sold.

## Key Business Insights

- **Total Revenue:** £563.68 million
- **Total Units Sold:** 12,000
- **Top-Selling Model:** Model Y
- **Top Region:** North America

## SQL Analysis

SQL was used throughout the project for:

- Data profiling
- Data quality checks
- Data cleaning
- Data transformation
- Creating dimension tables
- Creating the fact table
- Analytical queries
- Validating the final dataset

## Power BI Dashboard

The cleaned and modelled data was connected to Power BI to create an interactive sales dashboard.

The dashboard provides a visual overview of Tesla sales performance, including revenue, units sold, vehicle performance and regional sales.


## Skills Demonstrated

- SQL
- MySQL
- Data cleaning
- Data quality validation
- ETL processes
- Data warehouse design
- Star-schema modelling
- Data analysis
- Power BI
- Dashboard development
- Business insight generation

## Project Outcome

This project demonstrates an end-to-end data engineering workflow, from raw data ingestion and SQL transformation through to data warehouse modelling and business intelligence visualisation. Developed as part of my data engineering portfolio to demonstrate practical skills in **SQL, MySQL, ETL, data warehousing and dimensional modelling**.


## Project Structure

- **SQL/** – SQL scripts for database creation, data import, profiling, quality checks, staging, dimensions, facts and analysis.
- **dashboard/** – Power BI dashboard files and dashboard images.
- **.gitignore** – Git configuration file.
- **LICENSE** – MIT licence.
- **README.md** – Project documentation.

