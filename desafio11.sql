select
C1.ContactName as `Nome`,
C1.Country as `País`,
count(C1.Country) as `Número de compatriotas`
from w3schools.customers as C1, w3schools.customers as C2
where C1.Country = C2.Country and C1.CustomerID <> C2.CustomerID
-- Usando (self join) lembrar quando for revisar.
group by C1.ContactName, C1.Country
order by `Nome` asc;
