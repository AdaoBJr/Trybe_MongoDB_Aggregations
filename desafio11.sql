USE w3schools;
SELECT
  a.ContactName AS 'Nome',
  a.Country AS 'País',
  COUNT(b.Country) - 1 AS 'Número de compatriotas'
FROM
      customers AS a,
      customers AS b
WHERE a.Country = b.Country
AND a.CustomerID <> b.CustomerID
GROUP BY
          a.ContactName,
          a.Country
ORDER BY a.ContactName;
