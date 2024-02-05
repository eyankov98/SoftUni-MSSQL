CREATE OR ALTER FUNCTION udf_CreatorWithBoardgames(@name VARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @totalNumberOfBoardgames INT =
	(
		SELECT
			COUNT([cb].[BoardgameId])
		FROM [Creators] AS [c]
			INNER JOIN [CreatorsBoardgames] AS [cb] ON [cb].[CreatorId] = [c].[Id]
		WHERE [c].[FirstName] = @name
	)
	RETURN @totalNumberOfBoardgames
END;