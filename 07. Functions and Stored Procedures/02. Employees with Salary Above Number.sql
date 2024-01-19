CREATE OR ALTER PROCEDURE usp_GetEmployeesSalaryAboveNumber
@salaryLevel DECIMAL(18,4)
AS
BEGIN
	SELECT
		[FirstName],
		[LastName]
	FROM [Employees]
	WHERE [Salary] >= @salaryLevel;
END;