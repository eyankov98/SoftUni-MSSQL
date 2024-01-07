CREATE TABLE [Users] 
(	
	[Id] BIGINT PRIMARY KEY IDENTITY,
	[Username] VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	[ProfilePicture] VARBINARY(MAX),
	[LastLoginTime] DATETIME2,
	[IsDeleted] BIT
)

INSERT INTO [Users]([Username], [Password], [ProfilePicture], [LastLoginTime], [IsDeleted])
VALUES
	('Edgar', '1234567', null, '09-14-2023', 0),
	('Olya', '12345678', null, '09-13-2023', 0),
	('Radi', '123456', null, '09-12-2023', 1),
	('Gabriela', '12345', null, '09-11-2023', 0),
	('Martin', '123456789', null, '09-10-2023', 1)