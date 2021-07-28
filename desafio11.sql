SELECT c1.ContactName as 'Nome', c1.Country as 'País', (SELECT COUNT(c2.Country) FROM w3schools.customers as c2 WHERE c1.Country = c2.Country AND c1.ContactName <> c2.ContactName) as 'Número de compatriotas'
FROM w3schools.customers as c1
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
