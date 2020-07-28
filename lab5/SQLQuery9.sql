SELECT Vendor.VendorID
FROM Purchasing.Vendor
WHERE 1 <
	(SELECT COUNT(*)
	FROM Purchasing.ProductVendor
	JOIN Production.Product ON Product.ProductID = ProductVendor.ProductID AND Product.ProductLine = 'R'
	WHERE ProductVendor.VendorID = Vendor.VendorID)
