SELECT
	[cl].[LastName]
	,AVG([s].[Length]) AS [CiagrLength]
	,CEILING(AVG([s].[RingRange])) AS [CiagrRingRange]
FROM [Clients] AS [cl]
	INNER JOIN [ClientsCigars] AS [cc] ON [cc].[ClientId] = [cl].[Id]
	INNER JOIN [Cigars] AS [ci] ON [ci].[Id] = [cc].[CigarId]
	INNER JOIN [Sizes] AS [s] ON [s].[Id] = [ci].[SizeId]
GROUP BY [cl].[LastName]
ORDER BY [CiagrLength] DESC