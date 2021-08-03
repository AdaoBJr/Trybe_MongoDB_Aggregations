SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS p INNER JOIN order_details AS od
ON p.ProductID = od.ProductID
GROUP BY p.ProductID
ORDER BY 4, 1;
