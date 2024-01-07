CREATE TABLE [Categories]
(
	[Id] INT PRIMARY KEY,
	[CategoryName] NVARCHAR(50) NOT NULL,
	[DailyRate] TINYINT,
	[WeeklyRate] TINYINT,
	[MonthlyRate] TINYINT,
	[WeekendRate] TINYINT
);
INSERT INTO [Categories]([Id], [CategoryName], [DailyRate], [WeeklyRate], [MonthlyRate], [WeekendRate])
VALUES
	(1, 'Car', 6, 7, 8, 9),
	(2, 'Jeep', 6, 7, 8, 9),
	(3, 'Bus', 6, 7, 8, 9);

CREATE TABLE [Cars]
(
	[Id] INT PRIMARY KEY,
	[PlateNumber] NVARCHAR(50) NOT NULL,
	[Manufacturer] NVARCHAR(50) NOT NULL,
	[Model] NVARCHAR(50) NOT NULL,
	[CarYear] INT,
	[CategoryId] INT,
	[Doors] TINYINT,
	[Picture] NVARCHAR(MAX),
	[Condition] NVARCHAR(MAX),
	[Available] CHAR(3)
);
INSERT INTO [Cars]([Id], [PlateNumber], [Manufacturer], [Model], [CarYear], [CategoryId], [Doors], [Available])
VALUES
	(1, 'PB2030TX', 'Mercedes-Benz', 'S-Class', 2022, 1, 4, 'Yes'),
	(2, 'PB4050HA', 'Mercedes-Benz', 'G-Class', 2021, 2, 4, 'Yes'),
	(3, 'PB6070CA', 'Mercedes-Benz', 'Sprinter', 2020, 3, 4, 'Yes');

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
	[Id] INT PRIMARY KEY,
	[DriverLicenceNumber] NVARCHAR(50),
	[FullName] NVARCHAR(100),
	[Address] NVARCHAR(100),
	[City] NVARCHAR(50),
	[ZIPCode] INT,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Customers]([Id], [DriverLicenceNumber], [FullName], [Address], [City], [ZIPCode])
VALUES
	(1, '2896784', 'Edgar Radev Yankov', 'bîul. 6-th SEPTEMBER 236', 'Plovdiv', 4000),
	(2, '7584675', 'Olya Spiridonova Sedmakova', 'bîul. 6-th SEPTEMBER 236', 'Plovdiv', 4000),
	(3, '4837462', 'Radi Nenov Yankov', 'bîul. 6-th SEPTEMBER 236', 'Plovdiv', 4000);

CREATE TABLE [RentalOrders]
(
	[Id] INT PRIMARY KEY,
	[EmployeeId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[CarId] INT NOT NULL,
	[TankLevel] INT,
	[KilometrageStart] DECIMAL(10, 3),
	[KilometrageEnd] DECIMAL(10, 3),
	[TotalKilometrage] DECIMAL(10, 3),
	[StartDate] DATETIME2,
	[EndDate] DATETIME2,
	[TotalDays] INT,
	[RateApplied] TINYINT,
	[TaxRate] TINYINT,
	[OrderStatus] NVARCHAR(MAX),
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [RentalOrders]([Id], [EmployeeId], [CustomerId], [CarId], [TankLevel], [KilometrageStart], [KilometrageEnd], [TotalKilometrage], [StartDate], [EndDate], [TotalDays], [RateApplied], [TaxRate])
VALUES
	(1, 1, 1, 1, 80, 00.000, 60.500, 60.500, '09-10-2023', '09-12-2023', 2, 7, 7),
	(2, 2, 1, 1, 90, 00.000, 70.500, 70.500, '09-09-2023', '09-11-2023', 2, 8, 8),
	(3, 3, 1, 1, 100, 00.000, 80.500, 80.500, '09-07-2023', '09-09-2023', 2, 9, 9);