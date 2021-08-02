SELECT DISTINCT
    Country AS 'País'
FROM
    w3schools.customers 
UNION SELECT DISTINCT
    Country
FROM
    w3schools.suppliers AS suppliers
ORDER BY País
LIMIT 5;
