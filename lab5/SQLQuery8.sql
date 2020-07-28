SELECT OuterAddress.City
FROM Person.Address AS OuterAddress
WHERE 1 =
	(SELECT COUNT(*)
	FROM Person.Address AS InnerAddress
	JOIN Purchasing.VendorAddress ON VendorAddress.AddressID = InnerAddress.AddressID
	WHERE InnerAddress.City = OuterAddress.City)
