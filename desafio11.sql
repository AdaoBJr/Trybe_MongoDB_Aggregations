SELECT
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT
            COUNT(*)
        FROM
            w3schools.customers AS cc
        WHERE
            c.Country = cc.Country
                AND c.ContactName <> cc.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
HAVING `Número de compatriotas` <> 0
ORDER BY c.ContactName ASC;
