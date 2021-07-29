-- vinicius-vasconcelos
-- Fernando-Maia / https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/tree/Fernando-Maia-mySql-vocabulary-booster
select 
customersA.ContactName as 'Nome', 
customersA.Country as 'País',
count(customersB.Country) as 'Número de compatriotas'
from w3schools.customers as customersA,
w3schools.customers as customersB
where 
customersA.Country = customersB.Country 
And 
customersA.ContactName <> customersB.ContactName
group by `Nome`
order by `Nome` ASC;
