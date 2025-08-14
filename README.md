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

- `datamining/`  
  Scripts for preprocessing, clustering, and association rule mining on the Iris dataset.  
  - `preprocessing_iris.py` – Data cleaning and transformation  
  - `clustering_iris.py` – K-means clustering implementation  
  - `mining_iris_basket.py` – Apriori analysis for basket mining  
  - `visualizations/` – Plots and charts from mining results

- `outputs/`  
  Final outputs and documentation.  
  - `screenshots/` – Screenshots of execution and results  
  

## 🧪 Key Objectives

- Design a star schema for retail data
- Build an ETL pipeline using Python and SQLite
- Execute OLAP queries for business insights
- Apply clustering and Apriori analysis on Iris dataset
- Document findings and visualize results

## Task 1: Warehouse Design
 - Designed a star schema with one fact table (SalesFact) and three dimension tables (CustomerDim, ProductDim, TimeDim).
 - Diagram included: star_schema_diagram.png
 - SQL schema: warehouse_schema.sql
 - Chose star schema for simplicity and query performance over snowflake.

## Task 2 ETL Pipeline
The ETL process is implemented in `etl/etl_retail.py` and follows three main steps:

1. **Extract**  
   Loads synthetic retail data from `synthetic_data.csv` using pandas.

2. **Transform**  
   - Converts `InvoiceDate` to datetime format  
   - Calculates `TotalSales = Quantity * UnitPrice`  
   - Filters out invalid rows (e.g., negative quantities or prices)  
   - Filters for transactions within the last year

3. **Load**  
   - Creates a SQLite database `retail_dw.db`  
   - Loads cleaned data into the `SalesFact` table  
   - Optionally creates dimension summaries (e.g., `CustomerDim`)

The synthetic data was generated using the `Faker` library and mimics the structure of the UCI Online Retail dataset. The generation script is included in the ETL folder.

## Task 3: OLAP Queries
1. Three OLAP queries implemented: 
- Roll-up: Sales by country and quarter
- Drill-down: Monthly sales for UK
- Slice: Sales for electronics category
2. SQL: olap_queries.sql
- Visualization: Bar chart of sales by country
- Analysis report: outputs/reports/olap_analysis.md

## Section 2: Data mining
# Task 1 : Preprocessing the Iris Dataset
This task involved preparing the Iris dataset for clustering and association rule mining. The following steps were performed:

1. Loading the Dataset The Iris dataset was loaded using scikit-learn and converted into a pandas DataFrame.

2. Preprocessing
Checked for missing values using df.isnull().sum()
Applied Min-Max scaling to normalize feature values
One-hot encoded the class label for compatibility with certain models

3. Exploratory Analysis
Computed summary statistics using df.describe()
Generated a pairplot to visualize feature relationships
Created a correlation heatmap to assess feature dependencies
Plotted boxplots for each feature to identify potential outliers

4. Train/Test Split Function 
A reusable function was written to split the cleaned dataset into training and testing sets using an 80/20 ratio.

All visualizations were saved in the datamining/visualizations/ folder, and the cleaned dataset was exported to iris_cleaned.csv.

## Task 2: Clustering
- Applied K-Means with k=3, compared with k=2 and k=4.
- Elbow curve plotted.
- PCA scatter plot visualized clusters.
- Analysis included in outputs/reports/clustering_analysis.md
- Script: clustering_iris.py

## Task 3A: Classification
- Trained Decision Tree and KNN classifiers.
- Evaluated with accuracy, precision, recall, F1-score.
- Tree visualized.
- Comparison included in outputs/reports/classification_analysis.md
- Script: mining_iris_basket.py

## Task 3B: Association Rule Mining
- Generated synthetic basket data.
- Applied Apriori algorithm with min_support=0.2, min_confidence=0.5.
- Top 5 rules sorted by lift.
- Rule analysis included in outputs/reports/association_analysis.md
- Script: mining_iris_basket.py

## Self-Assessment
I successfully completed all tasks as per the exam instructions. Each script is modular, well-commented, and error-free. Visualizations and reports are included to support analysis. I opted for synthetic data where allowed, ensuring reproducibility and realism. The GitHub repository is cleanly structured with incremental commits and clear documentation.

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

