SELECT P.ProductName Produto,
MIN(OD.Quantity) Mínima,
MAX(OD.Quantity) Máxima,
ROUND(AVG(OD.Quantity)) Média
FROM w3schools.products P
INNER JOIN w3schools.order_details OD
ON OD.ProductID = P.ProductID
GROUP BY OD.ProductID
ORDER BY Média, Produto;
