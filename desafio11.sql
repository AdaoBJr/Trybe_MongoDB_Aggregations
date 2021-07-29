SELECT
a.contactname AS 'Nome',
a.country AS 'País',
(SELECT (COUNT(b.country) - 1) FROM w3schools.customers AS b WHERE b.country = a.country) AS 'Número de compatriotas'
FROM w3schools.customers AS a
WHERE a.country NOT IN (SELECT country FROM w3schools.customers GROUP BY country HAVING COUNT(*) = 1)
ORDER BY a.contactname;
