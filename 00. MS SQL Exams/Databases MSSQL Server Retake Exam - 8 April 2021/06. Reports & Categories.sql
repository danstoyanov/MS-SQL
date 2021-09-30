SELECT 
	r.[Description],
	ca.[Name] AS CategoryName
	FROM Reports r
	JOIN Categories ca ON r.CategoryId = ca.Id
	WHERE CategoryId IS NOT NULL
	ORDER BY [Description] ASC, CategoryName ASC

SELECT TOP 5 Name, COUNT(*) AS ReportsNumber
	FROM Reports r
	JOIN Categories ca ON ca.Id = r.CategoryId
	GROUP BY ca.[Name]
	ORDER BY COUNT(ca.Name) DESC, ca.Name