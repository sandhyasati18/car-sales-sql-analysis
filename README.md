# 🚗 Car Sales SQL Analysis

## 📌 Project Overview

This project analyzes a **car sales dataset using MySQL** to understand sales performance, customer purchasing patterns, dealership performance, geographic trends, and revenue.

The analysis combines data from multiple relational tables using SQL joins and applies aggregation, CTEs, window functions, filtering, and ranking techniques to answer practical business questions.

The objective of this project is to demonstrate how SQL can be used to transform relational sales data into meaningful and actionable business insights.

---

## 🎯 Business Objectives

The analysis focuses on answering questions such as:

* Which dealerships generate the highest sales?
* Which cities contribute the most to overall car sales?
* Which customer age group purchases the most cars?
* What is the distribution of male and female customers?
* Which car models perform best?
* Which model is the second highest-selling model?
* How does revenue change month by month?
* Which month generated the highest revenue?

---

## 🗂️ Dataset Structure

The project uses multiple related tables:

| Table        | Description                         |
| ------------ | ----------------------------------- |
| `Sales`      | Contains vehicle sales transactions |
| `Customers`  | Customer demographic information    |
| `Models`     | Car model details                   |
| `Dealership` | Dealership information              |
| `Geography`  | City and regional information       |
| `Leads`      | Customer lead information           |
| `Test_Drive` | Test-drive related records          |

These tables are combined using SQL joins to create a comprehensive view of sales activity.

---

## 🛠️ Tools & Technologies

* **MySQL**
* **MySQL Workbench**
* **SQL**
* **GitHub**

---

## 💻 SQL Concepts Used

The project demonstrates practical application of:

* `INNER JOIN` and `LEFT JOIN`
* `GROUP BY`
* `HAVING`
* Aggregate functions such as `SUM()`, `COUNT()` and `AVG()`
* Common Table Expressions (`CTE`)
* Window functions
* `DENSE_RANK()`
* `CASE WHEN`
* `ORDER BY`
* Date functions
* Filtering using `WHERE`
* Multi-table data analysis

---

## 🔍 Business Questions Analyzed

### 1. Dealership Performance

Calculated total vehicle sales across dealerships to identify the strongest-performing dealership.

### 2. Customer Age Analysis

Grouped customers into age categories to determine which age group purchases the most vehicles.

### 3. Geographic Sales Analysis

Analyzed sales by location and identified the **Top 3 cities based on car sales**.

### 4. Car Model Performance

Compared sales across different vehicle models and used `DENSE_RANK()` to identify the **second highest-selling car model**.

### 5. Customer Gender Distribution

Analyzed the number of male and female customers purchasing vehicles.

### 6. Monthly Revenue Analysis

Aggregated revenue by month to understand sales trends and determine the month generating the highest revenue.

---

## 📊 Key Insights

The SQL analysis produced several useful business insights:

* **Delhi, Mumbai, and Kolkata** emerged as the Top 3 cities based on sales.
* Customers in the **41–60 age group** represented the strongest purchasing segment.
* The **Chennai dealership** recorded the highest sales performance.
* Window functions such as `DENSE_RANK()` helped identify the second highest-selling vehicle model without losing ties.
* Monthly revenue analysis helped identify changes in sales performance over time.
* Customer demographic analysis provided insight into the age and gender profile of vehicle buyers.

---

## 🧠 SQL Skills Demonstrated

Through this project, I demonstrated the ability to:

* Work with a **relational database containing multiple tables**
* Join datasets using primary and foreign-key relationships
* Convert business requirements into SQL queries
* Aggregate and summarize transactional data
* Perform customer and sales segmentation
* Rank products using SQL window functions
* Analyze monthly revenue trends
* Extract business insights from raw sales data

---

## 📁 Repository Structure

```text
car-sales-sql-analysis/
│
├── Car_Sales_Analysis.sql
├── Sales.csv
├── customers.csv
├── Models.csv
├── Dealership.csv
├── Geography.csv
├── Leads.csv
├── Test_drive.csv
├── Screenshots/
│   └── SQL query result screenshots
│
└── README.md
```

---

## 📈 Business Value

This project demonstrates how SQL can be used to analyze automotive sales data and support business decisions related to:

* Dealership performance
* Customer segmentation
* Regional sales strategy
* Vehicle model performance
* Revenue monitoring
* Sales trend analysis

The insights generated from the analysis can help businesses identify high-performing markets, understand their customer base, monitor dealership performance, and make data-driven sales decisions.

---


This project is part of my Data Analytics portfolio and demonstrates my ability to use SQL for relational data analysis and business insight generation.
