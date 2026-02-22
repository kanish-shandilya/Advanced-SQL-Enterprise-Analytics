Advanced SQL-Based Enterprise Revenue & Customer Analytics
📌 Project Overview

This project simulates an enterprise retail analytics environment where SQL is used as the primary analytical tool to generate business insights related to revenue performance, customer segmentation, retention, and profitability.

The objective is to demonstrate advanced SQL proficiency while applying real-world business intelligence concepts commonly used in analytics consulting firms.

## Dataset Information

The original Online Retail dataset (~83MB) is excluded due to GitHub size limitations.

A representative sample dataset (10,000 rows) is included for reference.

🎯 Business Context

An international retail organization seeks to:

Monitor revenue performance

Analyze customer purchasing behavior

Identify high-value customers

Evaluate refund impact

Measure retention trends

Extract actionable insights for business decision-making

The dataset consists of multi-year transactional retail data, representing large-scale enterprise operations.

🗂 Dataset Structure

The dataset contains the following columns:

invoice_id

stock_code

product_description

quantity

invoice_date

unit_price

customer_id

country

Revenue is derived within SQL as:

revenue = quantity * unit_price

🏗 Project Structure
Advanced-SQL-Enterprise-Analytics/
│
├── data/
│   └── online_retail_cleaned.csv
│
├── sql/
│   ├── 01_schema_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_kpi_analysis.sql
│   ├── 04_window_functions.sql
│   ├── 05_customer_segmentation.sql
│   ├── 06_cohort_retention.sql
│   └── 07_advanced_business_queries.sql
│
└── README.md

🔎 Analytical Modules
1️⃣ Schema Setup & Revenue Engineering

Table creation

Derived revenue column

Data modeling awareness

Demonstrates:

Schema design understanding

Business metric engineering

2️⃣ Data Validation & Quality Checks

Missing customer identification

Negative quantity detection (returns)

Negative price detection

Duplicate invoice detection

Demonstrates:

Data auditing skills

Enterprise data validation logic

3️⃣ Core Business KPIs

Total revenue (excluding returns)

Total orders

Average order value

Monthly revenue trend

Demonstrates:

Aggregation

Date functions

KPI modeling

4️⃣ Advanced Window Functions

Customer revenue ranking

Running cumulative revenue

Demonstrates:

RANK()

SUM() OVER()

Window partitioning logic

Interview-level SQL capability

5️⃣ Customer Segmentation

Frequency-based segmentation

Revenue-based customer classification

Demonstrates:

CTE (Common Table Expressions)

Business rule implementation

Behavioral segmentation

6️⃣ Cohort Retention Analysis

First purchase month identification

Monthly activity tracking

Customer retention measurement

Demonstrates:

Multi-level CTE logic

Retention modeling

Time-based analytics

7️⃣ Advanced Business Insights

Top revenue-generating products

Revenue by country

Refund rate calculation

Demonstrates:

Business impact analysis

Operational risk insight

Performance breakdown

🧠 Key SQL Concepts Demonstrated

GROUP BY & HAVING

Subqueries

CTE (WITH clause)

Window functions (RANK(), SUM() OVER())

Date truncation (DATE_TRUNC)

Aggregation logic

Conditional logic (CASE WHEN)

Revenue modeling

Cohort analysis

📊 Business Insights Generated

This project enables stakeholders to:

Identify high-performing products

Detect high-value customers

Measure refund impact

Monitor monthly revenue growth

Analyze customer retention patterns

Understand regional revenue contribution

💼 Relevance for Analytics Roles

This project is aligned with responsibilities typically required in:

Data Analyst roles

SQL Analyst roles

Business Intelligence roles

Consulting analytics firms

Operations analytics positions

It demonstrates both technical SQL depth and business problem-solving ability.

⚙ Tools Used

PostgreSQL

pgAdmin Query Tool

SQL (Advanced queries)

Retail transactional dataset

🚀 Future Enhancements

Query performance optimization

Indexing strategies

Profit margin analysis

Churn probability modeling

Dashboard integration (Power BI)

Final Note


This project focuses on advanced SQL analytics within a business intelligence framework, demonstrating the ability to transform raw transactional data into strategic decision-making insights.
