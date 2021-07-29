SELECT prd.ProductName AS 'Produto',
MIN(dts.Quantity) AS 'Mínima',
MAX(dts.Quantity) AS 'Máxima',
FORMAT(AVG(dts.Quantity), 2) AS 'Média'
FROM products AS prd
INNER JOIN order_details AS dts
ON dts.ProductID = prd.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
