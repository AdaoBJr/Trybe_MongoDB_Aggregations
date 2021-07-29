SELECT 
    c.ContactName AS 'Nome',
    c.country AS 'País',
    COUNT(c.Country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
        LEFT JOIN
    w3schools.customers AS ct ON ct.Country = c.Country
GROUP BY Nome , País
HAVING `Número de compatriotas`
ORDER BY Nome;
