SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    COUNT(c1.ContactName) - 1 AS 'Compatriotas'
FROM
    customers AS c1,
    customers AS c2
WHERE
    c1.Country = c2.Country
GROUP BY c1.ContactName
ORDER BY c1.ContactName;
