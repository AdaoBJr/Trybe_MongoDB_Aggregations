SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS cu
        WHERE
            cu.Country = c.Country
                AND cu.ContactName != c.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers AS c
HAVING `Número de compatriotas` != 0
ORDER BY c.ContactName;