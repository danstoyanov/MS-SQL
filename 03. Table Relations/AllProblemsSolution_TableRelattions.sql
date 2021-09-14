-- problem 1 ----------------------------------------------------------------------------------
CREATE DATABASE TableRelationsDB

USE TableRelationsDB

CREATE TABLE Passports 
( 
      PassportID INT PRIMARY KEY NOT NULL,
	  PassportNumber CHAR(30),
)

CREATE TABLE Persons
(
      PersonID INT NOT NULL,
	  FirstName VARCHAR(30),
	  Salary FLOAT NOT NULL,
	  PassportID INT,
	  PRIMARY KEY (PersonID),
	  FOREIGN KEY (PassportID) REFERENCES Passports(PassportID)
)

INSERT INTO Passports (PassportID, PassportNumber)
       VALUES
	   (101, 'N34FG21B'),
	   (102, 'K65LO4R7'),
	   (103, 'ZE657QP2')

INSERT INTO Persons (PersonID, FirstName, Salary, PassportID)
       VALUES
	  (1, 'Roberto', 43300.00, 102),
	  (2, 'Tom', 56100.00, 103),
	  (3, 'Yana', 60200.00, 101)

-- problem 2 ----------------------------------------------------------------------------------
USE MyDemoData

CREATE TABLE Manufacturers
( 
       ManufacturerID INT NOT NULL,
	   [Name] VARCHAR(30) NOT NULL,
	   EstablishedOn VARCHAR(30) NOT NULL,
	   PRIMARY KEY (ManufacturerID)
)

CREATE TABLE Models
( 
       ModelID INT NOT NULL PRIMARY KEY,
	   [Name] VARCHAR(30) NOT NULL,
	   ManufacturerID INT NOT NULL,
	   FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
)

INSERT INTO Manufacturers (ManufacturerID, [Name], EstablishedOn)
       VALUES
	   (1, 'BMW', '07/03/1916'),
	   (2, 'Tesla', '01/01/2003'),
	   (3, 'Lada', '01/05/1966')

INSERT INTO Models (ModelID, [Name], ManufacturerID)
       VALUES
	   (101, 'X1', 1),
	   (102, 'i6', 1),
	   (103, 'Model S', 2),
	   (104, 'Model X', 2),
	   (105, 'Model 3', 2),
	   (106, 'Nova', 3)

-- problem 3 ----------------------------------------------------------------------------------
USE MyDemoData

CREATE TABLE Students
(      
       StudentID INT NOT NULL PRIMARY KEY,
	   [Name] VARCHAR(30) NOT NULL,
)

CREATE TABLE Exams
(
       ExamID INT NOT NULL PRIMARY KEY,
	   [Name] VARCHAR(30) NOT NULL,
)

CREATE TABLE StudentsExams
(
       StudentID INT NOT NULL,
	   ExamID INT NOT NULL,
	   PRIMARY KEY (StudentID, ExamID),
	   FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	   FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
)

INSERT INTO Students (StudentID, [Name])
       VALUES 
	   (1, 'Mila'),
	   (2, 'Toni'),
	   (3, 'Ron')

INSERT INTO Exams (ExamID, [Name])
       VALUES
	   (101, 'SpringMVC'),
	   (102, 'Neo4j'),
	   (103, 'Oracle 11g')

INSERT INTO StudentsExams (StudentID, ExamID)
       VALUES 
	   (1, 101),
	   (1, 102),
	   (2, 101),
	   (3, 103),
	   (2, 102),
	   (2, 103)

-- problem 4 ----------------------------------------------------------------------------------
USE TableRelationsDB

CREATE TABLE Teachers
(      
	TeacherID INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(30) NOT NULL,
	ManagerID INT REFERENCES Teachers(TeacherID)
)

-- problem 5 ----------------------------------------------------------------------------------


-- problem 6 ----------------------------------------------------------------------------------


-- problem 7 ----------------------------------------------------------------------------------


-- problem 8 ----------------------------------------------------------------------------------


-- problem 9 ----------------------------------------------------------------------------------

