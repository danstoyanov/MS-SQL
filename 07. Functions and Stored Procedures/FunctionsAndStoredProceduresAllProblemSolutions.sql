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


-- problem 5
CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@Salary DECIMAL(18,4))
RETURNS VARCHAR(30)
AS
BEGIN
	DECLARE @SalaryLevel VARCHAR(30);

	IF (@Salary < 30000)
		SET @SalaryLevel = 'Low'
	ELSE IF (@Salary >= 30000 AND @Salary <= 50000)
		SET @SalaryLevel = 'Average'
	ELSE IF (@Salary > 50000)
		SET @SalaryLevel = 'High'
	ELSE
		SET @SalaryLevel = NULL

	RETURN @SalaryLevel
END

-- test
SELECT  Salary,
		dbo.ufn_GetSalaryLevel(Salary)
	FROM Employees

-- problem 6
CREATE OR ALTER PROC usp_EmployeesBySalaryLevel (@ParameterLevelOfSalary VARCHAR(30))
AS
	SELECT 
	emp.FirstName,
	emp.LastName
	FROM Employees emp
	WHERE dbo.ufn_GetSalaryLevel(Salary)  = @ParameterLevelOfSalary
GO

-- test
EXEC usp_EmployeesBySalaryLevel 'high'
EXEC usp_EmployeesBySalaryLevel 'Low'

