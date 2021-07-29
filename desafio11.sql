SELECT 
    table_customers.ContactName 'Nome',
    table_customers.Country 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers table_customers_aux
        WHERE
            table_customers.Country = table_customers_aux.Country
                AND table_customers.ContactName <> table_customers_aux.ContactName) `Número de compatriotas`
FROM
    w3schools.customers table_customers
HAVING `Número de compatriotas` <> 0
ORDER BY table_customers.ContactName;
