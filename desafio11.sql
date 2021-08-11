SELECT 
  b.ContactName AS 'Nome',
  b.Country AS 'País',
  (SELECT 
    COUNT(*)
      FROM
        w3schools.customers AS a
      WHERE
        a.Country = c.Country
      AND a.ContactName != b.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS b
HAVING `Número de compatriotas` != 0
ORDER BY b.ContactName;
