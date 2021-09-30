CREATE OR ALTER PROC usp_SearchForFiles (@fileExtension VARCHAR(30))
AS
	SELECT 
		Id,
		[Name],
		CAST(Size AS VARCHAR(20)) + 'KB' AS [Size]
		FROM Files
		WHERE [Name] LIKE ('%' +  @fileExtension + '%')
		ORDER BY Id ASC, [Name] ASC, Size DESC
GO

-- test
EXEC usp_SearchForFiles 'txt'
EXEC usp_SearchForFiles 'net'