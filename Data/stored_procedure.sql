DELIMITER $$

CREATE PROCEDURE GetSalesByCity(IN city_name VARCHAR(50))
BEGIN
    SELECT c.CustomerName, c.City, SUM(od.Sales) AS TotalSales
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    WHERE c.City = city_name
    GROUP BY c.CustomerName, c.City;
END$$

DELIMITER ;