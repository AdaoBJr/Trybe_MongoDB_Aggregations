SELECT
  c.country AS 'País'
FROM
  w3schools.suppliers as s
  INNER JOIN w3schools.customers as c
GROUP BY
  c.country
ORDER BY
  c.country
LIMIT
  5;
