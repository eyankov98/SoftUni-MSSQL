SELECT 
	[CountryName] AS [Country Name],
	[IsoCode] AS [ISO Code]
FROM [Countries]
WHERE LOWER([CountryName]) LIKE '%A%A%A%'
ORDER BY [ISO Code];