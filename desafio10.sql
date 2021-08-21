SELECT
p.ProductName "Produto",
MIN(Quantity) "Mínima",
MAX(Quantity) "Máxima",
ROUND(AVG(Quantity), 2) "Média"
FROM order_details d
INNER JOIN products p ON d.ProductID = p.ProductID
GROUP BY d.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
