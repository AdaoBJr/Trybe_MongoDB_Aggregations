SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS c2
        WHERE
            c2.Country = `País`) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
GROUP BY `Nome` HAVING `Número de compatriotas` > 0 
ORDER BY `Nome`;
