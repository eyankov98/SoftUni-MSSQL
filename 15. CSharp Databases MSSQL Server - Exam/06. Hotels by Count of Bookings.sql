SELECT
	[h].[Id]
	,[h].[Name]
FROM [Hotels] AS [h]
	INNER JOIN [HotelsRooms] AS [hr] ON [hr].[HotelId] = [h].[Id]
	INNER JOIN [Rooms] AS [r] ON [r].[Id] = [hr].[RoomId]
	LEFT JOIN [Bookings] AS [b] ON [b].[HotelId] = [h].[Id]
WHERE [r].[Type] = 'VIP Apartment'
GROUP BY [h].[Id], [h].[Name]
ORDER BY COUNT([b].[Id]) DESC