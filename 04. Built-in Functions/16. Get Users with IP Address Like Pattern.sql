SELECT 
	[Username],
	[IpAddress] AS [Ip Address]
FROM [Users]
WHERE [IpAddress] LIKE '___.1%.%.___'
ORDER BY [Username];