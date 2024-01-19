CREATE OR ALTER PROCEDURE usp_GetHoldersWithBalanceHigherThan
@balanceThreshold MONEY
AS
BEGIN
	SELECT
		[ah].[FirstName] AS [First Name],
		[ah].[LastName] AS [Last Name]
	FROM [AccountHolders] AS [ah]
		LEFT JOIN [Accounts] AS [a] ON [a].[AccountHolderId] = [ah].[Id]
	GROUP BY [ah].[Id], [ah].FirstName, [ah].LastName
	HAVING SUM([a].[Balance]) > @balanceThreshold
	ORDER BY [First Name], [Last Name]
END;