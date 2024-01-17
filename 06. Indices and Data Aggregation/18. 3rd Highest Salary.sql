SELECT 
	[DepartmentID],
	[Salary] AS [ThirdHighestSalary]
FROM
	(
		SELECT
			[DepartmentID],
			[Salary],
			DENSE_RANK() OVER (PARTITION BY [DepartmentID] ORDER BY [Salary] DESC) AS [SalaryRanking]
		FROM [Employees]
		GROUP BY [DepartmentID], [Salary]
	) AS [Subquery]
WHERE [Subquery].[SalaryRanking] = 3;