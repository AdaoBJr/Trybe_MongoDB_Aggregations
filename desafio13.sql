SELECT 
product.ProductName AS Produto,
product.Price AS Preço
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS oDetails
ON product.ProductID = oDetails.ProductID
WHERE oDetails.Quantity > 80
ORDER BY product.ProductName;
