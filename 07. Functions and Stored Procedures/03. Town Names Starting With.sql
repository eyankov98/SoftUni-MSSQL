CREATE OR ALTER PROCEDURE usp_GetTownsStartingWith
@nameOfTown NVARCHAR(50)
AS
BEGIN
	SELECT
		[Name] AS [Town]
	FROM [Towns]
	WHERE LEFT([Name], LEN(@nameOfTown)) = @nameOfTown;
END;