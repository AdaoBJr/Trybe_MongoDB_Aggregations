SELECT p.ProductName "Produto",
MIN(o.Quantity) "Mínima",
MAX(o.Quantity) "Máxima",
ROUND(AVG(o.Quantity), 2) "Média"
FROM w3schools.order_details o
INNER JOIN w3schools.products p ON o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING AVG(o.Quantity) > 20.00
ORDER BY AVG(o.Quantity), p.ProductName;
