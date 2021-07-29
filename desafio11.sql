SELECT 
    T1.contactName AS 'Nome',
    T2.country AS 'País',
    COUNT(T2.country = T1.country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS T1,
    w3schools.customers AS T2
WHERE
    T1.contactName <> T2.contactName
        AND T1.country = T2.country
GROUP BY Nome , País
ORDER BY Nome;
