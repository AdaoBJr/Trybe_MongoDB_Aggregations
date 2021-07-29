SELECT 
c1.ContactName AS 'Nome',
c1.Country AS 'País',
(
SELECT 
COUNT(c2.Country)
FROM w3schools.customers c2
WHERE c2.Country = c1.Country AND c1.ContactName <> c2.ContactName
) AS 'Número de compatriotas'
FROM w3schools.customers as c1
ORDER BY c1.ContactName;
