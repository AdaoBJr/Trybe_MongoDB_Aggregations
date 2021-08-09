SELECT 
    custA.ContactName AS 'Nome',
    custA.Country AS 'País',
    (
        SELECT COUNT(*) FROM customers AS custB
        WHERE custB.Country = custA.Country 
        AND custB.ContactName != custA.ContactName
    ) AS `Número de compatriotas`
FROM customers AS custA
HAVING `Número de compatriotas` != 0
ORDER BY custA.ContactName;
