SELECT Product.Name, Vendor.Name
FROM
Production.Product
LEFT OUTER JOIN Purchasing.ProductVendor ON ProductVendor.ProductID = Product.ProductID
LEFT OUTER JOIN Purchasing.Vendor ON Vendor.VendorID = ProductVendor.VendorID
WHERE Product.ProductLine = 'T'
