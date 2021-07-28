SELECT 
C1.ContactName 'Nome',
C1.Country 'País',
(COUNT(C2.Country) - 1) 'Número de compatriotas'
FROM
customers C1
,customers C2 WHERE C1.Country = C2.Country
GROUP BY `Nome`, C1.Country
HAVING `Número de compatriotas` > 0    
ORDER BY `Nome`;
