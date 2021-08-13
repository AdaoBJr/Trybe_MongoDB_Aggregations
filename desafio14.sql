SELECT CUS.Country  AS "País"
FROM w3schools.customers AS CUS
INNER JOIN w3schools.suppliers AS SUP
ON SUP.Country = CUS.Country
GROUP BY CUS.Country LIMIT 5; 