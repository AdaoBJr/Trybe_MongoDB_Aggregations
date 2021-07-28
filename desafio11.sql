select
ContactName as 'Nome',
Country as 'País',
(select count(*) - 1 from customers where Country = c.Country) as 'Número de compatriotas'
from customers c
order by ContactName;
