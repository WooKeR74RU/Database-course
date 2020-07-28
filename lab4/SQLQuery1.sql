SELECT Customer.CustomerID, FirstAddress.AddressLine1, SecondAddress.AddressLine1
FROM
Sales.Customer
JOIN Sales.CustomerAddress AS FirstCustomerAddress ON FirstCustomerAddress.CustomerID = Customer.CustomerID
JOIN Sales.CustomerAddress AS SecondCustomerAddress ON SecondCustomerAddress.CustomerID = Customer.CustomerID AND FirstCustomerAddress.AddressID <> SecondCustomerAddress.AddressID
JOIN Person.AddressType AS FirstAddressType ON FirstAddressType.AddressTypeID = FirstCustomerAddress.AddressTypeID AND FirstAddressType.Name = 'Billing'
JOIN Person.AddressType AS SecondAddressType ON SecondAddressType.AddressTypeID = SecondCustomerAddress.AddressTypeID AND SecondAddressType.Name = 'Shipping'
JOIN Person.Address AS FirstAddress ON FirstAddress.AddressID = FirstCustomerAddress.AddressID
JOIN Person.Address AS SecondAddress ON SecondAddress.AddressID = FirstCustomerAddress.AddressID
WHERE FirstAddress.AddressLine1 <> SecondAddress.AddressLine1
