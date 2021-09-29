SELECT  iss.Id, us.Username + ' : ' + iss.Title AS [IssueAssignee]
	FROM Issues iss
	LEFT JOIN Users us ON us.Id = iss.AssigneeId
	ORDER BY iss.Id DESC, us.Id