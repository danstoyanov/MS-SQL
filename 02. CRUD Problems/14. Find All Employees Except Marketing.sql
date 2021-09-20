-- first
SELECT FirstName, LastName 
       FROM Employees
	   WHERE DepartmentID <> 4


-- second
SELECT FirstName, LastName 
       FROM Employees
	   WHERE NOT DepartmentID = 4