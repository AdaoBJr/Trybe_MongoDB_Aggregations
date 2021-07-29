(SELECT Country AS País FROM customers)
UNION
(SELECT Country AS País FROM w3schools.suppliers)
ORDER BY País
LIMIT 5;
