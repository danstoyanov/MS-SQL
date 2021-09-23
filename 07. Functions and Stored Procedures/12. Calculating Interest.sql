CREATE OR ALTER PROC usp_CalculateFutureValueForAccount (@accountId INT, @iRate FLOAT)
AS
	SELECT 
		ac.Id, 
		ah.FirstName, 
		ah.LastName,
		ac.Balance,
		dbo.ufn_CalculateFutureValue(ac.Balance, @iRate, 5) AS [Balance in 5 years]
		FROM AccountHolders ah
		JOIN Accounts ac ON ac.AccountHolderId = ah.Id
		WHERE ac.Id = @accountId
GO

-- tests
EXEC usp_CalculateFutureValueForAccount 1, 0.1
EXEC usp_CalculateFutureValueForAccount 3, 0.8