SELECT t1.ContactName AS `Nome`,t1.Country AS `País`, COUNT(*) - 1 AS `Número de compatriotas`
FROM customers as t1
left JOIN customers as t2
ON t1.Country = t2.Country
group by 1, 2
HAVING `Número de compatriotas` > 0
ORDER BY 1;
