SELECT 
    product.ProductName AS Produto,
    product.Price AS Preço
FROM
    w3schools.products AS product
INNER JOIN 
    w3schools.order_details AS Order_Details
ON
    product.ProductID = Order_Details.ProductID
WHERE
    Order_Details.Quantity > 80
ORDER BY
    product.ProductName;
