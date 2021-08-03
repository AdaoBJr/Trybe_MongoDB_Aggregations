SELECT
  c.ContactName AS 'Nome',
  c.Country AS 'País',
  COUNT(c.ContactName) AS 'Número de compatriotas'
FROM
  customers AS c,
  customers AS c2
WHERE
  c.Country = c2.Country
GROUP BY
  Nome,
  `País`
ORDER BY
  `País`;
