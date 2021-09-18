--- problem 1
SELECT TOP (5) e.EmployeeID, e.JobTitle, a.AddressID, a.AddressText
	FROM [Employees] e 
	JOIN [Addresses] a ON a.AddressID = e.AddressID
	ORDER BY a.AddressID 

--- problem 2
SELECT TOP (50) e.FirstName, e.LastName, t.[Name] AS Town, a.AddressText
	FROM Employees e
	INNER JOIN [Addresses] a ON e.AddressID = a.AddressID
	INNER JOIN [Towns] t ON a.TownID = t.TownID
	ORDER BY e.FirstName ASC, e.LastName

--- problem 3
SELECT e.EmployeeID, e.FirstName, e.LastName, d.[Name] AS DepartmentName
	FROM Employees e
	INNER JOIN [Departments] d ON e.DepartmentID = d.DepartmentID
	WHERE d.DepartmentID = 3
	ORDER BY EmployeeID ASC

--- problem 4
SELECT TOP (5) e.EmployeeID, e.FirstName, e.Salary, d.[Name] AS DepartmentName
	FROM Employees e
	INNER JOIN [Departments] d ON e.DepartmentID = d.DepartmentID
	WHERE e.Salary > 15000
	ORDER BY d.DepartmentID ASC

--- problem 5
SELECT TOP (3) e.EmployeeID, e.FirstName
	FROM Employees e
	FULL JOIN [EmployeesProjects] ep ON e.EmployeeID = ep.EmployeeID
	WHERE ep.ProjectID IS NULL

--- problem 6
SELECT e.FirstName, e.LastName, e.HireDate, d.[Name] AS DeptName
	FROM Employees e
	INNER JOIN [Departments] d ON d.DepartmentID = e.DepartmentID
	WHERE e.HireDate > '1999-01-01' AND (d.[Name] = 'Sales' OR d.[Name] = 'Finance')
	ORDER BY e.HireDate ASC

--- problem 7
SELECT TOP (5) e.EmployeeID, e.FirstName, p.[Name] AS ProjectName
	FROM Employees e
	JOIN [EmployeesProjects] ep ON e.EmployeeID = ep.EmployeeID
	JOIN [Projects] p ON p.ProjectID = ep.ProjectID
	WHERE p.StartDate > '2002-08-13 00:00:00' AND p.EndDate IS NULL
	ORDER BY e.EmployeeID

--- problem 8 -- HARD !!!
SELECT e.EmployeeID, e.FirstName, p.[Name] AS ProjectName
	FROM Employees e
	JOIN [EmployeesProjects] ep ON e.EmployeeID = ep.EmployeeID
	JOIN [Projects] p ON p.ProjectID = ep.ProjectID
	WHERE e.EmployeeID = 24 


--- problem 9
SELECT e.EmployeeID, e.FirstName, e.ManagerID, m.FirstName AS ManagerName
	FROM Employees e 
	LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID
	LEFT JOIN [Departments] d ON d.ManagerID = e.ManagerID
	WHERE e.ManagerID IN (3, 7)

--- problem 10
SELECT TOP (50) 
	e.EmployeeID, 
	e.FirstName + ' ' + e.LastName AS EmployeeName, 
	m.FirstName + ' ' + m.LastName AS ManagerName,
	d.[Name] AS DepartmentName
	FROM Employees e 
	LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID
	LEFT JOIN [Departments] d ON e.DepartmentID = d.DepartmentID
	ORDER BY e.EmployeeID

--- problem 11
SELECT TOP (1)
	(
	SELECT AVG(e.Salary) 
	FROM Employees e 
	WHERE DepartmentID = d.DepartmentID
	) AS MinAverageSalary
	FROM Departments d
	ORDER BY MinAverageSalary ASC

--- problem 12
SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation
	FROM Countries c
	LEFT JOIN [MountainsCountries] mc ON c.CountryCode = mc.CountryCode
	LEFT JOIN [Mountains]m ON m.Id = mc.MountainId
	LEFT JOIN [Peaks] p ON p.MountainId = m.Id
	WHERE c.CountryCode = 'BG' AND p.Elevation > 2835
	ORDER BY p.Elevation DESC

--- problem 13 -- HARD !!!
USE Geography
SELECT * FROM Mountains

SELECT mc.CountryCode, m.MountainRange
	FROM Mountains m
	LEFT JOIN [MountainsCountries] mc ON m.Id = mc.MountainId
	WHERE mc.CountryCode IN ('BG', 'US', 'RU')

--- problem 14
SELECT TOP (5)  c.CountryName, r.RiverName
	FROM Countries c
	LEFT JOIN [CountriesRivers] cr ON c.CountryCode = cr.CountryCode -- GOLD !
	LEFT JOIN [Rivers] r ON cr.RiverId = r.Id
	WHERE c.ContinentCode = 'AF'
	ORDER BY c.CountryName

--- problem 15 --- HARD

--- problem 16 
SELECT TOP (5)
	c.CountryName, 
	p.Elevation AS [HighestPeakElevation],
	r.[Length] AS [LongestRiverLength]
	FROM Countries c
	LEFT JOIN [CountriesRivers] cr ON c.CountryCode = cr.CountryCode
	INNER JOIN [Rivers] r ON cr.RiverId = r.Id
	LEFT JOIN [MountainsCountries] mc ON c.CountryCode = mc.CountryCode
	LEFT JOIN [Mountains] m ON mc.MountainId = m.Id
	LEFT JOIN [Peaks] p ON m.Id = p.MountainId
	ORDER BY p.Elevation DESC, r.[Length] DESC, c.CountryName