# Emergency Department Visit Analysis - USD MS-ADS 507

## Project Overview
This project is part of the **University of San Diego's MS in Applied Data Science (ADS-507)** course, led by **Professor Dillon Orr**. The goal is to develop a **data pipeline** that integrates and analyzes **Emergency Department (ER) Visit Data** with socioeconomic factors, particularly focusing on **income levels** across different counties in California.

## Repository Contents
This repository contains:

- **SQL Scripts**: Data cleaning and transformation queries (`transform_query.sql`).
- **Python Notebooks**: Scripts for MySQL connection, data exploration, and visualization.
- **Tableau Dashboard**: Interactive visualizations for final insights.
- **Design Document**: Detailed system architecture and pipeline documentation.
- **README.md**: This document, providing an overview of the project and instructions.

## Data Sources
We utilized the following publicly available datasets:

- [Low-Income or Disadvantaged Communities](https://data.ca.gov) (CA Open Data)
- [Hospital Emergency Department Encounters](https://data.chhs.ca.gov) (CA Health & Human Services)
- [Income Inequality Data](https://data.census.gov) (Used for Tableau visualization)

## Pipeline Workflow

### 1. Data Import & Cleaning (MySQL)
- Created a new schema (`final_507`) in **MySQL Workbench**.
- Used **Table Data Import Wizard** instead of manually writing queries for importing CSV files.
- Cleaned data by **removing extraneous characters** (e.g., `"BOOM"`) and formatting columns for consistency.
- Addressed issues with inconsistent county names by applying **`TRIM()`** and **`UPPER()`** functions to ensure matching between datasets.

### 2. Data Transformation (SQL)
- Used **LEFT JOIN** to merge ER visit data with income data, ensuring that all counties from the ER dataset were retained, even if no income data was available.
- Applied **`COALESCE()`** to replace NULL values in the median income field with `"No Data."`
- Used **`GROUP BY`** to aggregate total ER visits per county and create the final analysis table (`er_income_summary`).

```sql
CREATE TABLE `final_507`.`er_income_summary` AS
SELECT
    e.county_name,
    SUM(e.count) AS total_visits,
    COALESCE(MAX(i.MHI_2019_5YR), 'No Data') AS median_income
FROM `final_507`.`encounters-by-facility_2012-2023_20240702` e
LEFT JOIN `final_507`.`low-income_or_disadvantaged_communities_cleaned` i
ON e.county_name = i.County
GROUP BY e.county_name;
```

### 3. Data Exploration & Visualization (Python & Tableau)
- Connected MySQL to Python using **`mysql.connector`**.
- Loaded data into **pandas** for analysis and visualization.
- Created **bar charts and scatter plots** using **Matplotlib** and **Seaborn** to explore the relationship between **ER visits** and **income levels**.
- Excluded **Los Angeles County** in some visualizations to prevent data skew.
- Used **Tableau** for additional interactive visualizations.

## Deployment Steps

### How to Deploy the Pipeline
1. Install **MySQL Workbench** and create a schema named `final_507`.
2. Use **Table Data Import Wizard** to load the cleaned datasets into MySQL.
3. Run the **data transformation SQL script** (`transform_query.sql`) to merge and clean data.
4. Connect to **MySQL via Python** using `mysql.connector`.
5. Load data into **pandas** and generate visualizations.
6. Load data into **Tableau** and generate visualizations.

### How to Monitor the Pipeline
- Verify that tables were correctly imported using:
  ```sql
  SHOW TABLES IN final_507;
```
Run the following query to check the results:
  ```sql
  SELECT * FROM er_income_summary LIMIT 10;
```
## Future Enhancements
- Automate data ingestion with **weekly hospital updates**.
- Scale analysis to **specific counties** rather than all of California.
- Integrate a **paid API (Google Address API)** for improved zip code-to-county conversion.
- Improve performance with **indexing and optimized queries** in MySQL.
- Explore **machine learning models** for predictive analytics on ER visits.

## Project Team
- **Team Members**: Mauricio Espinoza Acevedo & Jordan Torres
- **Course**: MS-ADS 507 - University of San Diego
- **Professor**: Dillon Orr

## Acknowledgments
This project is part of the **MS-ADS curriculum at the University of San Diego**, incorporating best practices in data engineering and analytics. Special thanks to **Professor Dillon Orr** for guidance and feedback.
