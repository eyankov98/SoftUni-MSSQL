CREATE OR ALTER FUNCTION udf_GetVolunteersCountFromADepartment(@VolunteersDepartment VARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @countOfVolunteers INT =
	(
		SELECT
			COUNT([v].[Id])
		FROM Volunteers AS [v]
			INNER JOIN [VolunteersDepartments] AS [vd] ON [vd].[Id] = [v].[DepartmentId]
		WHERE [vd].[DepartmentName] = @VolunteersDepartment
	)
	RETURN @countOfVolunteers
END;