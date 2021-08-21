SELECT 
b.ContactName "Nome",
b.Country "País",
COUNT(a.CustomerID) "Número de compatriotas"
FROM customers a, customers b
WHERE a.Country = b.Country AND a.CustomerID <> b.CustomerID
GROUP BY b.CustomerID
ORDER BY `Nome`;
