SELECT DISTINCT Country AS 'País' FROM w3schools.customers
UNION
SELECT DISTINCT Country AS 'País' FROM w3schools.suppliers
ORDER BY Country
LIMIT `País`;
