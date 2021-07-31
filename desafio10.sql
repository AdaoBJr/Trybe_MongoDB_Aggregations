SELECT
p.ProductName as "Produto",
MIN(od.Quantity) as "Mínima",
MAX(od.Quantity) as "Máxima",
ROUND(AVG(od.Quantity),2) as "Média"
FROM w3schools.products AS p
INNER JOIN
w3schools.order_details AS od
ON
p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`,`Produto`
;
