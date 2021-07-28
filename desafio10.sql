-- https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/pull/11/files
-- Consulta no repositório de fabio maturano, estava confundindo algum pensamento e não estava usando o having
-- para filtrar o agrupamento.
select products.ProductName as 'Produto',
min(orders.Quantity) as Minima,
max(orders.Quantity) as Máxima,
round(avg(orders.Quantity), 2) as 'Média'
from w3schools.order_details as orders
inner join w3schools.products as products
on orders.ProductID = products.ProductID
group by `Produto`
having avg(orders.Quantity) > 20
order by avg(orders.Quantity), products.ProductName;
