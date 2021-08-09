
SELECT 
    products.ProductName AS 'Produto',
    MIN(order_details.Quantity) as 'Mínima',
    MAX(order_details.Quantity) as 'Máxima',
    ROUND(AVG(order_details.Quantity), 2) as 'Média'
FROM
	w3schools.order_details as order_details
        INNER JOIN
         w3schools.products AS products
    on order_details.ProductID = products.ProductID
GROUP BY 1
HAVING Média > 20
ORDER BY 4, 1;
