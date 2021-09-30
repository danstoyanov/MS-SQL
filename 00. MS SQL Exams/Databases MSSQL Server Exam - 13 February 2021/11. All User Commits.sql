CREATE OR ALTER FUNCTION udf_AllUserCommits(@username VARCHAR(50))
RETURNS INT
AS
BEGIN  
		DECLARE @counter INT = (SELECT COUNT(*)
						FROM Users u
						JOIN Commits com ON com.ContributorId = u.Id
						WHERE u.Username = @username)

	RETURN @counter
END

-- test
SELECT dbo.udf_AllUserCommits('UnderSinduxrein')
SELECT dbo.udf_AllUserCommits('ScoreAntigarein')
SELECT dbo.udf_AllUserCommits('DarkImmagidsa')


