select distinct Country from w3schools.customers
union 
select distinct Country from w3schools.suppliers
order by Country
limit 5
