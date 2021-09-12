CREATE DATABASE MyDemoData

USE MyDemoData

CREATE TABLE CARS
( 
     Id INT NOT NULL PRIMARY KEY,
	 Brand VARCHAR(30) NOT NULL,
	 Model VARCHAR(30) NOT NULL,
	 [Year] INT NOT NULL,
)


CREATE TABLE People_Test
(
      Id INT NOT NULL PRIMARY KEY,
	  FirstName VARCHAR(30) NOT NULL,
	  SecondName VARCHAR(30) NOT NULL,
	  BirthTown VARCHAR(30) NOT NULL,
	  CarDataId INT REFERENCES Cars(Id)
)

INSERT INTO People_Test (Id, FirstName, SecondName, BirthTown, CarDataId)
       VALUES 
(95112334, 'Mihail','Gorbachev','Moscow', 2),
(78116635, 'Danail','Kalkov','Moscow', 1),
(98112543, 'Mustahail','Chichonski','Moscow', 2),
(91632386, 'Alexander','Petrov','Moscow', 4)


INSERT INTO CARS (Id, Brand, Model, [Year])
       VALUES 
(1, 'Opel', 'Astra', 2001),
(2, 'TOYOTA', 'Corolla', 1999),
(3, 'Dacia', 'Corso', 2008),
(4, 'Opel', 'Zafira', 2003)