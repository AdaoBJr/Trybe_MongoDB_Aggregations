SELECT
a.contactname AS 'Nome',
a.country AS 'País',
(SELECT (COUNT(country) - 1) FROM w3schools.customers AS b WHERE b.country = a.country) AS 'Número de compatriotas'
FROM w3schools.customers AS a
ORDER BY a.contactname;
