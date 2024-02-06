DELETE FROM [Invoices] 
WHERE [ClientId] = 11

DELETE FROM [ProductsClients]
WHERE [ClientId] = 11

DELETE FROM [Clients]
WHERE SUBSTRING([NumberVAT], 1, 2) = 'IT'