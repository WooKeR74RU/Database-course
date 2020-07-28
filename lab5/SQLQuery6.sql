SELECT COUNT(*)
FROM Sales.SalesOrderDetail AS OuterOrder
WHERE OuterOrder.OrderQty >
	(SELECT AVG(InnerOrder.OrderQty)
	FROM Sales.SalesOrderDetail AS InnerOrder
	WHERE InnerOrder.SpecialOfferID = 1)
