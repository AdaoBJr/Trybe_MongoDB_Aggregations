SELECT p.ProductName as 'Produto',
MIN(Quantity) as 'Mínima',
MAX(Quantity) as 'Máxima',
ROUND(AVG(Quantity),2) as 'Média'
FROM w3schools.products as p
INNER JOIN w3schools.order_details as od
ON p.ProductID = od.ProductID
GROUP BY `Produto`
ORDER BY `Média` ASC, `Produto` ASC;
