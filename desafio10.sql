select
p.ProductName as 'Produto',
min(od.Quantity) as 'Mínima',
max(od.Quantity) as 'Máxima',
round(avg(od.Quantity), 2) as 'Média'
from order_details od
inner join products p on od.ProductID = p.ProductID
group by p.ProductName
having avg(od.Quantity) > 20
order by avg(od.Quantity), p.ProductName;
