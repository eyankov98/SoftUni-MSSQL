SELECT
	[b].[Id]
	,[b].[Name]
	,[b].[YearPublished]
	,[c].[Name] AS [CategoryName]
FROM [Boardgames] AS [b]
	INNER JOIN [Categories] AS [c] ON [c].[Id] = [b].[CategoryId]
WHERE [c].[Name] IN ('Strategy Games', 'Wargames')
ORDER BY [b].[YearPublished] DESC