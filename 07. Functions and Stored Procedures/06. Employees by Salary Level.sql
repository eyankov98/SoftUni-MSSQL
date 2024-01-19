CREATE OR ALTER PROCEDURE usp_EmployeesBySalaryLevel
@salaryLevel NVARCHAR(50)
AS
BEGIN
	SELECT
		[FirstName],
		[LastName]
	FROM [Employees]
	WHERE dbo.ufn_GetSalaryLevel([Salary]) = @salaryLevel
END;