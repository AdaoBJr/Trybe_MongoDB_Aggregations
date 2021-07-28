SELECT
c.Country
FROM w3schools.customers c
LEFT JOIN w3schools.suppliers s
ON c.Country = s.Country
UNION
SELECT
s.Country
FROM w3schools.customers c
RIGHT JOIN w3schools.suppliers s
ON c.Country = s.Country
GROUP BY 1
ORDER BY 1 ASC
LIMIT 5;
