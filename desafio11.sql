SELECT * FROM w3schools.customers;
-- CustomerName AS `Nome`,
-- COUNT(*) - 1 AS `Compatriotas`

SELECT CustomerName AS `Nome`, Country AS `País`, COUNT(*) - 1 AS `Compatriotas`
FROM w3schools.customers
GROUP BY Country;


