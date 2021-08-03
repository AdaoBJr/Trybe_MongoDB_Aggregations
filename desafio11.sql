SELECT 
    w1.ContactName AS 'Nome',
    Country AS 'País',
    count(w2.Country) As 'Número de compatriotas'
FROM w3schools.customers AS w1, w3schools.customers AS w2
GROUP BY `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
-- Error Code: 1052. Column 'ContactName' in field list is ambiguous


-- SELECT 
--     ContactName AS 'Nome',
--     Country AS 'País',
--     count(Country) As 'Número de compatriotas'
-- FROM w3schools.customers
-- GROUP BY `Nome`
-- HAVING `Número de compatriotas` > 0
-- ORDER BY `Nome`;
-- Error Code: 1055. Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'w3schools.customers.Country' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
