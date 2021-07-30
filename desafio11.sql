-- Realizado com ajuda de Rafael Mathias
SELECT 
    a.ContactName AS "Nome",
    a.Country as "País",
    COUNT(b.country) - 1 as "Número de compatriotas"
FROM customers as a, customers as b
WHERE a.country = b.country
GROUP BY  a.Country, a.ContactName
HAVING COUNT(b.country) - 1 <> 0
ORDER BY a.ContactName;
