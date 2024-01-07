CREATE TABLE [Employees]
(
	[Id] INT PRIMARY KEY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[Title] NVARCHAR(50),
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Employees]([Id], [FirstName], [LastName])
VALUES
	(1, 'Edgar', 'Yankov'),
	(2, 'Olya', 'Sedmakova'),
	(3, 'Radi', 'Yankov');

CREATE TABLE [Customers]
(
	[AccountNumber] INT PRIMARY KEY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[PhoneNumber] CHAR(10) NOT NULL,
	[EmergencyName] NVARCHAR(50) NOT NULL,
	[EmergencyNumber] CHAR(10) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Customers]([AccountNumber], [FirstName], [LastName], [PhoneNumber], [EmergencyName], [EmergencyNumber])
VALUES
	(1, 'Edgar', 'Yankov', '0894654322', 'Edgar','0894654322'),
	(2, 'Olya', 'Sedmakova', '0894322567', 'Olya', '0894322567'),
	(3, 'Radi', 'Yankov', '0893765434', 'Radi', '0893765434');

CREATE TABLE [RoomStatus]
(
	[RoomStatus] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [RoomStatus]([RoomStatus])
VALUES
	('Free'),
	('Busy'),
	('Free');

CREATE TABLE [RoomTypes]
(
	[RoomType] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [RoomTypes]([RoomType])
VALUES
	('Double room'),
	('Triple room'),
	('Quad Room');

CREATE TABLE [BedTypes]
(
	[BedType] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [BedTypes]([BedType])
VALUES
	('Double beds'),
	('King bed'),
	('Queen bed');

CREATE TABLE [Rooms]
(
	[RoomNumber] INT PRIMARY KEY,
	[RoomType] NVARCHAR(50) NOT NULL,
	[BedType] NVARCHAR (50) NOT NULL,
	[Rate] TINYINT,
	[RoomStatus] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Rooms]([RoomNumber], [RoomType], [BedType], [RoomStatus])
VALUES
	(1, 'Double room', 'Double beds', 'Vacant Clean'),
	(2, 'Triple room', 'King bed', 'Vacant Dirty'),
	(3, 'Quad Room', 'Queen bed', 'Vacant Ready');

CREATE TABLE [Payments]
(
	[Id] INT PRIMARY KEY,
	[EmployeeId] INT NOT NULL,
	[PaymentDate] DATETIME2,
	[AccountNumber] INT NOT NULL,
	[FirstDateOccupied] DATETIME2,
	[LastDateOccupied] DATETIME2,
	[TotalDays] TINYINT,
	[AmountCharged] MONEY,
	[TaxRate] INT,
	[TaxAmount] MONEY,
	[PaymentTotal] MONEY,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Payments]([Id], [EmployeeId], [AccountNumber])
VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3);

CREATE TABLE [Occupancies]
(
	[Id] INT PRIMARY KEY,
	[EmployeeId] INT NOT NULL,
	[DateOccupied] DATETIME2,
	[AccountNumber] INT NOT NULL,
	[RoomNumber] INT NOT NULL,
	[RateApplied] TINYINT,
	[PhoneCharge] DECIMAL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Occupancies]([Id], [EmployeeId], [AccountNumber], [RoomNumber])
VALUES
	(1, 1, 1, 1),
	(2, 2, 2, 2),
	(3, 3, 3, 3);