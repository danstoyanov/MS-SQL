SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation
	FROM Countries c
	LEFT JOIN [MountainsCountries] mc ON c.CountryCode = mc.CountryCode
	LEFT JOIN [Mountains]m ON m.Id = mc.MountainId
	LEFT JOIN [Peaks] p ON p.MountainId = m.Id
	WHERE c.CountryCode = 'BG' AND p.Elevation > 2835
	ORDER BY p.Elevation DESC