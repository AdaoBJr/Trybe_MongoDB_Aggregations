(SELECT 
	C.Country as `País`
    FROM w3schools.customers as C
)
UNION
(SELECT
	S.Country as `País`
    FROM w3schools.suppliers as S
)
ORDER BY `País`
LIMIT 5;
