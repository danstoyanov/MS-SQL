SELECT 
	c.FirstName + ' ' + c.LastName AS [Client],
	DATEDIFF(DAY, j.IssueDate, '24 April 2017') AS [Days going],
	[Status]
	FROM Clients c
	JOIN Jobs j ON c.ClientId = j.ClientId
	WHERE j.[Status] != 'Finished'
	ORDER BY [Days going] DESC, c.ClientId ASC