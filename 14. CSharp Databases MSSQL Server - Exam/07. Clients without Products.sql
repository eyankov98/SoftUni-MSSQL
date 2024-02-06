SELECT
	[cl].[Id]
	,[cl].[Name] AS [Client]
	,CONCAT_WS(', ', CONCAT_WS(' ', [a].[StreetName], [a].[StreetNumber]), [a].[City], [a].[PostCode], [co].[Name]) AS [Address]
FROM [Clients] AS [cl]
	LEFT JOIN [ProductsClients] AS [pc] ON [pc].[ClientId] = [cl].[Id]
	LEFT JOIN [Addresses] AS [a] ON [a].[Id] = [cl].[AddressId]
	LEFT JOIN [Countries] AS [co] ON [co].[Id] = [a].[CountryId]
WHERE [pc].[ProductId] IS NULL
ORDER BY [Client] ASC