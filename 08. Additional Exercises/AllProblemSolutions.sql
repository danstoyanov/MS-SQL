--01. Number of Users for Email Provider
USE Diablo

SELECT (
SUBSTRING(Email,  CHARINDEX('@', Email) + 1, LEN (Email))) AS [Email Provider],
	   COUNT(*) AS [Number Of Users]
	FROM Users
	GROUP BY (SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN (Email)))
	ORDER BY COUNT(*) DESC, (SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN (Email)))

--02. All Users in Games
SELECT 
	g.[Name] AS [Game],
	gt.[Name] AS [Game Type],
	u.Username,
	ug.[Level],
	ug.Cash,
	ch.[Name] AS [Character]
		FROM Games g
		JOIN GameTypes gt ON gt.Id = g.GameTypeId
		JOIN UsersGames	ug ON g.Id  = ug.GameId 
		JOIN Characters ch ON ch.Id = ug.CharacterId
		JOIN Users u ON u.Id = ug.UserId
	ORDER BY ug.[Level] DESC, u.Username, g.[Name]

--03. Users in Games with Their Items
SELECT 
		u.Username,
		g.[Name] AS Game,
		COUNT (*) AS [Items Count],
		SUM(it.Price) * COUNT(*) AS [Items Price]
		FROM Users u
		JOIN UsersGames ug ON ug.UserId = u.Id
		JOIN Games g ON ug.GameId = g.Id
		JOIN UserGameItems ugi ON ugi.UserGameId = ug.Id
		JOIN Items it ON ugi.ItemId = it.Id
	WHERE u.Username = 'obliquepoof'
	GROUP BY u.Username, g.[Name]
	ORDER BY COUNT (*) DESC

--04. * User in Games with Their Statistics
--05. All Items with Greater than Average Statistics
--06. Display All Items about Forbidden Game Type
--07. Buy Items for User in Game
--08. Peaks and Mountains
--09. Peaks with Mountain, Country and Continent
--10. Rivers by Country
--11. Count of Countries by Currency
--12. Population and Area by Continent
--13. Monasteries by Country
--14. Monasteries by Continents and Countries