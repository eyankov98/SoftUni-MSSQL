SELECT TOP(50)
	[e].[EmployeeID],
	CONCAT_WS(' ', [e].[FirstName], [e].[LastName]) AS [EmployeeName],
	CONCAT_WS(' ', [m].[FirstName], [m].[LastName]) AS [ManagerName],
	[d].[Name] AS [DepartmentName]
FROM 
	[Employees] AS [e]
	INNER JOIN [Employees] AS [m] ON [e].[ManagerID] = [m].[EmployeeID]
	INNER JOIN [Departments] AS [d] ON [d].[DepartmentID] = [e].[DepartmentID]
ORDER BY
	[e].[EmployeeID];