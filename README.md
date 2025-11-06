# Online-Retail-Data-Analysis
Full SQL analysis of the UCI Online Retail dataset using PostgreSQL — includes data cleaning, exploratory analysis, and actionable business recommendations for marketing, inventory, and customer retention.

# 🛒 Online Retail SQL Analysis (PostgreSQL Project)

## Overview
This project analyzes the UCI Online Retail dataset (~540K e-commerce transactions from 2010–2011) using PostgreSQL.  
It demonstrates the full data analysis workflow: **data cleaning**, **exploratory data analysis**, and **business recommendations** based purely on SQL.

## Key Insights
- 💰 Total sales: £8.7M from ~4,300 customers  
- 📈 Revenue spikes 2.5× during November–December (holiday season)  
- 🛍️ Top 10 products generate ~40% of all revenue  
- 🔁 32% of customers make repeat purchases  
- 📦 9% of total revenue comes from returns (mostly a few products)  
- 🌍 85% of sales are from the UK market

## Business Recommendations
1. **Prepare for Q4 early:** Increase inventory for top-selling items before the holiday season.  
2. **Reduce return rates:** Improve product descriptions and quality checks on high-return SKUs.  
3. **Boost retention:** Introduce loyalty or reactivation campaigns for recent customers.  
4. **Diversify markets:** Explore expansion into EU countries to reduce reliance on UK sales.  

## Tools Used
- PostgreSQL (SQL queries & analysis)  
- Excel / Power BI (for visuals)  
- GitHub (for documentation)

## Dataset
The dataset used is the **[UCI Online Retail dataset](https://archive.ics.uci.edu/ml/datasets/online+retail)**,  
which contains over 540,000 transactions from a UK-based online retailer between **December 2010 and December 2011**.

- Source: UCI Machine Learning Repository  
- Format: Excel file (`Online Retail.xlsx`)  
- Key columns: InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

## Project Files
| File | Description |
|------|--------------|
| `01_data_cleaning.sql` | SQL scripts for cleaning raw data |
| `02,3-EDA and Recommendation for system enhancement.sql` | Exploratory analysis queries |
| `readme.md` | Summary report (this file) |
