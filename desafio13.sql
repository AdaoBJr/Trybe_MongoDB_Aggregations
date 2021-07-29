-- Iniciando o projeto
# produtos que já tiveram um pedido associado requerindo uma quantidade maior que 80

SELECT product.ProductName AS 'Produto',
product.Price AS 'Preço'
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS order_d ON product.ProductID = order_d.ProductID
WHERE order_d.Quantity > 80
ORDER BY product.ProductName;
