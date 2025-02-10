# Global Store Sales analysis Dashboard Project
This project contains Power BI reports and datasets related to sales analysis.

 ## 📌 Project Overview
The Global Sales Analysis dashboard provides insights into sales performance across different regions, products, and customer segments. This report helps businesses track key sales metrics, identify trends, and optimize decision-making.

## 🚀 Key Features

 #### 📈 Revenue Analysis –
 Track total sales, revenue growth, and profitability.
#### 🌍 Regional Performance –
Compare sales across different countries and regions.
#### 📦 Product Insights –
Identify best-selling products and underperforming items.
#### 🏷️ Customer Segmentation –
Analyze customer buying behavior and demographics.
#### 📊 Interactive Visuals –
Dynamic filters and slicers for in-depth analysis.

 ## 🔍 Steps Followed

#### 1️⃣ Environment Setup

Installed MySQL for data storage and transformation.

Set up Power BI Desktop for visualization.

Configured Power Query for data cleaning and transformation.

#### 2️⃣ Data Sourcing & Importing

Sourced the sales dataset from Kaggle.

Imported the dataset into MySQL for data cleaning and transformation.

#### 3️⃣ Data Cleaning & Preparation

Removed unwanted strings and unnecessary data.

Standardized data types to ensure consistency.

Eliminated duplicate records to maintain data accuracy.

#### 4️⃣ Power BI Connection & Data Transformation

Connected Power BI to the MySQL database.

Used Power Query to:

Remove unnecessary columns.

Change data types as needed.

Create a Date Master Table for better time-based analysis.

Created a table with distinct Order IDs to handle multiple product entries per order.

#### 5️⃣ Data Modeling

Connected and structured the following 3 tables:

Orders (Main sales data)

Returns (Returned product details)

People (Distributors and sales representatives)

Established appropriate relationships among tables.

#### 6️⃣ DAX Implementation

Created various DAX (Data Analysis Expressions) measures, which played a crucial role in:

Sales and revenue calculations

Customer segmentation

Product performance metrics

Distributor insights

#### 7️⃣ Dashboard Creation

Designed 3 interactive dashboards:

Sales Dashboard 📊 - Tracks revenue, sales trends, and regional performance.

Customer Insights Dashboard 👥 - Analyzes customer buying behavior and retention trends.

Product & Distributors Dashboard 📦 - Evaluates product performance and distributor effectiveness.
