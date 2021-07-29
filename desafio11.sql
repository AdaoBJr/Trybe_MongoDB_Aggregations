SELECT
  t1.ContactName AS 'Nome',
  t1.Country AS 'País',
  (SELECT
    COUNT(*)
  FROM customers AS t2
  WHERE t1.Country = t2.Country
  AND t1.ContactName <> t2.ContactName)
  AS 'Número de compatriotas'
FROM customers AS t1
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
