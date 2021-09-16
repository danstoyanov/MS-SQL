SELECT TownID, [Name] FROM Towns
	WHERE [Name] LIKE 'B%' OR [Name] LIKE 'M%'
	OR [Name] LIKE 'K%' OR [Name] LIKE 'E%'
	ORDER BY [Name]

-- solve with regex

SELECT TownID, [Name] FROM Towns
	WHERE[Name] LIKE '[MKBE]%'
	ORDER BY [Name]