SELECT p.ProductName as "Produto" , p.Price as "Preço"
FROM w3schools.products as p
inner join w3schools.order_details as o
on p.ProductID = o.ProductID 
where o.Quantity > 80
order by `Produto`
