# **Emergency Department Visit Analysis - USD MS-ADS 507**

## **Project Overview**
This project is part of the University of San Diego's **MS in Applied Data Science (ADS-507)** course, led by **Professor Dillon Orr**. The goal is to develop a **production-ready data pipeline** that integrates and analyzes **Emergency Department Visit Data** with socioeconomic factors, particularly focusing on **low-income neighborhoods**.

## **Project Goals**
- Build an **ETL (Extract, Transform, Load) pipeline** to process healthcare and socioeconomic datasets.
- Analyze patterns in **emergency room visits across different income brackets**.
- Explore correlations between **income levels, insurance status, and ER visit frequency**.
- Develop a **data-driven output**, such as a dashboard, report, or automated alert system.

## **Project Deliverables**
1. **GitHub Repository** - Contains the full project code, documentation, and pipeline scripts.
2. **Design Document** - Outlines system architecture, data sources, ETL processes, and findings.
3. **Demo Video (10-15 min)** - A technical walkthrough of the pipeline, methodology, and key insights.

## **Pipeline Overview**
- **Extract**: Collects healthcare and socioeconomic data from public sources.
- **Transform**: Cleans, merges, and structures data for analysis.
- **Load**: Stores processed data in a relational database (MySQL) for querying.
- **Output**: Generates insights via dashboards, reports, or email alerts.

## **Technical Requirements**
- **Programming Languages**: Python, SQL
- **Tools & Libraries**: Pandas, SQLAlchemy, MySQL, Matplotlib/Seaborn (for visualization)
- **Database**: MySQL (for structured data storage)
- **Version Control**: GitHub (for collaboration and version tracking)
- **Data Processing Workflow**: Jupyter Notebooks or a Python script for automation

## **Project Team**
- **Team Members**: Mauricio Espinoza Acevedo and Jordan Torres
- **Course**: MS-ADS 507 - University of San Diego
- **Professor**: Dillon Orr

## **How to Run the Pipeline**
1. **Clone the repository**:  
   ```bash
   git clone [https://github.com/TheVille415/ADS-507-Final]
   cd [Project Directory]
   ```
2. **Install dependencies**:  
   ```bash
   pip install -r requirements.txt
   ```
3. **Run the ETL pipeline**:  
   ```bash
   python etl_pipeline.py
   ```
4. **Query the database**:  
   - Use MySQL to analyze stored data.
5. **Generate Visualizations** (Optional):  
   ```bash
   python visualization.py
   ```

## **Future Enhancements**
- Automate pipeline using **Airflow**.
- Implement **real-time data ingestion**.
- Enhance data visualization with **Tableau or Streamlit**.
- Explore machine learning models for predictive analysis.

## **Acknowledgments**
This project is part of the **MS-ADS curriculum at the University of San Diego** and follows best practices in data engineering and analytics. Special thanks to **Professor Dillon Orr** for guidance and feedback.

---

For any questions or collaboration requests, please contact **[Your Contact Information]**.

