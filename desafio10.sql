SELECT
products.ProductName AS `Produto`,
MIN(orderDetails.Quantity) AS 'Mínima',
MAX(orderDetails.Quantity) AS 'Máxima',
ROUND(AVG(orderDetails.Quantity), 2) AS `Média`
FROM w3schools.products AS products
JOIN w3schools.order_details AS orderDetails
ON products.ProductID = orderDetails.ProductID
GROUP BY products.ProductID
HAVING AVG(orderDetails.Quantity) > 20
ORDER BY `Média`, `Produto`;
