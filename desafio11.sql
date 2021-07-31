SELECT 
c.ContactName as 'Nome',
a.País,
a.`Número de compatriotas`
FROM (SELECT
Country as "País",
COUNT(Country) - 1 as 'Número de compatriotas'
FROM w3schools.customers
GROUP BY(`País`)
) as a
INNER JOIN w3schools.customers as c
ON c.Country = a.`País`
WHERE a.`Número de compatriotas` > 0
ORDER BY `Nome`;
