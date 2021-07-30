(SELECT Country AS 'País' FROM w3schools.customers ORDER BY COUNTRY)
UNION
(SELECT Country AS 'País' FROM w3schools.suppliers ORDER BY COUNTRY)
ORDER BY Country;
