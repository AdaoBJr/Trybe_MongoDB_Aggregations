SELECT custom_n.ContactName AS 'Nome',
custom_p.Country AS 'País',
COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS custom_p
INNER JOIN w3schools.customers AS custom_n ON custom_p.Country = custom_n.Country
GROUP BY 2, 1
HAVING `Número de compatriotas` <> 0
ORDER BY 1 ASC;
