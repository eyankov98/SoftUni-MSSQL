SELECT 
	MIN([Subquery].[AverageSalary]) AS [MinAverageSalary]
FROM
	(
		SELECT
			AVG([e].[Salary]) AS [AverageSalary]
		FROM 
			[Employees] AS [e]
			INNER JOIN [Departments] AS [d] ON [d].[DepartmentID] = [e].[DepartmentID]
		GROUP BY
			[d].[DepartmentID]
	) AS [Subquery]