SELECT TOP (5)
	c.CountryName, 
	MAX(p.Elevation) AS [HighestPeakElevation],
	MAX(r.[Length]) AS [LongestRiverLength]
	FROM Countries c
	JOIN [CountriesRivers] cr ON c.CountryCode = cr.CountryCode
	JOIN [Rivers] r ON cr.RiverId = r.Id
	JOIN [MountainsCountries] mc ON c.CountryCode = mc.CountryCode
	JOIN [Mountains] m ON mc.MountainId = m.Id
	JOIN [Peaks] p ON m.Id = p.MountainId
	GROUP BY CountryName
	ORDER BY [HighestPeakElevation] DESC, [LongestRiverLength] DESC, c.CountryName