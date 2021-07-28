select distinct Country País from customers
union
select distinct Country  from suppliers
order by País limit 5;
