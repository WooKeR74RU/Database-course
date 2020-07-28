SELECT Contact.FirstName, Contact.LastName, Contact.Phone
FROM
Sales.SalesOrderHeader
INNER JOIN Person.Contact ON Contact.ContactID = SalesOrderHeader.ContactID
WHERE SalesOrderHeader.Status = 1
