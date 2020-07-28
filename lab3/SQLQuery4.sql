SELECT Contact.FirstName, Contact.LastName, Employee.Title
FROM
HumanResources.Employee
INNER JOIN Person.Contact ON Employee.ContactID = Contact.ContactID
INNER JOIN Purchasing.VendorContact ON Contact.ContactID = VendorContact.ContactID
