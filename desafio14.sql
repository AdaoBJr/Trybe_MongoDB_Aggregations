SELECT
  DISTINCT(s.country) AS 'País'
FROM
  w3schools.customers as c
  INNER JOIN w3schools.suppliers as s
ORDER BY
  s.country
LIMIT
  5;
