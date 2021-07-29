-- Iniciando o projeto
# produtos pedidos, média de quantidade nos pedidos acima de 20.00

SELECT product.ProductName AS 'Produto',
MIN(order_d.Quantity) AS 'Mínima', MAX(order_d.Quantity) AS 'Máxima',
ROUND(AVG(order_d.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS order_d
INNER JOIN w3schools.products AS product ON order_d.ProductID = product.ProductID
GROUP BY order_d.ProductID
HAVING AVG(order_d.Quantity) > 20
ORDER BY `Média` ASC, `Produto` ASC;
