USE SoftUni

-- problem 1
SELECT FirstName, LastName FROM Employees 
	WHERE FirstName LIKE 'SA%'

-- problem 2
SELECT FirstName, LastName FROM Employees
	WHERE LastName LIKE '%ei%'

-- problem 3
SELECT FirstName 
	FROM Employees
	WHERE (DepartmentID = 10 OR DepartmentID = 3)
	AND (HireDate BETWEEN '01-JAN-95' AND '31-DEC-05')

-- problem 4
SELECT FirstName, LastName FROM Employees
	WHERE JobTitle NOT LIKE '%engineer%'

-- problem 5
SELECT [Name] FROM Towns
	WHERE LEN([Name]) = 5 OR LEN([Name]) = 6
	ORDER BY [Name]

-- problem 6
SELECT TownID, [Name] FROM Towns
	WHERE [Name] LIKE 'B%' OR [Name] LIKE 'M%'
	OR [Name] LIKE 'K%' OR [Name] LIKE 'E%'
	ORDER BY [Name]
-- solve with regex
SELECT TownID, [Name] FROM Towns
	WHERE[Name] LIKE '[MKBE]%'
	ORDER BY [Name]

-- problem 7
SELECT DISTINCT TownID, [Name] FROM Towns
	WHERE [Name] NOT LIKE '[RBD]%'
	ORDER BY [Name]

-- problem 8
CREATE VIEW [V_EmployeesHiredAfter2000] AS
	SELECT FirstName, LastName 
	FROM Employees 
	WHERE HireDate BETWEEN '2001/01/01' AND '2005/12/31'
-- second
CREATE VIEW [V_EmployeesHiredAfter2000] AS
	SELECT FirstName, LastName
	FROM Employees 
	WHERE DETEPART(YEAR, HireDate) > 2000

-- problem 9
SELECT FirstName, LastName FROM Employees
	WHERE LEN(LastName) = 5

-- problem 10
SELECT EmployeeID, FirstName, LastName, Salary, 
	DENSE_RANK() OVER (PARTITION BY Salary ORDER BY EmployeeID) AS RANK 
	FROM Employees
	WHERE Salary >= 10000 AND Salary <= 50000
	ORDER BY Salary DESC

--- problem 11 ---- NO

--- problem 12 
SELECT CountryName, IsoCode
	FROM Countries
	WHERE LEN(CountryName) - LEN(REPLACE(CountryName, 'A', '')) >= 3
	ORDER BY IsoCode

--- problem 13
USE Geography

SELECT PeakName, RiverName, LOWER(LEFT(PeakName, LEN(PeakName) - 1) + RiverName) AS MIX
	FROM Peaks, Rivers
	WHERE RIGHT(PeakName, 1) = LEFT(RiverName, 1)
	ORDER BY MIX

--- problem 14
USE Diablo
SELECT TOP (50) [Name], FORMAT([Start], 'yyyy-MM-dd') AS [Start] 
	FROM Games
	WHERE DATEPART(YEAR, [Start]) BETWEEN '2011' AND '2012'
	ORDER BY [Start], [Name]

--- problem 15
SELECT Username, SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email)) AS EmailProvider
	FROM Users
	ORDER BY EmailProvider, Username

--- problem 16
SELECT [Username], IpAddress FROM Users
	WHERE IpAddress LIKE '___.1_%._%.___'
	ORDER BY [Username]

--- problem 17
--- homework

--- problem 18
--- homework