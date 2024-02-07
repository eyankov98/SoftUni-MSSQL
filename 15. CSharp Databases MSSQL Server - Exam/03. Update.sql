UPDATE [Bookings]
SET [DepartureDate] = DATEADD(DAY, 1, [DepartureDate])
WHERE MONTH([DepartureDate]) = 12 AND YEAR([DepartureDate]) = 2023

UPDATE [Tourists]
SET [Email] = NULL
WHERE [Name] LIKE '%MA%'