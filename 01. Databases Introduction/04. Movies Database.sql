CREATE TABLE [Directors]
(
	[Id] INT PRIMARY KEY,
	[DirectorName] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Directors]([Id], [DirectorName], [Notes])
VALUES
	(1, 'Antoine Fuqua', 'Antoine Fuqua is an American film director known for his work in the genres of action and thriller.'),
	(2, 'Nimrod Antal', 'Nimrod E. Antal is a Hungarian-American film director, screenwriter and actor.'),
	(3, 'Michael Chaves', 'Michael Chavs is an American film director, screenwriter, visual effects artist, editor and executive producer.'),
	(4, 'Christopher Jonathan James Nolan', 'Christopher Jonathan James Nolan, CBE is a British-American director, screenwriter and producer winner of Hugo Awards, British Independent Film Award and five Saturn Awards.'),
	(5, 'Neill Blomkamp', 'Neil Blomkamp is a South African and Canadian director, screenwriter and producer.');

CREATE TABLE [Genres]
(
	[Id] INT PRIMARY KEY,
	[GenreName] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Genres]([Id], [GenreName], [Notes])
VALUES
	(1, 'Action, Pulp Fiction, Thriller', 'Genre filled with Action, Pulp Fiction and Thriller.'),
	(2, 'Action, Pulp Fiction, Drama', 'Genre filled with Action, Pulp Fiction and Drama.'),
	(3, 'Horror, Mystery, Thriller', 'Genre filled Horror, Mystery and Thriller.'),
	(4, 'Biographic, Drama, Historical, Thriller', 'Genre filled Biographic, Drama, Historical and Thriller.'),
	(5, 'Action', 'Genre filled with Action.');

CREATE TABLE [Categories]
(
	[Id] INT PRIMARY KEY,
	[CategoryName] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Categories]([Id], [CategoryName], [Notes])
VALUES
	(1, 'Action-Thriller', 'Movies in the action genre are fast-paced and include a lot of action like fight scenes, chase scenes, and slow-motion shots. Thrillers expertly blend mystery, tension, and anticipation into one exciting story.'),
	(2, 'Action-Drama', 'Movies in the action genre are fast-paced and include a lot of action like fight scenes, chase scenes, and slow-motion shots. The drama genre features stories with high stakes and many conflicts.'),
	(3, 'Horror-Thriller', 'Horror films feature elements that leave people with an overwhelming sense of fear and dread. Thrillers expertly blend mystery, tension, and anticipation into one exciting story.'),
	(4, 'Drama-Thriller', 'The drama genre features stories with high stakes and many conflicts. Thrillers expertly blend mystery, tension, and anticipation into one exciting story.'),
	(5, 'Action', 'Movies in the action genre are fast-paced and include a lot of action like fight scenes, chase scenes, and slow-motion shots.');

CREATE TABLE [Movies]
(
	[Id] INT PRIMARY KEY,
	[Title] NVARCHAR(20) NOT NULL,
	[DirectorId] INT NOT NULL,
	[CopyrightYear] DATETIME2, 
	[Length] INT,
	[GenreId] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	[Rating] DECIMAL(10, 1),
	[Notes] NVARCHAR(MAX)
);
INSERT INTO [Movies]([Id], [Title], [DirectorId], [CopyrightYear], [Length], [GenreId], [CategoryId], [Rating], [Notes])
VALUES
	(1, 'The Equalizer 3', 1, '09-01-2023', 109, 1, 1, 9.1, 'After giving up his life as a government assassin, Robert struggles to come to terms with the terrible things he has done in the past and finds solace in helping the weak and oppressed.'),
    (2, 'Retribution', 2, '08-25-2023', 91, 2, 2, 8.8, 'Matt Turner is an American businessman who lives in Berlin. His life is turned upside down when he is thrust into a ruthless race against time to save his family.'),
    (3, 'The Nun 2', 3, '09-08-2023', 110, 3, 3, 8.9, 'France, 1956. A priest was brutally murdered. Evil spreads its tentacles. The sequel to the worldwide hit Nun will follow Sister Irene, who will once again come face to face with the demonic force known as Valek, the demonic nun.'),
	(4, 'Oppenheimer', 4, '07-21-2023', 180, 4, 4, 8.5, 'Robert Oppenheimer and his role in the creation of the first atomic bomb. An event that, for better or worse, forever changes the world we live in.'),
	(5, 'Gran Turismo', 5, '08-11-2023', 134, 5, 5, 8.3, 'Inspired by the incredible story of Yann Mardenborough, Gran Turismo shows the realization of an impossible dream. Gamer Yang joins forces with former racer Jack Salter and Nissan idealist Danny Moore.');
