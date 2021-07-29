SELECT A.ContactName 'Nome', A.Country 'País', COUNT(A.Country) 'Número de compatriotas'
FROM w3schools.customers A, w3schools.customers B
WHERE A.Country = B.Country AND A.CustomerID <> B.CustomerID
GROUP BY A.ContactName, A.Country
ORDER BY `Nome`;
