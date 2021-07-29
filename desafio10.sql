SELECT 
    table_product.ProductName 'Produto',
    MIN(table_order.Quantity) 'Mínima',
    MAX(table_order.Quantity) 'Máxima',
    ROUND(AVG(table_order.Quantity), 2) 'Média'
FROM
    w3schools.products table_product
        INNER JOIN
    w3schools.order_details table_order ON table_product.ProductID = table_order.ProductID
GROUP BY table_order.ProductID
HAVING AVG(table_order.Quantity) > 20.00
ORDER BY AVG(table_order.Quantity) , table_product.ProductName;
