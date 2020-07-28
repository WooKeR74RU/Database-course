SELECT Contact.LastName, Contact.FirstName, Contact.EmailAddress
FROM
Purchasing.Vendor
INNER JOIN Purchasing.VendorContact ON Vendor.VendorID = VendorContact.VendorID
INNER JOIN Person.Contact ON VendorContact.ContactID = Contact.ContactID
ORDER BY Vendor.Name
