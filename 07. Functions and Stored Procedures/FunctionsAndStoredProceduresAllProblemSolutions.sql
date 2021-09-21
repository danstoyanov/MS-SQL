USE SoftUni

GO

-- problem 1
CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000 
AS
	SELECT FirstName, LastName 
		FROM Employees
		WHERE Salary > 35000
GO

EXEC usp_GetEmployeesSalaryAbove35000

-- problem 2

CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber  (@InputNumber DECIMAL(18,4))
AS
	SELECT FirstName, LastName 
		FROM Employees
		WHERE Salary >= @InputNumber
GO

EXEC usp_GetEmployeesSalaryAboveNumber 48100

-- problem 3
CREATE OR ALTER PROC usp_GetTownsStartingWith (@TextInput VARCHAR(30))
AS
	SELECT [Name] AS [Town]
		FROM Towns
		WHERE SUBSTRING([Name], 1, LEN(@TextInput)) = @TextInput
GO

-- tests 
EXEC usp_GetTownsStartingWith 'M';
EXEC usp_GetTownsStartingWith 'Mem';
EXEC usp_GetTownsStartingWith 'du';
EXEC usp_GetTownsStartingWith 'c';
EXEC usp_GetTownsStartingWith 'so';

-- problem 4
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


