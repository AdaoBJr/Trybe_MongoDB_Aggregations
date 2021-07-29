SELECT
  pn.ProductName AS "Produto",
  pn.Price AS "Preço"
FROM w3schools.products AS pn
INNER JOIN w3schools.order_details AS od
  ON pn.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY pn.ProductName;
