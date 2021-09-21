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