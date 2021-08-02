SELECT
  p.ProductName 'Produto',
  p.Price 'Preço'
FROM w3schools.order_details o
INNER JOIN w3schools.products p
  ON o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING MAX(o.Quantity) > 80
ORDER BY p.ProductName;
