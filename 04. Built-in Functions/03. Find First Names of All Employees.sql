	SELECT FirstName FROM Employees
	WHERE (DepartmentID = 10 OR DepartmentID = 3)
	AND (HireDate BETWEEN '1995/01/01' AND '2005/12/31')