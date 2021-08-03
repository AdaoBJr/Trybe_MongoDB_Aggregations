SELECT
b.ContactName AS 'Nome',
a.Country AS 'País',
COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS a
INNER JOIN w3schools.customers AS b
ON a.Country = b.Country
GROUP BY 2, 1
HAVING COUNT(*) - 1 <> 0
ORDER BY 1 ASC;
