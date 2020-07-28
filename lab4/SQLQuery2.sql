SELECT Customer.CustomerID, FirstCard.CardNumber, SecondCard.CardNumber
FROM Sales.Customer
JOIN Sales.Individual ON Individual.CustomerID = Customer.CustomerID
JOIN Person.Contact ON Contact.ContactID = Individual.ContactID
JOIN Sales.ContactCreditCard ON ContactCreditCard.ContactID = Contact.ContactID
JOIN Sales.CreditCard AS FirstCard ON FirstCard.CreditCardID = ContactCreditCard.CreditCardID
JOIN Sales.CreditCard AS SecondCard ON SecondCard.CreditCardID = ContactCreditCard.CreditCardID AND SecondCard.CreditCardID <> FirstCard.CreditCardID
