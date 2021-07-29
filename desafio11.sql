SELECT
  C.ContactName AS 'Nome',
  C.Country AS 'País',
  COUNT(C1.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS C, w3schools.customers AS C1
WHERE C.Country = C1.Country
AND C.ContactName <> C1.ContactName
GROUP BY C.ContactName, C.Country
ORDER BY C.ContactName;
