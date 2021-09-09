CREATE TABLE Categories
(
    Id INT NOT NULL PRIMARY KEY,
	CategoryName VARCHAR(30),
	DailyRate FLOAT,
	WeeklyRate FLOAT,
	MonthlyRate FLOAT,
	WeekendRate FLOAT
)
CREATE TABLE Cars
(
    Id INT NOT NULL PRIMARY KEY,
	PlateNumber INT,
	Manufacturer VARCHAR(30),
	Model VARCHAR(30),
	CarYear DATE,
	CategoryId INT,
	Doors INT,
	Picture VARCHAR(MAX),
	Condition VARCHAR(30),
	Available BIT,
)
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
    Id INT NOT NULL PRIMARY KEY,
	DriverLicenceNumber INT,
	FullName VARCHAR(30),
	[Address] VARCHAR(30),
	City VARCHAR(30),
	ZIPCode INT,
	Notes VARCHAR(MAX)
)
CREATE TABLE RentalOrders
(
    Id INT NOT NULL PRIMARY KEY,
    EmployeeId INT, 
    CustomerId INT, 
    CarId INT, 
    TankLevel INT, 
    KilometrageStart INT, 
    KilometrageEnd INT, 
    TotalKilometrage INT, 
    StartDate DATE, 
    EndDate DATE, 
    TotalDays INT, 
    RateApplied INT, 
    TaxRate INT, 
    OrderStatus VARCHAR(30), 
    Notes VARCHAR(MAX)
)

INSERT INTO Categories VALUES
(1,'Djip', 132, 536, 643, 120),
(2,'SUV', 123, 242, 525, 525),
(3,'TANK', 4221, 421, 120, 555)

INSERT INTO Cars VALUES
(1, 3332, 'aa', 'Octavia', '1200-12-12', 1, 4, NULL, 'NEW', 1),
(2, 3234, 'Skoddsa', 'Octavia', '1200-12-12', 1, 4, NULL, 'OLD', 1),
(3, 1111, 'Skosda', 'Octavia', '1200-12-12', 1, 4, NULL, 'NEW', 1)

INSERT INTO Employees VALUES
(1, 'Dragan', 'sCankov', 'Meriadanjey', NULL),
(2, 'Dragadadan', 'Cdankov', 'Mderinjey', NULL),
(3, 'Dragsssan', 'Cankovs', 'Merdadainjey', NULL)

INSERT INTO Customers VALUES
(1, 33333, 'Perdvaro VPedrez', 'zdadhk Sofia...', 'Sofia', 1000, NULL),
(2, 23131, 'dadd sPedrez', 'zhk Sofia...', 'Pld', 2000, NULL),
(3, 55555, 'Perdro Vedrez', 'zhk Soadfia...', 'Var', 2833, NULL)

INSERT INTO RentalOrders VALUES
(1, 1, 1, 1, 4030, 100, 200, 11000, '2001-01-01','2021-01-01', 61300, 10, 31,'INP4ROGRES', NULL),
(2, 2, 2, 2, 40420, 100, 2600, 13000, '2001-01-01','2021-01-01', 6140, 10, 2,'IN14PROGRES', NULL),
(3, 3, 3, 3, 4200, 1030, 2030, 1000, '2001-01-01','2021-01-01', 1100, 10, 35,'INPROGR4ES', NULL)