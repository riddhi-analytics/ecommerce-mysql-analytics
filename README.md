# ecommerce-mysql-analytics
# 🛒 E-Commerce Sales & Order Analytics (MySQL)

## 📌 Project Overview

This project simulates a real-world e-commerce database used to manage customers, products, orders, and sales performance.
It demonstrates strong SQL fundamentals including database design, normalization, joins, aggregations, triggers, and stored procedures.

The project is designed for **Data Analyst / SQL Developer roles** and is suitable for portfolio and resume showcase.

---

## 🎯 Objectives

* Design a normalized relational database for an e-commerce business
* Track customers, products, and orders
* Analyze sales and profit performance
* Implement automation using triggers
* Create reusable stored procedures
* Generate business insights using SQL queries

---

## 🗂️ Database Schema

### Main Tables

* **Customers** – customer information
* **Categories** – product categories
* **Products** – product catalog
* **Orders** – order header data
* **OrderDetails** – line-level sales data
* **OrderAudit** – tracks order status changes

### 🔗 Relationships

* One customer → many orders
* One order → many order details
* One category → many products
* Products linked to orders via OrderDetails

---

## 🛠️ Technologies Used

* MySQL
* SQL (DDL, DML, DQL)
* Joins & Aggregations
* Triggers
* Stored Procedures
* Views (optional for BI tools)

---

## 📥 Sample Business Questions Answered

This project helps answer real business questions such as:

* What are the top selling products?
* Which category generates the highest profit?
* What is the monthly sales trend?
* Which customers contribute the most revenue?
* How do discounts impact profitability?

---

## ⚙️ Key Features

### ✅ Normalized Database Design

* Eliminates redundancy
* Maintains data integrity
* Uses primary and foreign keys

### ✅ Trigger Implementation

* Automatically logs order status changes
* Demonstrates event-driven automation

### ✅ Stored Procedure

* Retrieves city-wise sales performance
* Shows parameterized query usage

### ✅ Business Insight Queries

* Top products by sales
* Monthly revenue trend
* Category profitability analysis

---

## 🚀 How to Run This Project

### Step 1: Clone Repository

```bash
git clone <your-repo-link>
```

### Step 2: Open MySQL

Create and select the database.

### Step 3: Run Files in Order

1. `schema.sql`
2. `sample_data.sql`
3. `analysis_queries.sql`

---

## 📊 Example Insights

**Top Products by Sales**

```sql
SELECT p.ProductName, SUM(od.Sales) AS TotalSales
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;
```

**Monthly Sales Trend**

```sql
SELECT DATE_FORMAT(o.OrderDate,'%Y-%m') AS Month,
       SUM(od.Sales) AS MonthlySales
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY Month
ORDER BY Month;
```

---

## 📈 Future Improvements

* Add window functions (RANK, ROW_NUMBER)
* Implement indexing for performance
* Connect to Power BI dashboard
* Add customer lifetime value analysis
* Build ETL pipeline using Power Query

---

## 🧾 Resume Description

**E-Commerce Sales Analytics (MySQL)**

* Designed normalized e-commerce database with multiple related tables
* Implemented trigger to audit order status changes
* Developed stored procedure for city-wise sales analysis
* Performed business analytics using complex joins and aggregations
* Prepared structured dataset for BI dashboard integration

---

## 👤 Author

**Riddhi Desai**

---

⭐ If you found this project helpful, consider giving it a star!
