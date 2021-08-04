select ProductName as 'Produto', min(o.Quantity) as 'Mínima', max(o.Quantity) as 'Máxima', round(avg(o.Quantity), 2) 'Média' from products as p inner join order_details as o where o.ProductID = p.ProductID group by `Produto` having `Média` > 20 order by `Média`, `Produto`;