SELECT SpecialOfferID, MIN(UnitPrice) FROM Sales.SalesOrderDetail WHERE SpecialOfferID NOT IN (1, 8) GROUP BY SpecialOfferID ORDER BY SpecialOfferID
