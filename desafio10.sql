SELECT DISTINCT p.ProductName AS 'Produto', MIN(o.Quantity) AS 'Mínima', MAX(o.Quantity) AS 'Máxima', ROUND(AVG(o.Quantity),2) AS 'Média'
FROM w3schools.order_details o
INNER JOIN w3schools.products p
    ON p.ProductID = o.ProductID
GROUP BY  p.ProductName
HAVING AVG(o.Quantity) > 20
ORDER BY  AVG(o.Quantity), p.ProductName;
 