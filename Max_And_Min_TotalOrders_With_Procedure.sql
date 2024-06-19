USE Northwind
GO
CREATE OR ALTER PROC MaxAndMinOrderDetails
AS
BEGIN
	SET NOCOUNT ON
		CREATE TABLE #TotalOrders
		(
			TotalOrder DECIMAL(18,2)
		);

		DECLARE @i INT = 10248;
		WHILE @i <= 11077
		BEGIN 
			INSERT INTO #TotalOrders (TotalOrder)
			SELECT SUM(O.UnitPrice * O.Quantity) AS TotalOrder 
			FROM [Order Details] O
			WHERE O.OrderID = @i;
				SET @i +=1;
		END
	SET NOCOUNT OFF
	SELECT
	MAX(TotalOrder) AS MaxTotalOrders,
	MIN(TotalOrder) AS MinTotalOrders
	FROM #TotalOrders

	DROP TABLE #TotalOrders

END
GO
EXECUTE MaxAndMinOrderDetails








