CREATE OR ALTER PROCEDURE usp_CalculateFutureValueForAccount(@accountId INT, @interestRate FLOAT)
AS
BEGIN
	DECLARE @years INT = 5

	SELECT 
		[a].[Id] AS [Account Id],
		[ah].[FirstName] AS [First Name],
		[ah].[LastName] AS [Last Name],
		[a].[Balance] AS [Current Balance],
		dbo.ufn_CalculateFutureValue([a].[Balance], @interestRate, @years) AS [Balance in 5 years]
	FROM AccountHolders AS [ah]
	INNER JOIN [Accounts] AS [a] ON [a].[AccountHolderId] = [ah].[Id]
	WHERE [a].[Id] = @accountId
END;