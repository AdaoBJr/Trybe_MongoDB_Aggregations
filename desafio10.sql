SELECT 
    pro.ProductName AS 'Produto',
    MIN(orDe.Quantity) AS 'Mínima',
    MAX(orDe.Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
	w3schools.order_details AS orDe
		INNER JOIN
	products AS pro ON orDe.ProductID = pro.ProductID
GROUP BY orDe.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
