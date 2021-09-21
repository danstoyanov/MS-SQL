CREATE OR ALTER PROC usp_GetEmployeesFromTown (@TownName VARCHAR(30))
AS
	SELECT FirstName, LastName
		FROM Employees empl
		LEFT JOIN Addresses ad ON ad.AddressID = empl.AddressID
		LEFT JOIN Towns town ON ad.TownID = town.TownID
		WHERE town.[Name] = @TownName
GO

EXEC usp_GetEmployeesFromTown 'Sofia';
EXEC usp_GetEmployeesFromTown 'Monroe';
EXEC usp_GetEmployeesFromTown '';