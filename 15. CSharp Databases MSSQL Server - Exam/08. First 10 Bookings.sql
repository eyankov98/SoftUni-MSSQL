SELECT TOP(10)
	[h].[Name] AS [HotelName]
	,[d].[Name] AS [DestinationName]
	,[c].[Name] AS [CountryName]
FROM [Bookings] AS [b]
	INNER JOIN [Hotels] AS [h] ON [h].[Id] = [b].[HotelId]
	INNER JOIN [Destinations] AS [d] ON [d].[Id] = [h].[DestinationId]
	INNER JOIN [Countries] AS [c] ON [c].[Id] = [d].[CountryId]
WHERE [b].[ArrivalDate] <= '2023-12-31' AND [h].[Id] % 2 != 0
ORDER BY [CountryName] ASC, [b].[ArrivalDate] ASC