SELECT
	CONCAT_WS(' ', [c].[FirstName], [c].[LastName]) AS [FullName]
	,[c].[Email]
	,MAX([b].[Rating]) AS Rating
FROM [Creators] AS [c]
	INNER JOIN [CreatorsBoardgames] AS [cb] ON [cb].[CreatorId] = [c].[Id]
	INNER JOIN [Boardgames] AS [b] ON [b].[Id] = [cb].[BoardgameId]
WHERE [c].[Email] LIKE '%.com'
GROUP BY [c].[FirstName], [c].[LastName], [c].[Email]
ORDER BY [FullName] ASC