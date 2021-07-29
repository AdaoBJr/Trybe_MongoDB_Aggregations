SELECT
  p.ProductName as "Produto",
  MIN(od.Quantity) as "Mínima",
  MAX(od.Quantity) as "Máxima",
  ROUND(AVG(od.Quantity),2) as "Média"
FROM products as p
INNER JOIN order_details as od
  ON od.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING AVG(od.Quantity) > 20.00
ORDER BY AVG(od.Quantity), p.ProductName;