SELECT 
    customer1.ContactName AS `Nome`,
    customer1.Country AS `País`,
    COUNT(customer1.ContactName) -1 AS `Número de compatriotas`
FROM 
    w3schools.customers AS customer1,
    w3schools.customers AS customer2
WHERE customer1.Country = customer2.Country
GROUP BY  `Nome`
ORDER BY  `Nome`;
