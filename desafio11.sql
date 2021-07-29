SELECT C1.ContactName AS 'Nome',
C1.Country AS 'País',
COUNT(C1.contactName) AS 'Número de compatriotas'
from w3schools.customers AS C1
INNER JOIN
w3schools.customers AS C2 ON C1.Country = C2.Country
WHERE C1.ContactName <> C2.ContactName
GROUP BY `País`, `Nome`
ORDER BY C1.ContactName;
