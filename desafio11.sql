SELECT 
    b.ContactName AS Nome,
    b.Country AS País,
    COUNT(b.Country) AS 'Número de compatriotas'
FROM
    customers AS a,
    customers AS b
WHERE
    a.CustomerID <> b.CustomerID
        AND a.Country = b.Country
GROUP BY b.Country , b.ContactName
ORDER BY b.ContactName;
