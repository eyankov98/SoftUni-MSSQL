SELECT
	[h].[Name] AS [HotelName]
	,[r].[Price] AS [RoomPrice]
FROM [Tourists] AS [t]
	INNER JOIN [Bookings] AS [b] ON [b].[TouristId] = [t].[Id]
	INNER JOIN [Hotels] AS [h] ON [h].[Id] = [b].[HotelId]
	INNER JOIN [Rooms] AS [r] ON [r].[Id] = [b].[RoomId]
WHERE [t].[Name] NOT LIKE '%EZ' AND [b].[TouristId] IS NOT NULL
ORDER BY [RoomPrice] DESC