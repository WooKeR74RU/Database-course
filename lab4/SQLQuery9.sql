SELECT FirstVendor.VendorID, SecondVendor.VendorID
FROM Purchasing.Vendor AS FirstVendor
JOIN Purchasing.Vendor AS SecondVendor ON FirstVendor.VendorID < SecondVendor.VendorID
JOIN Purchasing.VendorAddress AS FirstVendorAddress ON FirstVendorAddress.VendorID = FirstVendor.VendorID
JOIN Purchasing.VendorAddress AS SecondVendorAddress ON SecondVendorAddress.VendorID = SecondVendor.VendorID
JOIN Person.Address AS FirstAddress ON FirstAddress.AddressID = FirstVendorAddress.AddressID
JOIN Person.Address AS SecondAddress ON SecondAddress.AddressID = SecondVendorAddress.AddressID AND FirstAddress.AddressLine1 = SecondAddress.AddressLine1
