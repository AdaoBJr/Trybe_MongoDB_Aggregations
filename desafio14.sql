(SELECT Country as "País" FROM suppliers)
UNION
(SELECT Country FROM customers)
ORDER BY País
LIMIT 5;
