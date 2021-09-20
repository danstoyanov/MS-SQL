CREATE TABLE Users
(
    Id INT NOT NULL PRIMARY KEY,
	Username VARCHAR(30),
	[Password] VARCHAR(26),
	ProfilePicture VARCHAR(MAX),
	LastLoginTime DATETIME,
	IsDeleted BIT
)

INSERT INTO Users (Id, Username, Password, ProfilePicture, LastLoginTime, IsDeleted) VALUES 
(1, 'danpelican', '12223abc', 'picture', 1/1/2000, 0),
(2, 'danican', '123ab32c', 'picture', 1/1/2000, 0),
(3, 'danan', '12311abc', 'picture', 1/1/2000, 0),
(4, 'pelican', '123abc', 'picture', 1/1/2000, 0),
(5, 'ican', '123ab31c', 'picture', 1/1/2000, 0)