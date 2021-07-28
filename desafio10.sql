SELECT
p.ProductName AS Produtos,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.order_details od
INNER JOIN w3schools.products p ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, Produtos

