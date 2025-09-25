Welcome to your new dbt project!



### Tasty Bytes Snowflake + dbt Project
This project demonstrates an end-to-end modern data workflow using Snowflake as the data warehouse and dbt (Data Build Tool) for data transformations and modeling.
# 🔹 Project Overview
Data Source: Raw CSV files hosted in AWS S3 (Tasty Bytes demo dataset).
Ingestion: Data loaded into Snowflake via an external stage (blob_stage) and COPY INTO.
Raw Table: MENU table containing food truck menu items, prices, and health metrics.
Transformations: Implemented in dbt models to create clean, analytics-ready datasets.
Model Example:
menu_sales model aggregates sales and profit by brand and menu item.
Defined as a dbt model and materialized in Snowflake (as a view by default).
# 🔹 Tools & Technologies
Snowflake → cloud data warehouse.
dbt (with Snowflake adapter) → manages SQL transformations, dependencies, and documentation.
S3 → raw data storage.
# 🔹 Key Features
dbt sources map raw Snowflake tables (MENU) into the dbt project.
dbt models (menu_sales) transform raw data into analytics-ready views.
Configurable materializations (views/tables/incremental) for performance vs. freshness.
Example queries to explore: row counts, top menu items, profitability, and semi-structured data (VARIANT).
# 🔹 How It Works
Load raw data (MENU table) into Snowflake.
Use dbt to define sources and models.


### Using the starter project

Try running the following commands:
- dbt run
- dbt test 
