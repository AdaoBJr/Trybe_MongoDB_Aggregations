SELECT
p.ProductName 'Produto',
    MIN(o.Quantity) 'Mínima',
    MAX(o.Quantity) 'Máxima',
    ROUND(AVG(o.Quantity),2) 'Média'
FROM w3schools.products p 
JOIN w3schools.order_details o ON p.ProductID = o.ProductID
GROUP BY `Produto`
HAVING 
AVG(o.Quantity) > 20.00
ORDER BY `Média`;
