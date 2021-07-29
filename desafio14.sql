(SELECT country FROM w3schools.customers ORDER BY country)
UNION
(SELECT country FROM w3schools.suppliers ORDER BY country)
ORDER BY country
LIMIT 5;
