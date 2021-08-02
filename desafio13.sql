SELECT p.productname as 'Produto', p.price as 'Preço' FROM w3schools.products p join w3schools.order_details od on p.ProductID = od.ProductID where Quantity > 80 order by Produto;
