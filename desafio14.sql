SELECT 
    custom.Country AS 'País'
FROM
    w3schools.customers AS custom
        LEFT JOIN
    w3schools.suppliers AS supli ON custom.Country = supli.Country 
UNION SELECT 
    suplier.Country
FROM
    w3schools.customers AS customer
        RIGHT JOIN
    w3schools.suppliers AS suplier ON customer.Country = suplier.Country
GROUP BY 1
ORDER BY `País` ASC
LIMIT 5;
