SELECT ContactName AS 'Nome', 
Country AS 'País',
(SELECT COUNT(*) -1 FROM w3schools.customers AS c WHERE c.Country = `País`) AS 'Número de compatriotas' FROM w3schools.customers
HAVING `Número de compatriotas` <> 0 ORDER BY ContactName;
