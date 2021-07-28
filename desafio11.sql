SELECT C.ContactName AS `Nome`
, 
C.Country AS `País`
, 
COUNT(D.CustomerID) AS `Número de compatriotas` 
FROM w3schools.customers AS C
, 
w3schools.customers AS D 
WHERE C.CustomerID <> D.CustomerID 
AND C.Country = D.Country 
GROUP BY C.ContactName 
ORDER BY `Nome`; 
