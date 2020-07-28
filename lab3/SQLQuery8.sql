SELECT Product.Name
FROM
Production.Product
INNER JOIN Sales.SalesOrderDetail ON SalesOrderDetail.ProductID = Product.ProductID
INNER JOIN Sales.SalesOrderHeader ON SalesOrderHeader.SalesOrderID = SalesOrderDetail.SalesOrderID
WHERE SalesOrderHeader.OrderDate = '2004-02-01'
