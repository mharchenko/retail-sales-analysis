Retail Sales Analysis 2023
Project Overview
Comprehensive analysis of retail sales data for a retail network. The project includes SQL analysis in BigQuery, interactive Tableau dashboard, and an analytical report.
Dataset

10,000 sales records
4 products (Product A, B, C, D) across 2 categories
~1,500 unique customers
Period: January – December 2023
Total Revenue: $1,736,560

SQL Analysis (BigQuery)
#QueryKey Finding1Sales by category by monthCategory 1 is stable ($62K–$73K/mo), Category 2 is volatile ($67K–$94K/mo)2Top 10 customers by spendRobert Fox leads with $4,4703Units sold per productProduct B (26,346) and Product A (26,265) are top sellers4Average price by categoryCategory 1: $15.00, Category 2: $35.025Popular days of weekWednesday (11,790) and Friday (11,668) lead
📄 View SQL Queries
Tableau Dashboard
Interactive dashboard with 6 visualizations:

Sales by Category by Month (line chart)
Top 10 Customers (bar chart)
Units Sold by Product (treemap)
Average Price by Category (KPI cards)
Sales by Day of Week (bar chart)
Monthly Sales Detail (table)

🔗 View Dashboard on Tableau Public
Key Insights

Category 2 generates 55% of total revenue despite fewer units sold, indicating higher margins
Products A & B (Category 1) account for 66% of all units sold due to lower pricing
Sales are relatively evenly distributed across weekdays (~8.7% variance)
Wednesday & Friday show highest sales activity
Category 2 shows significant monthly fluctuations — requires further investigation

Tech Stack

SQL (Google BigQuery)
Tableau Public (Dashboard & Visualization)
Data Analysis (Trend analysis, Customer segmentation)

Files

sql_queries.sql — All 5 SQL queries for BigQuery
Sales_Analysis_Report.pdf — Analytical report with findings
Dashboard.pdf — Exported Tableau dashboard
