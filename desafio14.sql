select distinct Country from customers
union
select distinct Country from suppliers
order by Country limit 5;
