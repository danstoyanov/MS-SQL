CREATE OR ALTER PROC usp_GetHoldersFullName
AS
	SELECT (FirstName + ' ' + LastName) AS [Full Name]
		FROM AccountHolders
GO

--- test
EXEC usp_GetHoldersFullName