select
ContactName as 'Nome',
Country as 'País',
(select count(*) - 1 from customers where Country = c.Country) as 'Número de compatriotas'
from customers c
where (select count(*) - 1 from customers where Country = c.Country) > 0
order by ContactName;
