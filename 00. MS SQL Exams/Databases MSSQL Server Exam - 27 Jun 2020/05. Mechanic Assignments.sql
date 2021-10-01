SELECT 
	mec.FirstName + ' ' + mec.LastName AS [Mechanic],
	j.[Status],
	j.IssueDate
	FROM Mechanics mec
	JOIN Jobs j ON mec.MechanicId = j.MechanicId
	ORDER BY mec.MechanicId ASC, j.IssueDate ASC, j.JobId ASC