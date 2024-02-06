SELECT
	[c].[Name] AS [Client]
	,MAX([p].[Price]) AS [Price]
	,[c].[NumberVAT]
FROM [Clients] AS [c]
	INNER JOIN [ProductsClients] AS [pc] ON [pc].[ClientId] = [c].[Id]
	INNER JOIN [Products] AS [p] ON [p].[Id] = [pc].[ProductId]
WHERE [c].[Name] NOT LIKE '%KG'
GROUP BY [c].[Name], [c].[NumberVAT]
ORDER BY [Price] DESC