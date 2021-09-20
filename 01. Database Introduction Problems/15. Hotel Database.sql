CREATE DATABASE Hotel

USE Hotel

CREATE TABLE Employees
(
     Id INT NOT NULL PRIMARY KEY,
	 FirstName VARCHAR(30),
	 LastName VARCHAR(30),
	 Title VARCHAR(30),
	 Notes VARCHAR(MAX)
)
CREATE TABLE Customers
(
     AccountNumber INT NOT NULL PRIMARY KEY, 
     FirstName VARCHAR(30), 
     LastName VARCHAR(30), 
     PhoneNumber INT, 
     EmergencyName VARCHAR(30), 
     EmergencyNumber VARCHAR(30), 
     Notes VARCHAR(MAX)
)
CREATE TABLE RoomStatus
(
     RoomType VARCHAR(30),
	 Notes VARCHAR(MAX),
)
CREATE TABLE RoomTypes
(
     RoomType VARCHAR(30),
	 Notes VARCHAR(MAX),
)
CREATE TABLE BedTypes
(
    BedType VARCHAR(30),
	Notes VARCHAR(MAX)
)
CREATE TABLE Rooms
(
     RoomNumber INT NOT NULL PRIMARY KEY, 
     RoomType VARCHAR(30), 
     BedType VARCHAR(30), 
     Rate INT, 
     RoomStatus VARCHAR(30), 
     Notes VARCHAR(MAX)
)
CREATE TABLE Payments
(
     Id INT NOT NULL PRIMARY KEY,
	 EmployeeId INT, 
	 PaymentDate DATE, 
	 AccountNumber INT, 
	 FirstDateOccupied DATE, 
	 LastDateOccupied DATE, 
	 TotalDays INT, 
	 AmountCharged FLOAT, 
	 TaxRate FLOAT, 
	 TaxAmount FLOAT, 
	 PaymentTotal INT, 
	 Notes VARCHAR(MAX)
)
CREATE TABLE Occupancies 
(
     Id INT NOT NULL PRIMARY KEY, 
	 EmployeeId INT, 
	 DateOccupied DATE, 
	 AccountNumber INT, 
	 RoomNumber INT, 
	 RateApplied INT, 
	 PhoneCharge FLOAT, 
	 Notes VARCHAR(MAX)
)

INSERT INTO Employees VALUES
(1, 'Stoyan', 'Mihaylov', 'Manager', NULL),
(2, 'Draz', 'Mihaylov', 'Shofer', NULL),
(3, 'Stoyan', 'Mraz', 'Titlza', NULL)

INSERT INTO Customers VALUES
(1, 'Choco', 'Coiz', 21313, 'Choco', 'Coiz', NULL),
(2, 'Chosco', 'Cozsiz', 31313, 'Chosco', 'Cozsiz', NULL),
(3, 'Chvoco', 'Coizz', 31313, 'Chvoco', 'Coizz', NULL)

INSERT INTO RoomStatus VALUES
('Golqma', NULL),
('Malka', 'Zabelejka bre'),
('Sredna', NULL)

INSERT INTO RoomTypes VALUES
('Nqkakkva', NULL),
('Malka', 'Zabelejka nqma'),
('Malka i tq', NULL)

INSERT INTO BedTypes VALUES
('Hubavo', NULL),
('Losho', NULL),
('Bivashto', NULL)

INSERT INTO Rooms VALUES 
(1, 'Golqma', 'Dvoino', 6, 'Nestaa', NULL),
(2, 'Malka', 'Edinicho', 5, 'Staa', NULL),
(3, 'Sredna', 'Bebeshka', 1, 'Qka', NULL)

INSERT INTO Payments VALUES
(1, 1, '2008-11-11', 3131, '2008-10-11', '2008-11-12', 30, 2010.99, 1000.00, 1200.00, 25, NULL),
(2, 1, '2001-11-11', 3131, '2001-11-12', '2008-09-12', 20, 2210.99, 1020.00, 110.00, 1, NULL),
(3, 1, '2002-11-11', 3131, '2002-10-12', '2008-06-12', 11, 200.99, 1010.00, 1020.00, 2, NULL)

INSERT INTO Occupancies VALUES
(1, 1, '2002-11-11', 142, 102, 5, 11.99, NULL),
(2, 1, '2001-11-11', 151, 11, 4, 20.99, NULL),
(3, 1, '2000-11-11', 151, 140, 6, 1.99, NULL)
