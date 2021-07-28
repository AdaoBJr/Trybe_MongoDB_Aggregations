SELECT 
    *
FROM
    (SELECT 
        cust1.ContactName AS `Nome`,
            cust1.Country AS `País`,
            (SELECT 
                    COUNT(cust2.Country) - 1
                FROM
                    w3schools.customers AS cust2
                WHERE
                    cust2.Country = cust1.Country
                GROUP BY cust2.Country
                HAVING (COUNT(cust2.Country) - 1) > 0) AS `Número de compatriotas`
    FROM
        w3schools.customers AS cust1
    ORDER BY Nome) AS algo
WHERE
    `Número de compatriotas` IS NOT NULL;
