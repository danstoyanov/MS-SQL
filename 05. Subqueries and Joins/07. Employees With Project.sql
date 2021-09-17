SELECT e.EmployeeID, e.FirstName, e.ManagerID, m.FirstName AS ManagerName
	FROM Employees e 
	LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID
	LEFT JOIN [Departments] d ON d.ManagerID = e.ManagerID
	WHERE e.ManagerID IN (3, 7)