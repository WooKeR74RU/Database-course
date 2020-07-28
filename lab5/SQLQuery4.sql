SELECT SpecialOfferProduct.ProductID, SpecialOfferProduct.SpecialOfferID
FROM Sales.SpecialOfferProduct
WHERE SpecialOfferProduct.SpecialOfferID IN
	(SELECT SalesOrderDetail.SpecialOfferID
	FROM Sales.SalesOrderDetail
	JOIN Sales.SalesOrderHeader ON SalesOrderHeader.SalesOrderID = SalesOrderDetail.SalesOrderID AND SalesOrderHeader.OrderDate = '2004-07-27')
