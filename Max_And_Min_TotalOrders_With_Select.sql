SELECT TOP 1 od.OrderID , SUM(od.UnitPrice * od.Quantity) AS TotalMax
FROM [Order Details] od
WHERE od.OrderID IN (SELECT od1.OrderID FROM [Order Details] od1)
GROUP BY od.OrderID 
ORDER BY TotalMax DESC
GO
SELECT TOP 1 od.OrderID , SUM(od.UnitPrice * od.Quantity) AS TotalMin
FROM [Order Details] od
WHERE od.OrderID IN (SELECT od1.OrderID FROM [Order Details] od1)
GROUP BY od.OrderID 
ORDER BY TotalMin ASC