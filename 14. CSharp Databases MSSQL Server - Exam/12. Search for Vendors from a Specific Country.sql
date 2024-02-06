CREATE OR ALTER PROCEDURE usp_SearchByCountry(@country VARCHAR(50))
AS
BEGIN
	SELECT
		[v].[Name] AS [Vendor]
		,[v].[NumberVAT] AS [VAT]
		,CONCAT_WS(' ', [a].[StreetName], [a].[StreetNumber]) AS [Street Info]
		,CONCAT_WS(' ', [a].[City], [a].[PostCode]) AS [City Info]
	FROM [Vendors] AS [v]
		INNER JOIN [Addresses] AS [a] ON [a].[Id] = [v].[AddressId]
		INNER JOIN [Countries] AS [c] ON [c].[Id] = [a].[CountryId]
	WHERE [c].[Name] = @country
	ORDER BY [Vendor] ASC, [a].[City] ASC
END;