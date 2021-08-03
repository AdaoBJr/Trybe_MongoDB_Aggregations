(SELECT Country FROM customers)
UNION
(select Country from suppliers)
ORDER BY 1
LIMIT 5;
