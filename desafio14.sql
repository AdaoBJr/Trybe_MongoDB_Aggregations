SELECT DISTINCT Country FROM w3schools.customers 
UNION 
SELECT DISTINCT Country FROM w3schools.suppliers
AS País
ORDER BY Country
LIMIT 5;
