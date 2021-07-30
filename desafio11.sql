SELECT c.ContactName AS `Nome`,
c.Country AS `Páis`,
COUNT(c.Country) AS `Número de compatriotas`
FROM w3schools.customers c, w3schools.customers c1
WHERE c1.Country = c.Country
AND c.ContactName <> c1.ContactName
GROUP BY c.ContactName, c.Country
HAVING `Número de compatriotas` > 0
ORDER BY c.ContactName;
