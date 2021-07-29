SELECT
p.ProductName AS Produto,
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
ROUND(AVG(o.Quantity), 2) AS 'Média'
  FROM products AS p
INNER JOIN order_details AS o
ON  o.ProductID = p.ProductID

GROUP BY p.ProductID
HAVING AVG(o.Quantity) > 20
ORDER BY `Média`, `Produto`;
