(SELECT Country AS `País` FROM w3schools.customers)
-- https://www.devmedia.com.br/sql-utilizando-o-operador-union-e-union-all/37457
UNION
(SELECT Country FROM w3schools.suppliers)
ORDER BY `País`
LIMIT 5;
