SELECT p.ProductName as "Produto",
min(o.Quantity) as "Mínima",
max(o.Quantity) as "Máxima", 
round(avg(o.Quantity), 2) as "Média"
FROM w3schools.order_details as o
inner join w3schools.products as p on p.ProductID = o.ProductID
group by o.ProductID
having `Média` > 20
order by `Média`, `Produto`
