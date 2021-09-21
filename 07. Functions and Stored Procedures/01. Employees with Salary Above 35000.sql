USE SoftUni
GO

-- problem 1
CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000 
AS
	SELECT FirstName, LastName 
		FROM Employees
		WHERE Salary > 35000
GO