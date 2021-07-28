SELECT ct.Country AS 'País' 
FROM customers AS ct
UNION
SELECT sp.Country AS 'País' 
FROM suppliers AS sp
ORDER BY `País`
LIMIT 5;
