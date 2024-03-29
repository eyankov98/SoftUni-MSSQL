SELECT TOP(5)
	[c].[CountryName],
	MAX([p].[Elevation]) AS [HighestPeakElevation],
	MAX([r].[Length]) AS [LongestRiverLength]
FROM
	[Countries] AS [c]
	INNER JOIN [MountainsCountries] AS [mc] ON [mc].[CountryCode] = [c].[CountryCode]
	INNER JOIN [Peaks] AS [p] ON [p].[MountainId] = [mc].[MountainId]
	INNER JOIN [CountriesRivers] AS [cr] ON [cr].[CountryCode] = [c].[CountryCode]
	INNER JOIN [Rivers] AS [r] ON [r].[Id] = [cr].[RiverId]
GROUP BY
	[c].[CountryName]
ORDER BY 
	[HighestPeakElevation] DESC,
	[LongestRiverLength] DESC,
	[c].[CountryName];