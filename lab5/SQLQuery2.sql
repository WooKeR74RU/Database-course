SELECT Product.Name
FROM Production.Product
WHERE Product.ProductID IN
	(SELECT ProductVendor.ProductID
	FROM Purchasing.ProductVendor
	WHERE ProductVendor.VendorID = 31)
ORDER BY Product.Name
