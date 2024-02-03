CREATE OR ALTER PROCEDURE usp_AnnualRewardLottery(@TouristName VARCHAR(50))
AS
BEGIN
	DECLARE @countOfTheSites INT = 
	(
		SELECT
			COUNT([s].[Id])
		FROM [Sites] AS [s]
			INNER JOIN [SitesTourists] AS [st] ON [st].[SiteId] = [s].[Id]
			INNER JOIN [Tourists] AS [t] ON [t].[Id] = [st].[TouristId]
		WHERE [t].[Name] = @TouristName
	)

	IF (@countOfTheSites >= 100)
	BEGIN
		UPDATE [Tourists] 
		SET [Reward] = 'Gold badge'
		WHERE [Name] = @TouristName
	END
	ELSE IF (@countOfTheSites >= 50)
	BEGIN
		UPDATE [Tourists]
		SET [Reward] = 'Silver badge'
		WHERE [Name] = @TouristName
	END
	ELSE IF (@countOfTheSites >= 25)
	BEGIN
		UPDATE [Tourists]
		SET [Reward] = 'Bronze badge'
		WHERE [Name] = @TouristName
	END
	SELECT
		[Name]
		,[Reward]
	FROM [Tourists]
	WHERE [Name] = @TouristName
END