SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers c2
        WHERE
            c1.Country = c2.Country
                AND c1.ContactName <> c2.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c1
ORDER BY c1.ContactName;
