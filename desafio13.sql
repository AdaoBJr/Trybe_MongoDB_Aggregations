SELECT 
    table_products.ProductName 'Produto',
    table_products.Price 'Preço'
FROM
    w3schools.products table_products
        INNER JOIN
    w3schools.order_details table_order ON table_products.ProductID = table_order.ProductID
WHERE
    table_order.Quantity > 80
ORDER BY table_products.ProductName;
