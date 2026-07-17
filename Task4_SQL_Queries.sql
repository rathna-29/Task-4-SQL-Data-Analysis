SELECT * FROM sales;

SELECT *
FROM sales
WHERE Region = 'West';

SELECT *
FROM sales
ORDER BY Sales DESC;

SELECT Category,
SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Category;

SELECT AVG(Profit) AS Average_Profit
FROM sales;

SELECT *
FROM sales
WHERE Sales >
(
SELECT AVG(Sales)
FROM sales
);

CREATE VIEW sales_summary AS
SELECT Category,
SUM(Sales) AS TotalSales
FROM sales
GROUP BY Category;
SELECT * FROM sales_summary;