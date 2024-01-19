CREATE OR ALTER FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(50), @word NVARCHAR(50))
RETURNS BIT
AS
BEGIN
	DECLARE @i INT = 1
	WHILE @i <= LEN(@word)
	BEGIN
		DECLARE @char NVARCHAR(1) = SUBSTRING(@word, @i, 1)
		IF (CHARINDEX(@char, @setOfLetters) = 0)
		BEGIN
			RETURN 0
		END
		ELSE
		BEGIN
			SET @i += 1
		END
	END
	RETURN 1
END;