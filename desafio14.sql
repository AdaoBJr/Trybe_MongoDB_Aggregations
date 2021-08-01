SELECT c.Country as "País"
FROM w3schools.customers as c
union 
SELECT c2.Country FROM w3schools.suppliers as c2
order by `País`
limit 5
