CREATE VIEW [V_EmployeesHiredAfter2000] AS
SELECT FirstName, LastName FROM Employees 
	WHERE HireDate BETWEEN '2001/01/01' AND '2005/12/31'