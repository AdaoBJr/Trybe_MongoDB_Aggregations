SELECT ProductName AS "Produto",
MIN(Quantity) AS "Mínima",
MAX(Quantity) AS "Máxima",
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
GROUP BY ProductName
HAVING ROUND(AVG(Quantity), 2) > 20
ORDER BY `Média`, ProductName;
