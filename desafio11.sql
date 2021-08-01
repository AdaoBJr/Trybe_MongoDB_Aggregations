SELECT 
    c.ContactName AS 'Nome de contato',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers
        WHERE
            Country = c.Country
                AND ContactName != c.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers AS c
HAVING `Número de compatriotas` != 0
ORDER BY 1 ASC;
