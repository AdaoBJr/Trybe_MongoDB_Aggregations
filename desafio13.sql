SELECT 
    product.ProductName AS Produto, product.Price AS Preço
FROM
    w3schools.products AS product
        INNER JOIN
    w3schools.order_details AS details ON product.ProductID = details.ProductID
WHERE
    details.Quantity > 80
GROUP BY Produto
ORDER BY Produto ASC;
