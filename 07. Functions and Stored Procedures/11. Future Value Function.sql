CREATE OR ALTER FUNCTION ufn_CalculateFutureValue(@sum DECIMAL(18, 2), @rate FLOAT, @years INT)
RETURNS DECIMAL(20, 4)
AS
BEGIN
	RETURN @sum * POWER((1 + @rate), @years)
END;