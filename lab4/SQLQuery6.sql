SELECT '1 - 3', COUNT(*)
FROM Sales.SalesOrderDetail
WHERE 1 <= SalesOrderDetail.OrderQty AND SalesOrderDetail.OrderQty <= 3

UNION

SELECT '4 - 6', COUNT(*)
FROM Sales.SalesOrderDetail
WHERE 4 <= SalesOrderDetail.OrderQty AND SalesOrderDetail.OrderQty <= 6
