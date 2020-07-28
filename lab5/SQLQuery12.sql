SELECT Vendor.VendorID
FROM Purchasing.Vendor
WHERE Vendor.VendorID IN
	(SELECT ProductVendor.VendorID
	FROM Purchasing.ProductVendor
	JOIN Production.Product ON Product.ProductID = ProductVendor.ProductID
	WHERE Product.ProductLine = 'M')
AND Vendor.VendorID NOT IN
	(SELECT ProductVendor.VendorID
	FROM Purchasing.ProductVendor
	JOIN Production.Product ON Product.ProductID = ProductVendor.ProductID
	WHERE Product.ProductLine = 'R')
