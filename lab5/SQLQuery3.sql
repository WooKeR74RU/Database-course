SELECT Vendor.CreditRating, COUNT(*) AS CountInNewYork
FROM Purchasing.Vendor
WHERE Vendor.VendorID IN
	(SELECT VendorAddress.VendorID
	FROM Purchasing.VendorAddress
	JOIN Person.Address ON Address.AddressID = VendorAddress.AddressID AND Address.City = 'New York')
GROUP BY Vendor.CreditRating
