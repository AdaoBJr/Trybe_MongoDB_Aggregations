SELECT col1.ContactName AS `Nome`,
col1.Country AS `País`,
(SELECT COUNT(*) FROM w3schools.customers AS col2
WHERE col1.Country = col2.Country 
AND col1.ContactName <> col2.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS col1
HAVING `Número de compatriotas` <> 0
ORDER BY col1.ContactName ASC;
