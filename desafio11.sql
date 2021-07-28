SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS c1
        WHERE
            c1.Country = c.Country
                AND c1.ContactName != c.ContactName) AS Número de compatriotas
FROM
    w3schools.customers AS c
HAVING Número de compatriotas != 0
ORDER BY c.ContactName;
