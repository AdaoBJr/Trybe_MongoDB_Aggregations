SELECT PRO.ProductName AS 'Produto', MIN(O.Quantity) AS 'Mínima', MAX(O.Quantity) AS 'Máxima',
ROUND(AVG(O.Quantity), 2) AS 'Média'
FROM w3schools.products AS PRO
INNER JOIN w3schools.order_details AS O
ON PRO.ProductID = O.ProductID
GROUP BY PRO.ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
