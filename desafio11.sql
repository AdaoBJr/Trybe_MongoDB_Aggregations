SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            customers c
        WHERE
            c.Country = País) AS 'Número de compartriotas'
FROM
    customers c
WHERE
    c.Country = c.Country
GROUP BY c.ContactName , c.Country
ORDER BY Nome;
