select Country AS 'País' from w3schools.customers
union
select Country from w3schools.suppliers
ORDER BY `País` limit 5
