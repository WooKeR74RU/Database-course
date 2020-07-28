SELECT FirstCustomer.CustomerID, SecondCustomer.CustomerID
FROM Sales.Customer AS FirstCustomer
JOIN Sales.Customer AS SecondCustomer ON FirstCustomer.CustomerID < SecondCustomer.CustomerID
JOIN Sales.CustomerAddress AS FirstCustomerAddress ON FirstCustomerAddress.CustomerID = FirstCustomer.CustomerID
JOIN Sales.CustomerAddress AS SecondCustomerAddress ON SecondCustomerAddress.CustomerID = SecondCustomer.CustomerID
JOIN Person.Address AS FirstAddress ON FirstAddress.AddressID = FirstCustomerAddress.AddressID
JOIN Person.Address AS SecondAddress ON SecondAddress.AddressID = SecondCustomerAddress.AddressID AND FirstAddress.City = SecondAddress.City
