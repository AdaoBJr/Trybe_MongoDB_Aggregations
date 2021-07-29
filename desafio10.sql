SELECT
  p.ProductName as "Produto",
  MIN(od.Quantity) as "Mínima",
  MAX(od.Quantity) as "Máxima",
  AVG(od.Quantity) as "Média"
FROM order_details as od
INNER JOIN products as p
  ON p.ProductID = od.ProductID
WHERE AVG(od.Quantity) > 20.00
GROUP BY p.ProductName
ORDER BY AVG(od.Quantity), p.ProductName;