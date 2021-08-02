SELECT C1.ContactName AS Nome, C1.Country AS País,
(SELECT COUNT(*) FROM w3schools.customers C2 WHERE C1.Country = C2.Country AND C1.ContactName <> C2.ContactName) `Número de compatriotas`
FROM w3schools.customers C1
HAVING `Número de compatriotas` <> 0 ORDER BY Nome;
