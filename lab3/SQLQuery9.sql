SELECT Product.Name, SUM(SalesOrderDetail.OrderQty)
FROM
Production.Product
INNER JOIN Sales.SalesOrderDetail ON Product.ProductID = SalesOrderDetail.ProductID
GROUP BY Product.Name
