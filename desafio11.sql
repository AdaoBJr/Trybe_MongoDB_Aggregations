SELECT CUS.ContactName AS "Nome",
CUS.Country AS "País",
(SELECT COUNT(*) FROM w3schools.customers AS CUS2
WHERE CUS2.Country = CUS.Country AND CUS2.ContactName != CUS.ContactName) AS "Número de compatriotas"
FROM w3schools.customers AS CUS
HAVING `Número de compatriotas` != 0
ORDER BY CUS.ContactName;
