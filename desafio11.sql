SELECT 
b.ContactName AS "Nome",
b.Country AS "País",
COUNT(a.CustomerID) - 1 AS "Número de compatriotas"
FROM customers a, customers b
WHERE a.Country = b.Country
GROUP BY b.CustomerID
ORDER BY `Nome`;
