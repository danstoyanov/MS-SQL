USE SoftUni

-- problem 1
SELECT FirstName, LastName FROM Employees 
	WHERE FirstName LIKE 'SA%'

-- problem 2
SELECT FirstName, LastName FROM Employees
	WHERE LastName LIKE '%ei%'

-- problem 3
SELECT FirstName, DepartmentID, HireDate FROM Employees
	WHERE DepartmentID = 10 OR DepartmentID = 3
	AND HireDate BETWEEN '1995/01/01' AND '2005/12/31'

-- problem 4
SELECT FirstName, LastName FROM Employees
	WHERE JobTitle NOT LIKE '%engineer%'

-- problem 5
SELECT [Name] FROM Towns
	WHERE LEN([Name]) = 5 OR LEN([Name]) = 6
	ORDER BY [Name]

-- problem 6
