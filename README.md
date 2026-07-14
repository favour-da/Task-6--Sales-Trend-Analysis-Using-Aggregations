# Task-6--Sales-Trend-Analysis-Using-Aggregations
## Objective
Analyze monthly revenue and order volume using SQL aggregations.
## Dataset
UCI Online Retail dataset — orders table with InvoiceNo, InvoiceDate, Quantity, UnitPrice, StockCode, Country.
## Tools
MySQL Workbench
## What I did
- Imported the full Online Retail CSV into MySQL using LOAD DATA LOCAL INFILE
- Converted InvoiceDate (text) into proper DATE format using STR_TO_DATE
- - Grouped orders by year and month using GROUP BY
- Calculated monthly revenue with SUM(Quantity * UnitPrice)
- Calculated order volume with COUNT(DISTINCT InvoiceNo)
- Ranked months by revenue using RANK() OVER to identify top 3 months
- Ordered results chronologically with ORDER BY
## Files
- task6_sales_trend_analysis.sql — full SQL script
