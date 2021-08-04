(SELECT Country AS `País` FROM customers)
UNION
(select Country AS `País` from suppliers)
ORDER BY 1
LIMIT 5;