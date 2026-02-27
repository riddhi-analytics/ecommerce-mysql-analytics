-- Top 5 Products by Sales 
SELECT p.ProductName, SUM(od.Sales) AS TotalSales
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC
LIMIT 5;

-- Monthly Sales Trend 
SELECT DATE_FORMAT(o.OrderDate,'%Y-%m') AS Month,
       SUM(od.Sales) AS MonthlySales
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY Month
ORDER BY Month;
-- Most Profitable Category 
SELECT c.CategoryName, SUM(od.Profit) AS TotalProfit
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName
ORDER BY TotalProfit DESC;