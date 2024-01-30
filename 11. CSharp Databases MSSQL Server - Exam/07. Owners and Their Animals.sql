SELECT TOP(5)
	[Owner]
	,MAX([CountOfAnimals]) AS [CountOfAnimals]
FROM
	(SELECT
		[o].[Name] AS [Owner]
		,COUNT([a].[Id]) AS [CountOfAnimals]
	FROM [Animals] AS [a]
			INNER JOIN [Owners] AS [o] ON [o].[Id] = [a].OwnerId
	GROUP BY [o].[Name]) AS Subquery
GROUP BY [Owner]
ORDER BY [CountOfAnimals] DESC, [Owner] ASC