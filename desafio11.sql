SELECT t1.ContactName AS 'Nome',
t1.Country AS 'País',
COUNT(t1.Country) - 1 AS 'Número de compatriotas'   
FROM customers AS t1, customers AS t2   
WHERE t1.Country = t2.Country    
GROUP BY `Nome`, `País`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
