SELECT prod.ProductName AS 'Produto',
    MIN(order_d.Quantity) AS 'Mínima',
    MAX(order_d.Quantity) AS 'Máxima'
FROM products AS prod
INNER JOIN order_details AS order_d ON prod.ProductID = order_d.ProductID
GROUP BY order_d.ProductID
HAVING AVG(order_d.Quantity) > 20
ORDER BY AVG(order_d.Quantity), prod.ProductName;
