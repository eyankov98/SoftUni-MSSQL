CREATE OR ALTER PROCEDURE usp_SearchByCategory(@category VARCHAR(50))
AS
BEGIN
	SELECT
		[b].[Name]
		,[b].[YearPublished]
		,[b].[Rating]
		,[c].[Name] AS [CategoryName]
		,[p].[Name] AS [PublisherName]
		,CONCAT_WS(' ', [pr].[PlayersMin], 'people') AS [MinPlayers]
		,CONCAT_WS(' ', [pr].[PlayersMax], 'people') AS [MaxPlayers]
	FROM [Boardgames] AS [b]
		INNER JOIN [Categories] AS [c] ON [c].[Id] = [b].[CategoryId]
		INNER JOIN [Publishers] AS [p] ON [p].[Id] = [b].[PublisherId]
		INNER JOIN [PlayersRanges] AS [pr] ON [pr].[Id] = [b].[PlayersRangeId]
	WHERE [c].[Name] = @category
	ORDER BY [PublisherName] ASC, [b].[YearPublished] DESC
END;