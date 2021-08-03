SELECT product.ProductName AS 'Produto',
product.Price AS 'Preço'
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS orders
ON orders.ProductID = product.ProductID
WHERE orders.Quantity > 80
ORDER BY `Produto` ASC;
