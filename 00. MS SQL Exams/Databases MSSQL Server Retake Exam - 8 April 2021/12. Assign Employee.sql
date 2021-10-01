USE Service

CREATE OR ALTER PROC usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT) 
AS 
	

GO

SELECT * FROM Employees
	WHERE Id = 17

SELECT emp.Id, emp.FirstName, rep.EmployeeId, rep.Description
	FROM Employees emp
	JOIN Departments dp ON dp.Id = emp.DepartmentId
	JOIN Categories cat ON cat.DepartmentId = dp.Id
	JOIN Reports rep ON rep.CategoryId = cat.Id
	WHERE emp.Id = 30

SELECT *
	FROM Reports rep
	JOIN Employees emp ON emp.Id = rep.EmployeeId
	WHERE emp.Id = 30

SELECT * FROM Reports
SELECT * FROM Departments
SELECT * FROM Categories

EXEC usp_AssignEmployeeToReport 30, 1
EXEC usp_AssignEmployeeToReport 17, 2