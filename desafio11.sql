SELECT c1.ContactName AS Nome, c1.Country AS País,
  ((SELECT Count(c2.Country) FROM w3schools.customers AS c2 GROUP BY c2.Country Having c1.Country = c2.Country) - 1) AS "Número de compatriotas" 
 FROM w3schools.customers AS c1 ORDER BY Nome;
