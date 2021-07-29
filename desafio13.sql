select ProductName as 'Produto', Price as 'Preço' from w3schools.products as prod
inner join w3schools.order_details as deta on deta.ProductID = prod.ProductID
where deta.Quantity > 80
order by `Produto`;
