SELECT
p.ProductName AS Produto,
o.Quantity AS Quantidade
  FROM products AS p
INNER JOIN order_details AS o
ON  o.ProductID = p.ProductID
WHERE o.Quantity > 20;