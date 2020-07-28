SELECT OuterCustomer.CustomerID
FROM Sales.Customer AS OuterCustomer
WHERE OuterCustomer.CustomerID = ANY
	(SELECT InnerCustomer.CustomerID
	FROM Sales.Customer AS InnerCustomer
	JOIN Sales.CustomerAddress AS FirstCustomerAddress ON FirstCustomerAddress.CustomerID = InnerCustomer.CustomerID
	JOIN Sales.CustomerAddress AS SecondCustomerAddress ON SecondCustomerAddress.CustomerID = InnerCustomer.CustomerID AND FirstCustomerAddress.AddressID <> SecondCustomerAddress.AddressID
	JOIN Person.AddressType AS FirstAddressType ON FirstAddressType.AddressTypeID = FirstCustomerAddress.AddressTypeID
	JOIN Person.AddressType AS SecondAddressType ON SecondAddressType.AddressTypeID = SecondCustomerAddress.AddressTypeID
	JOIN Person.Address AS FirstAddress ON FirstAddress.AddressID = FirstCustomerAddress.AddressID
	JOIN Person.Address AS SecondAddress ON SecondAddress.AddressID = SecondCustomerAddress.AddressID
	WHERE FirstAddressType.Name = 'Billing' AND SecondAddressType.Name = 'Shipping' AND FirstAddress.City <> SecondAddress.City)
