SELECT 
P.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Mínima',
ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM w3schools.products P
INNER JOIN w3schools.order_details OD ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto` ; 
