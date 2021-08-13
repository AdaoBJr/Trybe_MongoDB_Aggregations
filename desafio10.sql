SELECT PRO.ProductName AS "Produto",
MIN(ORD_D.Quantity) AS "Mínima",
MAX(ORD_D.Quantity) AS "Máxima",
ROUND(AVG(ORD_D.Quantity), 2) AS "Média"
FROM w3schools.products AS PRO
INNER JOIN w3schools.order_details AS ORD_D
ON ORD_D.ProductID = PRO.ProductID
GROUP BY PRO.ProductName
HAVING AVG(ORD_D.Quantity) > 20.00
ORDER BY AVG(ORD_D.Quantity) ASC, PRO.ProductName ASC;
