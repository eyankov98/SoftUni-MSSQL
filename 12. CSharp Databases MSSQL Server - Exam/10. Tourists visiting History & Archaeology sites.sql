SELECT
	SUBSTRING([t].[Name], CHARINDEX(' ', [t].[Name]) + 1, LEN([t].[Name])) AS [LastName]
	,[t].[Nationality]
	,[t].[Age]
	,[t].[PhoneNumber]
FROM [Tourists] AS [t]
	INNER JOIN [SitesTourists] AS [st] ON [st].[TouristId] = [t].[Id]
	INNER JOIN [Sites] AS [s] ON [s].[Id] = [st].[SiteId]
	INNER JOIN [Categories] AS [c] ON [c].[Id] = [s].[CategoryId]
WHERE [c].[Name] = 'History and archaeology'
GROUP BY [t].[Name], [t].[Nationality], [t].[Age], [t].[PhoneNumber]
ORDER BY [LastName] ASC