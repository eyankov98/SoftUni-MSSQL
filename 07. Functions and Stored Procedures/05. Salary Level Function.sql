CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18, 4))
RETURNS NVARCHAR(50)
AS
BEGIN
	DECLARE @salaryLevel NVARCHAR(50)

	IF (@salary < 30000)
	BEGIN
		SET @salaryLevel = 'Low'
	END
	ELSE IF (@salary >= 30000 AND @salary <= 50000)
	BEGIN
		SET @salaryLevel = 'Average'
	END
	ELSE
	BEGIN
		SET @salaryLevel = 'High'
	END

	RETURN @salaryLevel

END;