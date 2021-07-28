select 
products.ProductName as 'Produto',
min(orders.Quantity) as 'Mínima',
max(orders.Quantity) as 'Máxima',
round(avg(orders.Quantity), 2) as 'Média'
from w3schools.order_details as orders
inner join w3schools.products as products
on orders.ProductID = products.ProductID
group by `Produto`
having avg(orders.Quantity) > 20
order by `Média` ASC, `Produto` ASC;
