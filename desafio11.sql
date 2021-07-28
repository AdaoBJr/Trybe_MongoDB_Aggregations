SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            customers c
        WHERE
            c.Country = País) AS 'Número de compatriotas'
FROM
    customers c
WHERE
    c.Country = c.Country
GROUP BY c.ContactName , c.Country
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
