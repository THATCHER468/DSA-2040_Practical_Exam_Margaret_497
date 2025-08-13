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
  - `debug_notes.md` – Notes on troubleshooting and fixes

## 🧪 Key Objectives

- Design a star schema for retail data
- Build an ETL pipeline using Python and SQLite
- Execute OLAP queries for business insights
- Apply clustering and Apriori analysis on Iris dataset
- Document findings and visualize results

## Task 2 
## 🔄 ETL Pipeline

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