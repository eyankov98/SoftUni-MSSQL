SELECT
	CONCAT_WS(' ', [cl].[FirstName], [cl].[LastName]) AS [FullName]
	,[a].[Country]
	,[a].[ZIP]
	,(CONCAT_WS('', '$', MAX([ci].[PriceForSingleCigar]))) AS [CigarPrice]
FROM [Clients] AS [cl]
	INNER JOIN [Addresses] AS [a] ON [a].[Id] = [cl].AddressId
	INNER JOIN [ClientsCigars] AS [cc] ON [cc].ClientId = [cl].Id
	INNER JOIN [Cigars] AS [ci] ON [ci].[Id] = [cc].[CigarId]
WHERE [a].[ZIP] NOT LIKE '%[^0-9]%'
GROUP BY [cl].[FirstName], [cl].[LastName], [a].[Country], [a].[ZIP]
ORDER BY [FullName] ASC