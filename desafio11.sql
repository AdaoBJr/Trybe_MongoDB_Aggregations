SELECT
	ContactName 'Nome',
    Country 'País',
    (SELECT COUNT(*) - 1 FROM w3schools.customers c
		WHERE c.Country = `País`
    ) 'Número de compatriotas'
FROM w3schools.customers
	HAVING `Número de compatriotas` <> 0
ORDER BY ContactName;
