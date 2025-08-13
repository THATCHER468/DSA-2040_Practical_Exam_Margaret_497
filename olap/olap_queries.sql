-- Roll-up: Total sales by country and month
SELECT Country, strftime('%Y-%m', InvoiceDate) AS Month, SUM(TotalSales) AS MonthlySales
FROM SalesFact
GROUP BY Country, Month;

-- Drill-down: Sales by product category in Germany
SELECT Category, SUM(TotalSales) AS CategorySales
FROM SalesFact
WHERE Country = 'Germany'
GROUP BY Category;

-- Slice: Sales for July 2025
SELECT * FROM SalesFact
WHERE strftime('%Y-%m', InvoiceDate) = '2025-07';
