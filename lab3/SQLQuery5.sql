SELECT DISTINCT Contact.LastName, Contact.FirstName, Contact.Phone
FROM
Production.Product
INNER JOIN Purchasing.ProductVendor ON ProductVendor.ProductID = Product.ProductID
INNER JOIN Purchasing.Vendor ON Vendor.VendorID = ProductVendor.VendorID
INNER JOIN Purchasing.VendorContact ON VendorContact.VendorID = Vendor.VendorID
INNER JOIN Person.Contact ON Contact.ContactID = VendorContact.ContactID
WHERE Product.ProductLine = 'M'
ORDER BY Contact.LastName, Contact.FirstName
