SELECT Customer.CustomerID,
	(SELECT COUNT(*)
	FROM Sales.SalesOrderHeader
	WHERE SalesOrderHeader.CustomerID = Customer.CustomerID AND SalesOrderHeader.SubTotal > 15e4)
FROM Sales.Customer
