CREATE TABLE [People]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	[Picture] NVARCHAR(MAX) NULL,
	[Height] DECIMAL(10, 2) NULL,
	[Weight] DECIMAL(10, 2) NULL,
	[Gender] CHAR(1) NOT NULL,
	[Birthdate] DATETIME2 NOT NULL,
	[Biography] NVARCHAR(MAX) NULL
)

INSERT INTO [People]([Name], [Picture], [Height], [Weight], [Gender], [Birthdate], [Biography])
VALUES
	('Edgar', null, 1.85, 85.5, 'm', '07-29-1998', 'Hello, I am Edgar Yankov. I like to play computer games'),
	('Olya', null, 1.55, 52.500, 'f', '10-05-2001', 'Hello, I am Olya Sedmakova. I like to read books.'),
	('Radi', null, 1.85, 75.500, 'm', '07-31-1952', 'Hello, I am Radi Yankov. I like to play handball.'),
	('Gabriela', null, 1.70, 65.500, 'f', '08-23-1975', 'Hello, I am Gabriela Boneva. I like to read books'),
	('Martin', null, 1.85, 85.500, 'm', '09-24-1985', 'Hello, I am Martin Yankov. I like to watch football')