SELECT
	[c].[Name] AS [Client]
	,FLOOR(AVG([p].[Price])) AS [Average Price]
FROM [Clients] AS [c]
	INNER JOIN [ProductsClients] AS [pc] ON [pc].[ClientId] = [c].[Id]
	INNER JOIN [Products] AS [p] ON [p].[Id] = [pc].[ProductId]
	INNER JOIN [Vendors] AS [v] ON [v].[Id] = [p].[VendorId]
WHERE [v].[NumberVAT] LIKE '%FR%'
GROUP BY [c].[Name]
ORDER BY [Average Price] ASC, [Client] DESC