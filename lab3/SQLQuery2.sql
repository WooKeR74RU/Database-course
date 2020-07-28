SELECT COUNT(*) FROM HumanResources.Employee INNER JOIN Person.Contact ON Employee.ContactID = Contact.ContactID WHERE Contact.EmailAddress IS NOT NULL
