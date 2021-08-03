SELECT 
    w1.ContactName AS 'Nome',
    w1.Country AS 'País',
    count(w2.Country) As 'Número de compatriotas'
FROM w3schools.customers AS w1, w3schools.customers AS w2
WHERE w1.Country = w2.Country AND w1.ContactName <> w2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
