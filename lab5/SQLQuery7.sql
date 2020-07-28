SELECT Address.City
FROM Person.Address
JOIN Purchasing.VendorAddress ON VendorAddress.AddressID = Address.AddressID
WHERE VendorAddress.VendorID IN
	(SELECT Vendor.VendorID
	FROM Purchasing.Vendor
	WHERE Vendor.CreditRating = 5)
