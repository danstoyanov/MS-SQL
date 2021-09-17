SELECT e.EmployeeID, e.FirstName, e.LastName, d.[Name] AS DepartmentName
	FROM Employees e
	INNER JOIN [Departments] d ON e.DepartmentID = d.DepartmentID
	WHERE d.DepartmentID = 3
	ORDER BY EmployeeID ASC