SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    COUNT(c2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers c1,
    w3schools.customers c2
WHERE
    c1.Country = c2.Country
GROUP BY c1.Country , c2.Country , c1.ContactName
ORDER BY c1.ContactName;
