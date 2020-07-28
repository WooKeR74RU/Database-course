SELECT OuterEmployee.EmployeeID
FROM HumanResources.Employee AS OuterEmployee
WHERE OuterEmployee.SickLeaveHours <
	(SELECT AVG(InnerEmployee.SickLeaveHours)
	FROM HumanResources.Employee AS InnerEmployee
	WHERE InnerEmployee.Title = OuterEmployee.Title)
