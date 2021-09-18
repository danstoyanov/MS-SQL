SELECT mc.CountryCode, COUNT(*) AS MountainRanges
	FROM Mountains m
	LEFT JOIN [MountainsCountries] mc ON m.Id = mc.MountainId
	WHERE mc.CountryCode IN ('BG', 'US', 'RU')
	GROUP BY mc.CountryCode