SELECT
  cs.ContactName AS 'Nome',
  cs.Country AS 'País',
  COUNT(c.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers cs
LEFT JOIN w3schools.customers AS c
  ON cs.Country = c.Country
GROUP BY cs.ContactName,
         cs.Country
HAVING COUNT(c.Country) > 1
ORDER BY cs.ContactName;
