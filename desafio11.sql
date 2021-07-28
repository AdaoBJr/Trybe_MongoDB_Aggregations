SELECT c1.ContactName 'Nome', c2.Country 'País', COUNT(*) 'Número de compatriotas'
FROM w3schools.customers c1, w3schools.customers c2
WHERE c1.Country = c2.Country AND c1.CustomerID <> c2.CustomerID
GROUP BY c1.ContactName
ORDER BY c1.ContactName;
