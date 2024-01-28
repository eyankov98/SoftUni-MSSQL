CREATE OR ALTER FUNCTION udf_ClientWithCigars(@name VARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @totalNumberOfCigars INT =
	(
		SELECT
			COUNT([cc].[CigarId])
		FROM [Clients] AS [cl]
			INNER JOIN [ClientsCigars] AS [cc] ON [cc].[ClientId] = [cl].[Id]
		WHERE [cl].[FirstName] = @name
	)
	RETURN @totalNumberOfCigars
END;