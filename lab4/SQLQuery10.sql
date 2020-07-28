SELECT DISTINCT FirstEmployee.EmployeeID
FROM HumanResources.Employee AS FirstEmployee
JOIN HumanResources.Employee AS SecondEmployee ON SecondEmployee.ManagerID = FirstEmployee.EmployeeID AND SecondEmployee.Gender <> FirstEmployee.Gender
WHERE FirstEmployee.MaritalStatus = 'S' AND SecondEmployee.MaritalStatus = 'S'
