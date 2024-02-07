SELECT
	[h].[Name] AS [HotelName]
	,SUM([r].[Price] * DATEDIFF(DAY, [b].[ArrivalDate], [b].[DepartureDate])) AS [HotelRevenue]
FROM [Bookings] AS [b]
	INNER JOIN [Hotels] AS [h] ON [h].[Id] = [b].[HotelId]
	INNER JOIN [Rooms] AS [r] ON [r].[Id] = [b].[RoomId]
GROUP BY [h].[Name]
ORDER BY [HotelRevenue] DESC