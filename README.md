# DSA-2040 Practical Exam – Margaret

This repository contains the submission for the DSA-2040 practical exam, showcasing skills in ETL development, schema design, OLAP analysis, and data mining using Python and SQL.

## 📁 Project Structure

- `schema_design/`  
  Contains the star schema diagram and SQL definitions for the retail data warehouse.  
  - `star_schema.png` – Visual representation of the star schema  
  - `schema.sql` – SQL table creation scripts

- `etl/`  
  ETL pipeline and supporting data for building the retail data warehouse.  
  - `etl_retail.py` – Python script for ETL process  
  - `retail_dw.db` – SQLite database with transformed data  
  - `synthetic_data.csv` – Input data for ETL

- `olap_analysis/`  
  OLAP queries and visualizations for multidimensional analysis.  
  - `olap_queries.sql` – SQL queries for slicing, dicing, and aggregation  
  - `sales_by_country.png` – Visualization of sales distribution  
  - `analysis_report.md` – Summary of OLAP findings

- `data_mining/`  
  Scripts for preprocessing, clustering, and association rule mining on the Iris dataset.  
  - `preprocessing_iris.py` – Data cleaning and transformation  
  - `clustering_iris.py` – K-means clustering implementation  
  - `mining_iris_basket.py` – Apriori analysis for basket mining  
  - `visualizations/` – Plots and charts from mining results

- `outputs/`  
  Final outputs and documentation.  
  - `screenshots/` – Screenshots of execution and results  
  - `debug_notes.md` – Notes on troubleshooting and fixes

## 🧪 Key Objectives

- Design a star schema for retail data
- Build an ETL pipeline using Python and SQLite
- Execute OLAP queries for business insights
- Apply clustering and Apriori analysis on Iris dataset
- Document findings and visualize results

## 🚀 How to Run

1. Clone the repository:
git clone https://github.com/THATCHER468-DSA-2040_Practical_Exam_Margaret_497.git

2. Navigate to the project folder:
cd DSA-2040_Practical_Exam_Margaret_497

3. Run the ETL script:
python etl/etl_retail.py


## 📊 Tools & Libraries

- Python: Pandas, NumPy, Matplotlib, Scikit-learn
- SQL: SQLite for schema and OLAP queries
- GitHub: Version control and collaboration

## 👩‍💻 Author

**Margaret**  
Data Science student focused on applied mathematics, statistical modeling, and collaborative coding.  
Exploring hypothesis testing, stochastic processes,