SELECT C.Country As País
FROM w3schools.customers AS C
UNION
SELECT S.Country As País
FROM w3schools.suppliers AS S
ORDER BY 1 LIMIT 5;
