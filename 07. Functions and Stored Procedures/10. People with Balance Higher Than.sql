CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan (@InputValue DECIMAL(15, 2) )
AS
	SELECT FirstName, LastName
		FROM AccountHolders AS ah
		JOIN Accounts AS ac ON ah.Id = ac.AccountHolderId
		GROUP BY FirstName, LastName
		HAVING SUM(Balance) > @InputValue
		ORDER BY FirstName, LastName 
GO

--- tests
EXEC usp_GetHoldersWithBalanceHigherThan 30000
EXEC usp_GetHoldersWithBalanceHigherThan 31312