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