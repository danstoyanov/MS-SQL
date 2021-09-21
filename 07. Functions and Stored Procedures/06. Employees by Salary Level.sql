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