CREATE DATABASE WMS
USE WMS

CREATE TABLE Clients
(
	ClientId INT IDENTITY PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Phone VARCHAR(12),
	CHECK (LEN(Phone) = 12)
)

CREATE TABLE Mechanics
(
	MechanicId INT IDENTITY PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	[Address] VARCHAR(255)
)

CREATE TABLE Models
(
	ModelId INT IDENTITY PRIMARY KEY,
	[Name] VARCHAR(50) UNIQUE
)

CREATE TABLE Vendors
(
	VendorId INT IDENTITY PRIMARY KEY,
	[Name] VARCHAR(50) UNIQUE
)

CREATE TABLE Jobs
(
	JobId INT IDENTITY PRIMARY KEY,
    ModelId INT REFERENCES Models (ModelId),
    [Status] VARCHAR(11) DEFAULT  'Pending',
    ClientId INT REFERENCES Clients (ClientId),
    MechanicId INT REFERENCES Mechanics (MechanicId),
    IssueDate DATE,
    FinishDate DATE,
)

CREATE TABLE Orders
(
	OrderId INT IDENTITY PRIMARY KEY,
	JobId INT REFERENCES Jobs (JobId),
	IssueDate DATE,
	Delivered BIT DEFAULT 0
)

CREATE TABLE Parts
(
	PartId INT IDENTITY PRIMARY KEY,
	SerialNumber VARCHAR(50) UNIQUE,
	[Description] VARCHAR(255) ,
	Price DECIMAL(15, 2),
	CHECK (Price > 0),
	VendorId INT REFERENCES Vendors (VendorId),
	StockQty INT DEFAULT 0,
)

CREATE TABLE OrderParts
(
	OrderId INT REFERENCES Orders (OrderId),
	PartId INT REFERENCES Parts (PartId),
	PRIMARY KEY (OrderId, PartId),
	Quantity INT DEFAULT 1,
)

CREATE TABLE PartsNeeded
(
	JobId INT REFERENCES Jobs (JobId),
	PartId INT REFERENCES Parts (PartId),
	PRIMARY KEY (JobId, PartId),
	Quantity INT DEFAULT 1
)
