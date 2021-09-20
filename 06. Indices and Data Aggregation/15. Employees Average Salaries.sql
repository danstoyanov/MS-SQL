SELECT * INTO NewEmployeeTableDB
	FROM Employees
	WHERE Salary > 30000

DELETE 
	FROM NewEmployeeTableDB
	WHERE NewEmployeeTableDB.ManagerID = 42

UPDATE NewEmployeeTableDB
	SET Salary += 5000
	WHERE NewEmployeeTableDB.DepartmentID = 1

SELECT DepartmentID, 
	AVG(Salary) AS [AverageSalary]
	FROM NewEmployeeTableDB
	GROUP BY DepartmentID