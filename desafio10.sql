SELECT P.ProductName 'Produto',
MIN(OD.Quantity) 'Mínima',
MAX(OD.Quantity) 'Máxima',
ROUND(AVG(OD.Quantity), 2) 'Média'
FROM w3schools.products P
INNER JOIN w3schools.order_details OD
ON OD.ProductID = P.ProductID
GROUP BY OD.ProductID
HAVING ROUND(AVG(OD.Quantity), 2) > 20.00
ORDER BY Média, Produto;
