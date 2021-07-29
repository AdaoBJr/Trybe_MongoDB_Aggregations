SELECT
  DISTINCT c.Country AS 'País'
FROM customers AS c
INNER JOIN suppliers AS s
ORDER BY c.Country
LIMIT 5;
