SELECT c1.ContactName as 'Nome',
c2.Country as 'País',
COUNT(c2.Country) - 1 as 'Número de compatriotas'
FROM w3schools.customers as c1
LEFT JOIN
w3schools.customers as c2
ON c1.Country = c2.Country
GROUP BY `Nome` , `País`
HAVING (COUNT(c2.Country) - 1) > 0
ORDER BY `Nome`;
