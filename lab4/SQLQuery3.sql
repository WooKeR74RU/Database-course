SELECT FirstPerson.SalesPersonID, SecondPerson.SalesPersonID
FROM Sales.SalesPerson AS FirstPerson
JOIN Sales.SalesPerson AS SecondPerson ON SecondPerson.CommissionPct = FirstPerson.CommissionPct AND FirstPerson.SalesPersonID < SecondPerson.SalesPersonID
