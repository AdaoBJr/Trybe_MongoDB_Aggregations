select products.ProductName as 'Produto', products.Price as 'Preço'  from w3schools.products as products
inner join w3schools.order_details as orders
on orders.ProductID = products.ProductID
where orders.Quantity > 80
order by products.ProductName