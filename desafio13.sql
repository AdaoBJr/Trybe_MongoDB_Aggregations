SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM order_details AS o
INNER JOIN products AS p
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY `Produto`;
