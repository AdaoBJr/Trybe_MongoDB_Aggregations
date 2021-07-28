SELECT
ContactName AS 'Nome',
Country AS 'País',
(SELECT COUNT(*) - 1 FROM w3schools.customers AS t1
WHERE t1.Country = `País`
) AS 'Número de compatriotas'
FROM w3schools.customers
HAVING `Número de compatriotas` <> 0
ORDER BY ContactName;
