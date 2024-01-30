CREATE OR ALTER PROCEDURE usp_AnimalsWithOwnersOrNot(@AnimalName VARCHAR(50))
AS
BEGIN
	DECLARE @ownersName VARCHAR =
	(
		SELECT
			[OwnerId]
		FROM [Animals]
		WHERE [Name] = @AnimalName
	)

	IF (@ownersName) IS NULL
	BEGIN
		SELECT 
			[Name]
			,'For adoption' AS [OwnersName]
		FROM [Animals]
		WHERE [Name] = @AnimalName
	END
	ELSE
	BEGIN
		SELECT
			[a].[Name]
			,[o].[Name] AS [OwnersName]
		FROM [Animals] AS [a]
			INNER JOIN [Owners] AS [o] ON [o].[Id] = [a].[OwnerId]
		WHERE [a].[Name] = @AnimalName
	END
END;