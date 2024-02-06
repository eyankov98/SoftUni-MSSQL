CREATE OR ALTER FUNCTION udf_ProductWithClients(@name VARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @totalNumberOfClients INT =
	(
		SELECT
			COUNT([pc].[ClientId])
		FROM [Products] AS [p]
			INNER JOIN [ProductsClients] AS [pc] ON [pc].[ProductId] = [p].[Id]
		WHERE [p].[Name] = @name
	)
	RETURN @totalNumberOfClients
END;