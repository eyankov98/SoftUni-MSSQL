SELECT
	CONCAT_WS('-', [o].[Name], [a].[Name]) AS [OwnersAnimals]
	,[o].[PhoneNumber]
	,[c].[Id] AS [CageId]
FROM [Owners] AS [o]
	INNER JOIN [Animals] AS [a] ON [a].[OwnerId] = [o].[Id]
	INNER JOIN [AnimalTypes] AS [at] ON [at].[Id] = [a].[AnimalTypeId]
	INNER JOIN [AnimalsCages] AS [ac] ON [ac].AnimalId = [a].[Id]
	INNER JOIN [Cages] AS [c] ON [c].[Id] = [ac].[CageId]
WHERE [at].[AnimalType] = 'Mammals'
ORDER BY [o].[Name] ASC, [a].[Name] DESC