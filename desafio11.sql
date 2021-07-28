SELECT c1.ContactName AS Nome, c1.Country AS País, COUNT(*) AS `Número de compatriotas` 
FROM w3schools.customers as c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country AND c1.CustomerName <> c2.CustomerName
GROUP BY c1.ContactName, c1.Country
ORDER BY Nome;
