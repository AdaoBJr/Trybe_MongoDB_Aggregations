SELECT 
    customers_table.ContactName as Nome,
    customers_table.Country as País,
    (SELECT 
            (COUNT(Country) - 1) AS comparison
        FROM
            w3schools.customers as second_customers_table
        WHERE
            second_customers_table.Country = customers_table.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customers_table
GROUP BY ContactName , Country
HAVING `Número de compatriotas` >= 1
ORDER BY ContactName;
