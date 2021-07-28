SELECT
c.Country AS 'País'
FROM w3schools.customers AS c
INNER JOIN w3schools.suppliers AS s
ON s.Country <> c.Country
GROUP BY 1
ORDER BY 1
LIMIT 5;
