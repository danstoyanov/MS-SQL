SELECT TOP 5 Name, COUNT(*) AS ReportsNumber
	FROM Reports r
	JOIN Categories ca ON ca.Id = r.CategoryId
	GROUP BY ca.[Name]
	ORDER BY COUNT(ca.Name) DESC, ca.Name