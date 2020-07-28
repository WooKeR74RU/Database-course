SELECT Customer.CustomerID
FROM Sales.Customer
WHERE
	(SELECT AVG(SalesOrderHeader.SubTotal)
	FROM Sales.SalesOrderHeader
	WHERE SalesOrderHeader.CustomerID = Customer.CustomerID)
> ANY
	(SELECT SalesOrderHeader.SubTotal
	FROM Sales.SalesOrderHeader
	WHERE SalesOrderHeader.CustomerID = Customer.CustomerID AND SalesOrderHeader.OrderDate = '2004-07-27')
