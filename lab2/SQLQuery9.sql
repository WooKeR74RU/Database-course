SELECT Name, SUM(OrderQty) FROM Production.Product, Sales.SalesOrderDetail WHERE Production.Product.ProductID = Sales.SalesOrderDetail.ProductID GROUP BY Name ORDER BY SUM(OrderQty)
