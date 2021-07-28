SELECT c1.ContactName 'Nome', c1.Country 'País', (SELECT COUNT(*) FROM w3schools.customers c2 WHERE c1.Country = c2.Country AND c1.ContactName <> c2.ContactName) `Número de compatriotas`
FROM w3schools.customers c1
GROUP BY c1.ContactName
HAVING `Número de compatriotas` <> 0
ORDER BY c1.ContactName;
