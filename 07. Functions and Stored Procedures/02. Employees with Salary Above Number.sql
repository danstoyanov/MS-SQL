CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber  (@InputNumber DECIMAL(18,4))
AS
	SELECT FirstName, LastName 
		FROM Employees
		WHERE Salary >= @InputNumber
GO

-- test
EXEC usp_GetEmployeesSalaryAboveNumber 48100