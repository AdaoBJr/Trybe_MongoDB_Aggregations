SELECT
  ProductName 'Produto',
  MIN(o.Quantity) 'Mínima',
  MAX(o.Quantity) 'Máxima',
  ROUND(AVG(o.Quantity), 2) 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details o
  ON p.ProductID = o.ProductID
GROUP BY o.ProductID
HAVING AVG(o.Quantity) > 20
ORDER BY AVG(o.Quantity), ProductName;
