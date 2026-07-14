USE online_retail;
SHOW TABLES;
SELECT COUNT(*) FROM online_retail;
SELECT * FROM online_retail LIMIT 5;
SELECT InvoiceDate, STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s') AS parsed_date
FROM online_retail
LIMIT 5;
SELECT
    YEAR(STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s')) AS sales_year,
    MONTH(STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s')) AS sales_month,
    SUM(Quantity * UnitPrice) AS monthly_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_retail
GROUP BY sales_year, sales_month
ORDER BY sales_year, sales_month;
SELECT
    YEAR(STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s')) AS sales_year,
    MONTH(STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s')) AS sales_month,
    SUM(Quantity * UnitPrice) AS monthly_revenue
FROM online_retail
GROUP BY sales_year, sales_month
ORDER BY monthly_revenue DESC
LIMIT 3;