SELECT a.ContactName AS Nome, a.Country AS País,
COUNT(b.Country) AS `Número de compatriotas`
FROM w3schools.customers a, w3schools.customers b
WHERE a.Country = b.Country
AND a.ContactName <> b.ContactName
GROUP BY a.ContactName, a.Country
ORDER BY a.ContactName;
