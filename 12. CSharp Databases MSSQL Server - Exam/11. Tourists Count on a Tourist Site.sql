CREATE OR ALTER FUNCTION udf_GetTouristsCountOnATouristSite(@Site VARCHAR(100))
RETURNS INT
AS
BEGIN
	DECLARE @countOfTourists INT = 
	(
		SELECT
			COUNT([t].[Id])
		FROM [Tourists] AS [t]
			INNER JOIN [SitesTourists] AS [st] ON [st].[TouristId] = [t].[Id]
			INNER JOIN [Sites] AS [s] ON [s].[Id] = [st].[SiteId]
		WHERE [s].[Name] = @Site
	)
	RETURN @countOfTourists
END