SELECT
  c1.ContactName AS Nome,
  c1.Country AS País,
  CASE
    WHEN c1.Country = c2.Country THEN COUNT(*) - 1
  END AS 'Número de compatriotas'
FROM w3schools.customers c1
LEFT JOIN w3schools.customers c2
  ON c1.Country = c2.Country
GROUP BY 2,
         1
HAVING COUNT(*) > 1
ORDER BY c1.ContactName;
