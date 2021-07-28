SELECT
  t1.ContactName AS 'Nome',
  t1.Country AS 'País',
  (SELECT
    COUNT(*)
  FROM w3schools.customers AS t2
  WHERE t1.Country = t2.Country
  AND t1.ContactName <> t2.ContactName)
  AS 'Número de compatriotas'
FROM w3schools.customers AS t1
ORDER BY t1.ContactName;
