CREATE TABLE Directors
(
    Id INT NOT NULL PRIMARY KEY,
	DirectorName VARCHAR(30),
	Notes VARCHAR(MAX),
)

CREATE TABLE Genres
(
    Id INT NOT NULL PRIMARY KEY,
	GenreName VARCHAR(30),
	Notes VARCHAR(MAX),
)

CREATE TABLE Categories
(
    Id INT NOT NULL PRIMARY KEY,
	CategoryName VARCHAR(30),
	Notes VARCHAR(MAX),
)

CREATE TABLE Movies
(
    Id INT NOT NULL PRIMARY KEY,
	Title VARCHAR(30),
	DirectorId VARCHAR(30),
	CopyrightYear DATE,
	Lenght INT, 
	GenreId INT,
	CategoryId INT,
	Rating INT,
	Notes VARCHAR(MAX)
)

INSERT INTO Directors VALUES
(1, 'John Michal', NULL),
(2, 'Michal John', NULL),
(3, 'John CALLCO', NULL),
(4, 'Ivan Climbov', NULL),
(5, 'Misho Birata', NULL)

INSERT INTO Genres VALUES
(1, 'Horror', NULL),
(2, 'Action', NULL),
(3, 'Historical', NULL),
(4, 'TV Series', NULL),
(5, 'Comedy', NULL)

INSERT INTO Categories VALUES
(1, 'OtherHorror', NULL),
(2, 'OtherAction', NULL),
(3, 'OtherHistorical', NULL),
(4, 'OtherTV Series', NULL),
(5, 'OtherComedy', NULL)

INSERT INTO Movies VALUES
(1, 'Titanic', 2, '2001-04-12', 130, 3, 2, 5, NULL),
(2, 'The Killer', 2, '2002-04-12', 122, 3, 3, 5, NULL),
(3, 'MadMax', 2, '2000-04-12', 121, 3, 1, 5, NULL),
(4, 'StarWars', 2, '2005-04-12', 160, 3, 22, 5, NULL),
(5, 'Indiana Jones', 2, '2001-04-12', 200, 3, 2, 5, NULL)
