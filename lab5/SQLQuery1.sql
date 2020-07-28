SELECT Vendor.VendorID
FROM Purchasing.Vendor
WHERE Vendor.VendorID IN
	(SELECT ProductVendor.VendorID
	FROM Purchasing.ProductVendor
	JOIN Production.Product ON Product.ProductID = ProductVendor.ProductID AND Product.ProductLine = 'M')
ORDER BY Vendor.VendorID
