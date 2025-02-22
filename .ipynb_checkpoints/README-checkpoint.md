# **Emergency Department Visit Analysis - USD MS-ADS 507**

## **Project Overview**
This project is part of the University of San Diego's **MS in Applied Data Science (ADS-507)** course, led by **Professor Dillon Orr**. The goal is to develop a **production-ready data pipeline** that integrates and analyzes **Emergency Department Visit Data** with socioeconomic factors, particularly focusing on **low-income neighborhoods**.

## Contents
- **data/**: Raw CSV datasets
- **sql/**: SQL scripts for table creation and data transformation
- **notebooks/** (optional): Data visualization in Python (for analysis purposes)

## How to Deploy the Pipeline
1. Install MySQL on your machine.
2. Create a database called `final_507` in MySQL.
3. Use `create_tables.sql` to create tables.
4. Load data into MySQL manually (or with your preferred tool).
5. Run `transform_query.sql` to perform the transformation.

## How to Monitor the Pipeline
- Check MySQL Workbench to ensure data is loaded.
- Verify results with `SELECT * FROM er_income_summary;`

## **Project Team 10**
- **Team Members**: Mauricio Espinoza Acevedo and Jordan Torres
- **Course**: MS-ADS 507 - University of San Diego
- **Professor**: Dillon Orr

## **Future Enhancements**
- Automate pipeline using **Airflow**.
- Implement **real-time data ingestion**.
- Enhance data visualization with **Tableau or Streamlit**.
- Explore machine learning models for predictive analysis.

## **Acknowledgments**
This project is part of the **MS-ADS curriculum at the University of San Diego** and follows best practices in data engineering and analytics. Special thanks to **Professor Dillon Orr** for guidance and feedback.

---

For any questions or collaboration requests, please contact **[Your Contact Information]**.

