SELECT TOP (1)
	(
	SELECT AVG(e.Salary) 
	FROM Employees e 
	WHERE DepartmentID = d.DepartmentID
	) AS MinAverageSalary
	FROM Departments d
	ORDER BY MinAverageSalary ASC