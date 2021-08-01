SELECT
customers.Country `País`
FROM
w3schools.customers AS customers
UNION
SELECT
suppliers.Country 'País'
FROM
w3schools.suppliers AS suppliers
ORDER BY `País`
LIMIT 5;
