(select distinct(Country) as `País` from w3schools.customers)
union
(select distinct(Country) as `País` from w3schools.suppliers)
-- Usando union, lembrar quando revisar.
order by `País`
limit 5;
