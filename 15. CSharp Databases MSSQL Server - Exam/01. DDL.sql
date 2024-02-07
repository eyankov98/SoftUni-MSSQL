CREATE DATABASE [TouristAgency]

USE [TouristAgency]

CREATE TABLE [Countries]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL
);

CREATE TABLE [Destinations]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) NOT NULL,
	[CountryId] INT FOREIGN KEY
	REFERENCES [Countries]([Id]) NOT NULL
);

CREATE TABLE [Rooms]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Type] VARCHAR(40) NOT NULL,
	[Price] DECIMAL(18, 2) NOT NULL,
	[BedCount] INT NOT NULL
);

CREATE TABLE [Hotels]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) NOT NULL,
	[DestinationId] INT FOREIGN KEY
	REFERENCES [Destinations]([Id])
);

CREATE TABLE [Tourists]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(80) NOT NULL,
	[PhoneNumber] VARCHAR(20) NOT NULL,
	[Email] VARCHAR(80),
	[CountryId] INT FOREIGN KEY
	REFERENCES [Countries]([Id]) NOT NULL
);

CREATE TABLE [Bookings]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[ArrivalDate] DATETIME2 NOT NULL,
	[DepartureDate] DATETIME2 NOT NULL,
	[AdultsCount] INT NOT NULL,
	[ChildrenCount] INT NOT NULL,
	[TouristId] INT FOREIGN KEY
	REFERENCES [Tourists]([Id]) NOT NULL,
	[HotelId] INT FOREIGN KEY
	REFERENCES [Hotels]([Id]) NOT NULL,
	[RoomId] INT FOREIGN KEY
	REFERENCES [Rooms]([Id]) NOT NULL
);

CREATE TABLE [HotelsRooms]
(
	[HotelId] INT FOREIGN KEY
	REFERENCES [Hotels]([Id]) NOT NULL,
	[RoomId] INT FOREIGN KEY
	REFERENCES [Rooms]([Id]) NOT NULL
	PRIMARY KEY ([HotelId], [RoomId])
);