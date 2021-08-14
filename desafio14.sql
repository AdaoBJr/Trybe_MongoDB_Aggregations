(SELECT
Country AS 'País'
FROM
w3schools.customers AS c)
UNION
(SELECT
Country AS 'País'
FROM
w3schools.suppliers AS s)
ORDER BY
País
LIMIT
5;
