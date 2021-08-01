SELECT o.ContactName AS 'Nome', o.Country AS 'País', COUNT(o.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers o
INNER JOIN w3schools.customers p
    ON p.Country = o.Country
GROUP BY  o.ContactName, o.Country
HAVING COUNT(o.Country) - 1 > 0;
