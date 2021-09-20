CREATE TABLE People
(
     Id INT NOT NULL PRIMARY KEY,
	 [Name] VARCHAR(200) NOT NULL,
	 Picture VARCHAR(100) ,
	 Height DECIMAL(15,2),
	 [Weight] DECIMAL(15,2),
	 Gender BIT NOT NULL,
	 Birthdate DATETIME NOT NULL,
	 Biography VARCHAR(MAX)
)

INSERT INTO People (Id, Name, Picture, Height, Weight, Gender, Birthdate, Biography) VALUES
(1, 'Stanis', NULL, 187, 78, 0, 8/8/1978, NULL),
(2, 'Jam', NULL, 178, 88, 0, 8/8/1983, NULL),
(3, 'Carlos', NULL, 190, 280, 0, 8/8/1938, NULL),
(4, 'Green', NULL, 110, 80, 0, 8/8/1967, NULL),
(5, 'Maria', NULL, 145, 48, 1, 8/8/1999, NULL)