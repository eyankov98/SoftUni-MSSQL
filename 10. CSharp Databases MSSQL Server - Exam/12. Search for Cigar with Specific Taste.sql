CREATE OR ALTER PROCEDURE usp_SearchByTaste(@taste VARCHAR(50))
AS
BEGIN
	SELECT
		[c].[CigarName]
		,CONCAT_WS('', '$', [c].[PriceForSingleCigar]) AS [Price]
		,[t].[TasteType]
		,[b].[BrandName]
		,CONCAT_WS(' ', [s].[Length], 'cm') AS [CigarLength]
		,CONCAT_WS(' ', [s].[RingRange], 'cm') AS [CigarRingRange]
	FROM [Cigars] AS [c]
		INNER JOIN [Tastes] AS [t] ON [t].[Id] = [c].[TastId]
		INNER JOIN [Brands] AS [b] ON [b].[Id] = [c].[BrandId]
		INNER JOIN [Sizes] AS [s] ON [s].[Id] = [c].[SizeId]
	WHERE [t].[TasteType] = @taste
	ORDER BY [CigarLength] ASC, [CigarRingRange] DESC
END;