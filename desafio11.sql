select customersA.ContactName as 'Nome', customersA.Country as 'País',
count(customersB.Country) as 'Número de compatriotas'
from w3schools.customers as customersA,
w3schools.customers as customersB
where 
customersA.Country = customersB.Country 
And 
customersA.ContactName <> customersB.ContactName
group by `Nome`, `País`
order by `Nome` ASC;
