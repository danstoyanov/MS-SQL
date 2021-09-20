USE MyDemoData

CREATE TABLE Minions
(
       Id INT NOT NULL,
	   [Name] VARCHAR(30),
	   Age INT,
	   TownId INT NOT NULL,
	   PRIMARY KEY (Id, TownId),
	   FOREIGN KEY (TownId) REFERENCES Towns (Id)
)

DROP TABLE Minions
DROP TABLE Towns

CREATE TABLE Towns
(
      Id INT NOT NULL PRIMARY KEY,
	  [Name] VARCHAR(30),
)

INSERT Towns (Id, Name)
       VALUES 
	   (1, 'Sofia'),
	   (2, 'Plovdiv'),
	   (3, 'Varna')

INSERT Minions (Id, [Name], Age, TownId)
       VALUES
	   (1,'Kevin' , 22, 1),
	   (2,'Bob' , 15, 3),
	   (3,'Steward' ,NULL , 2)