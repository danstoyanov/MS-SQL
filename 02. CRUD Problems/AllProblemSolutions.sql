USE SoftUni

-- probl 2
--SELECT * FROM Departments
--
---- probl 3
--SELECT [Name] FROM Departments
--
---- probl 4
--SELECT FirstName, LastName, Salary FROM Employees
--
---- probl 5
--SELECT FirstName, MiddleName, LastName FROM Employees

-- probl 6
SELECT FirstName + '.' + LastName + '@softuni.bg' AS [Full Email Address] 
       FROM Employees

-- probl 7
SELECT DISTINCT Salary
       FROM Employees

-- probl 8
SELECT * FROM Employees 
       WHERE  JobTitle = 'Sales Representative'

-- probl 9 - first
SELECT FirstName, LastName, JobTitle FROM Employees
       WHERE Salary >= 20000 AND Salary <= 30000

-- probl 9 - second
SELECT FirstName, LastName, JobTitle FROM Employees
       WHERE Salary BETWEEN 20000 AND 30000

-- probl 10 - first
SELECT FirstName + ' ' + MiddleName + ' ' +LastName AS [Full Name] 
       FROM Employees
	   WHERE Salary = 25000 
	   OR Salary = 14000
	   OR Salary = 12500
	   OR Salary = 23600

-- probl 10 - second
SELECT FirstName + ' ' + MiddleName + ' ' +LastName AS [Full Name] 
       FROM Employees
	   WHERE Salary IN (25000, 14000, 12500, 23600)

-- probl 11
SELECT FirstName, LastName FROM Employees
       WHERE ManagerID IS NULL

-- probl 12
SELECT FirstName, LastName, Salary 
       FROM Employees
	   WHERE Salary > 50000
	   ORDER BY Salary DESC

-- probl 13 ????
SELECT TOP (5) FirstName, LastName 
       FROM Employees
	   ORDER BY Salary DESC

-- probl 14 firstn
SELECT FirstName, LastName 
       FROM Employees
	   WHERE DepartmentID <> 4

-- probl 14   
SELECT FirstName, LastName 
       FROM Employees
	   WHERE NOT DepartmentID = 4

-- probl 15
SELECT * FROM Employees
         ORDER BY 
		 Salary DESC, 
		 FirstName ASC,
		 LastName DESC,
		 MiddleName ASC

-- probl 16
CREATE VIEW V_EmployeesSalaries AS
         SELECT FirstName, LastName, Salary
         FROM Employees

-- probl 17
CREATE VIEW V_EmployeeNameJobTitle AS
       SELECT FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName AS [Full Name],
	   JobTitle
	   FROM Employees

-- probl 18
SELECT DISTINCT JobTitle FROM Employees
	   ORDER BY JobTitle ASC

-- probl 19
SELECT TOP 10 ProjectID, [Name], [Description], StartDate, EndDate
       FROM Projects
       ORDER BY 
	   StartDate ASC,
	   [Name]

-- probl 20
SELECT TOP (7) FirstName, LastName, HireDate 
       FROM Employees
	   ORDER BY HireDate DESC

-- probl 21

-- probl 22
SELECT PeakName 
       FROM Peaks
	   ORDER BY PeakName ASC

-- probl 23
SELECT TOP (30) CountryName, [Population]
        FROM Countries
		WHERE ContinentCode IN ('EU')
		ORDER BY [Population] DESC

-- probl 24

-- probl 25
SELECT [Name] FROM Characters
        ORDER BY [Name] ASC
