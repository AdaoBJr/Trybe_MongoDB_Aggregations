select customers_table.ContactName, customers_table.Country,
(
select (count(Country) - 1) as comparison
from w3schools.customers
where Country = customers_table.Country
) as 'Número de compatriotas'
from w3schools.customers as customers_table
group by ContactName, Country
having `Número de compatriotas` >= 1
order by ContactName;
