SELECT p.ProductName as 'Produto', MIN(od.Quantity) as 'Mínima', MAX(od.Quantity) as 'Máxima', ROUND(AVG(od.Quantity), 2) as 'Média'
FROM w3schools.products as p
INNER JOIN w3schools.order_details as od
ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`, p.ProductName;
