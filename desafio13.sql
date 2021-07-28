select
p.ProductName as 'Produto',
p.Price as 'Preço'
from order_details od
inner join products p on od.ProductID = p.ProductID
where od.Quantity > 80
order by p.ProductName;
