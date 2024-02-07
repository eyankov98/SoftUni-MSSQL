CREATE OR ALTER FUNCTION udf_RoomsWithTourists(@name NVARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @totalNumberOfTourists INT =
	(
		SELECT
			SUM([b].[AdultsCount] + [b].[ChildrenCount])
		FROM [Rooms] AS [r]
			INNER JOIN [Bookings] AS [b] ON [b].[RoomId] = [r].[Id]
		WHERE [r].[Type] = @name
	)
	RETURN @totalNumberOfTourists
END;