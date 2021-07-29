SELECT
    cust1.ContactName AS 'Nome',
    cust1.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS cust2
        WHERE
            cust1.Country = cust2.Country
                AND cust1.ContactName <> cust2.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS cust1
HAVING Número de compatriotas <> 0
ORDER BY cust1.ContactName;
