SELECT
  ProductName AS 'Produto',
  MIN(QUANTITY) AS 'Mínima',
  MAX(QUANTITY) AS 'Máxima',
  ROUND(AVG(QUANTITY), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
  ON o.ProductID = p.ProductID
GROUP BY ProductName
HAVING AVG(Quantity) > 20
ORDER BY AVG(QUANTITY), ProductName;
