CREATE TABLE [Cities]
(
	[CityID] INT PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL
);

CREATE TABLE [Customers]
(
	[CustomerID] INT PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL,
	[Birthday] DATETIME2,
	[CityID] INT FOREIGN KEY 
	REFERENCES [Cities]([CityID])
);

CREATE TABLE [Orders]
(
	[OrderID] INT PRIMARY KEY,
	[CustomerID] INT FOREIGN KEY
	REFERENCES [Customers]([CustomerID])
);

CREATE TABLE [ItemTypes]
(
	[ItemTypeID] INT PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL
);

CREATE TABLE [Items]
(
	[ItemID] INT PRIMARY KEY,
	[Name] NVARCHAR(50),
	[ItemTypeID] INT FOREIGN KEY 
	REFERENCES [ItemTypes]([ItemTypeID])
);

CREATE TABLE [OrderItems]
(
	[OrderID] INT FOREIGN KEY
	REFERENCES [Orders]([OrderID]),
	[ItemID] INT FOREIGN KEY
	REFERENCES [Items]([ItemID])
	PRIMARY KEY ([OrderID], [ItemID])
);