SELECT
  p.ProductName AS Produto,
  MIN(Quantity) AS 'quantidade mínima',
  MAX(Quantity) AS 'quantidade máxima',
  ROUND(AVG(Quantity), 2) AS 'média de quantidade'
FROM w3schools.order_details od
INNER JOIN w3schools.products p
  ON od.ProductID = p.ProductID
GROUP BY Produto
HAVING AVG(Quantity) > 20
ORDER BY `média de quantidade`, Produto;