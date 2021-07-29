SELECT ProductName AS `Produto`,
MIN(Quantity) AS `Mínima`,
MAX(Quantity) AS `Máxima`,
ROUND(AVG(Quantity),2) AS `Média`
FROM w3schools.products P
INNER JOIN w3schools.order_details O
ON O.ProductID = P.ProductID
GROUP BY P.ProductID
HAVING ROUND(AVG(Quantity),2) > 20
ORDER BY `Média`, `Produto`;
