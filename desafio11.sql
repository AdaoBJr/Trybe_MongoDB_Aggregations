SELECT 
CS1.ContactName AS Nome,
CS1.Country AS País,
COUNT(CS2.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS CS1,
w3schools.customers AS CS2
WHERE CS1.ContactName <> CS2.ContactName AND CS1.Country = CS2.Country
GROUP BY CS1.CustomerID
ORDER BY Nome;
