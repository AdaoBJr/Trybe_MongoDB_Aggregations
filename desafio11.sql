select
	c.ContactName as "Nome",
    c.Country as "País",
    ( select count(*) from w3schools.customers as c1 where c1.Country = c.Country and c1.ContactName != c.ContactName) as `Número de compatriotas`
from w3schools.customers as c
having `Número de compatriotas` != 0
order by c.ContactName;
