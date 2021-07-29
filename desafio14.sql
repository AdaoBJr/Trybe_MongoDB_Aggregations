-- https://pt.stackoverflow.com/questions/79846/uma-query-mysql-com-crases-vs-sem
select distinct Country as 'País' from w3schools.customers 
union
select distinct Country from w3schools.suppliers as suppliers
order by `País`
limit 5
